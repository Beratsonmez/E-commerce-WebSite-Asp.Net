<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PeynirSite.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbPeynirConnectionString %>" SelectCommand="SELECT TOP 3 * FROM [tblDuyuru]"></asp:SqlDataSource>
     <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
              <ItemTemplate>
      <div class="card" style="width: 18rem;">
          <a href="<%#Eval("id","duyuruyazi.aspx?id={0}")%>">
                <img class="card-img-top" src="images/<%# Eval("Resim") %>" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title"><%# Eval("Baslik") %></h5>
                    <p class="card-text"><%# Eval("Ozet") %></p>
                </div>
              </a>
            </div>
                     </ItemTemplate>
          
              </asp:Repeater>
</asp:Content>
