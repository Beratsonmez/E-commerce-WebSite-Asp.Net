<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="UrunYonet.aspx.cs" Inherits="PeynirSite.Yonetim.UrunYonet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h1>Ürün Yönet, <span>Aşağıdaki listelerden Ürünlerinizi siteden kaldırabilirsiniz.</span></h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbPeynirConnectionString %>" SelectCommand="SELECT * FROM [tblUrun]">
    </asp:SqlDataSource>
    <form runat="server">
        <div class="container">
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-hover table-responsive" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" HorizontalAlign="Center" OnRowDataBound="GridView1_RowDataBound" DataKeyNames="id">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="PeynirAd" HeaderText="PeynirAd" SortExpression="PeynirAd" />
                    <asp:BoundField DataField="Ulke" HeaderText="Ulke" SortExpression="Ulke" />
                    <asp:BoundField DataField="Fiyat" HeaderText="Fiyat" SortExpression="Fiyat" />
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
