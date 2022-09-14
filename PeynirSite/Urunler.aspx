<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Urunler.aspx.cs" Inherits="PeynirSite.Urunler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container py-5">
        
            <h2 style="text-align: center; background-color:#eff1f2; border: 1px solid white; padding: 1rem; border-radius: 5px;">Ürünler</h2>
       
            <div class="row justify-content-center">
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbPeynirConnectionString %>" SelectCommand="SELECT * FROM [tblUrun]"></asp:SqlDataSource>

                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
             


                <div class="col-md-8 col-lg-6 col-xl-4">
                    <div class="card text-black">

                        <img src="images/<%# Eval("Resim") %>" class="card-img-top" alt="Apple Computer" />
                        <div class="card-body">
                            <div class="text-center">
                                <h5 class="card-title"><%# Eval("PeynirAd") %></h5>
                                <p class="text-muted mb-4"><%# Eval("Ulke") %></p>
                            </div>
                            <div>
                                <div class="d-flex justify-content-between">
                                    <span>1 Kilogram</span><span>₺<%# Eval("Fiyat") %></span>
                                </div>
                                <div class="d-flex justify-content-between">
                                    <span>Kargo</span><span> ₺0</span>
                                </div>
                            </div>
                            <br>
                            <a href="<%#Eval("id","Sepet.aspx?id={0}")%>" class="btn btn-light  btn-block text-dark">Satın Al</a>
                        </div>
                    </div>
                </div>


            
            </ItemTemplate>
               </asp:Repeater> 
</div>
       
        </div>

</asp:Content>
