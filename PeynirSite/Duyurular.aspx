<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Duyurular.aspx.cs" Inherits="PeynirSite.Duyurular" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbPeynirConnectionString %>" SelectCommand="SELECT * FROM [tblDuyuru]"></asp:SqlDataSource>
    <div class="container py-3">
        
            <h2 style="text-align: center; background-color:#eff1f2; border: 1px solid white; padding: 1rem; border-radius: 5px;">Duyurular</h2>
       
            <div class="row justify-content-center">
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <div class="col-md-8 col-lg-6 col-xl-4">
        <div class="card text-black">

            <img src="images/<%# Eval("Resim") %>" class="card-img-top" alt="Apple Computer" />
            <div class="card-body">
                <div class="text-center">
                    <h5 class="card-title"><%# Eval("Baslik") %></h5>
                    <p class="card-text"><%# Eval("Ozet") %></p>
                </div>
                <br>
                <a href="<%#Eval("id","duyuruyazi.aspx?id={0}")%>" class="btn btn-light  btn-block text-dark">Oku</a>
            </div>
        </div>
    </div>
        </ItemTemplate>

    </asp:Repeater>

                </div>
        </div>
    

</asp:Content>
