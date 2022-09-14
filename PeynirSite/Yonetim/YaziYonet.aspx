<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="YaziYonet.aspx.cs" Inherits="PeynirSite.Yonetim.YaziYonet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h1>Yönetim, <span>Aşağıdaki listelerden duyuru ve yazılarınızı siteden kaldırabilirsiniz.</span></h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbPeynirConnectionString %>" SelectCommand="SELECT * FROM [tblDuyuru]">
    </asp:SqlDataSource>
    <form runat="server">
        <div class="container">
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-hover table-responsive" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" HorizontalAlign="Center" OnRowDataBound="GridView1_RowDataBound" DataKeyNames="id">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="Baslik" HeaderText="Baslik" SortExpression="Baslik" />
                    <asp:BoundField DataField="Ozet" HeaderText="Ozet" SortExpression="Ozet" />
                    <asp:BoundField DataField="Yazi" HeaderText="Yazi" SortExpression="Yazi" />
                    <asp:BoundField DataField="Resim" HeaderText="Resim" SortExpression="Resim" />
                </Columns>
                <AlternatingRowStyle BackColor="White" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="true" Font-Size="Larger" ForeColor="White" />
                <RowStyle BackColor="#f5f5f5" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="true" ForeColor="White" />
            </asp:GridView>
        </div>
    </form>
</asp:Content>
