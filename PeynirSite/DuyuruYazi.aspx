<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="DuyuruYazi.aspx.cs" Inherits="PeynirSite.DuyuruYazi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbPeynirConnectionString %>" SelectCommand="SELECT * FROM [tblDuyuru] WHERE ([id] = @id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <div class="card">
            <div class="card-body">
                <h3 style="text-align:center;"><%# Eval("Baslik") %></h3>
                <br>
                <p>'<%# Eval("Yazi") %></p>
                
            </div>
        </div>

            </ItemTemplate>
        </asp:DataList>
     
        </div>
</asp:Content>
