<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="UrunEkle.aspx.cs" Inherits="PeynirSite.Yonetim.UrunEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h1>Ürün Ekle, <span>Aşağıdaki bölümleri kullanarak Ürün oluşturup yayınlayınız.</span></h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-title">
                <h4>Ürün Ekle</h4>

            </div>
            <div class="card-body">
                <div class="basic-elements">
                    <form runat="server">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Peynir Adı</label>
                                    <asp:TextBox ID="txtPeynirAd" CssClass="form-control" runat="server" placeholder="Peynir adı giriniz.."></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Menşei</label>
                                    <asp:TextBox ID="txtUlke" CssClass="form-control" runat="server" placeholder="Ülke adı giriniz.."></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Fiyat</label>
                                    <asp:TextBox ID="txtFiyat" CssClass="form-control" runat="server" placeholder="Fiyat giriniz.."></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Resim</label>
                                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control btn-flat" />
                                    <asp:Button ID="btnResimEkle" CssClass="btn btn-primary" runat="server" Text="Resmi Yükle" OnClick="btnResimEkle_Click" />
                                    <asp:Label ID="lblResim" runat="server" Text=""></asp:Label>

                                </div>

                            </div>


                            <div class="button-list">
                                <asp:Button ID="btnYayımla" CssClass="btn btn-primary" runat="server" Text="Yayımla" OnClick="btnYayımla_Click" />

                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
