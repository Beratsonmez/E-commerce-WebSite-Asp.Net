<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Sepet.aspx.cs" Inherits="PeynirSite.Sepet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbPeynirConnectionString %>" SelectCommand="SELECT * FROM [tblUrun] WHERE (id = @id)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
    
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
             <main class="page">
        <section class="shopping-cart dark">
            <div class="container">
                <div class="block-heading">
                    <h2>SEPET</h2>
                </div>
                <div class="content">
                    <div class="row">
                        <div class="col-md-12 col-lg-8">
                            <div class="items">
       
                                <div class="product">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <img class="img-fluid mx-auto d-block image" src="images/<%# Eval("Resim") %>">
                                        </div>
                                        <div class="col-md-8">
                                            <div class="info">
                                                <div class="row">
                                                    <div class="col-md-5 product-name">
                                                        <div class="product-name">
                                                            <a href="#"><%# Eval("PeynirAd") %></a>
                                                            <div class="product-info">
                                                                <div><%# Eval("Ulke") %></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    
                                                    <div class="col-md-3 price">
                                                        <span>TL<%# Eval("Fiyat") %></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
            </div>
                        </div>
                        <div class="col-md-12 col-lg-4">
                            <div class="summary">
                                <h3>Tutar</h3>
                                <div class="summary-item"><span class="text">Total</span><span class="price"><%# Eval("Fiyat") %></span></div>
                                <button type="button" class="btn btn-primary btn-lg btn-block">Satın Al</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
        </ItemTemplate>
   </asp:Repeater>
   



                            
</asp:Content>
