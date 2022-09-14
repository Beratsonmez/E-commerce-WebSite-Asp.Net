<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="DuyuruEkle.aspx.cs" Inherits="PeynirSite.Yonetim.DuyuruEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h1>Duyuru Ekle, <span>Aşağıdaki bölümleri kullanarak duyuru oluşturup yayınlayınız.</span></h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="col-lg-12">
        <div class="card">
            <div class="card-title">
                <h4>Duyuru Ekle</h4>

            </div>
            <div class="card-body">
                <div class="basic-elements">
                    <form runat="server">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Başlık</label>
                                    <asp:TextBox ID="txtBaslik" CssClass="form-control" runat="server" placeholder="Başlık giriniz.. Maks 60 karakter.."></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Duyuru Özeti</label>
                                    <asp:TextBox id="txtOzet" TextMode="multiline" CssClass="form-control" Height="150px" Columns="50" Rows="5" runat="server" placeholder="Özet giriniz.. Maks 250 Karakter" />
                                </div>
                                <div class="form-group">
                                    <label>Yazar Adı</label>
                                    <asp:TextBox ID="txtYazar" CssClass="form-control" runat="server" placeholder="Yazar giriniz.."></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Resim</label>
                                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control btn-flat"/>
                                    <asp:Button ID="btnResimEkle" CssClass="btn btn-primary" runat="server" Text="Resmi Yükle" OnClick="btnResimEkle_Click" />
                                    <asp:Label ID="lblResim" runat="server" Text=""></asp:Label>
                                
                                </div>
                                <label>Tarih :</label>
                                <div class="form-group">
                                    
                                    <asp:Label ID="lblTarih" runat="server" Text=""></asp:Label>
                                </div>
                                <label>Tür :</label>
                                <div class="form-group">
                                    <asp:Label ID="lblTur" runat="server" Text="Duyuru">Duyuru</asp:Label>
                                </div>
                                
                            </div>

                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Ana Duyuru</label>
                                    <asp:TextBox id="txtYazi" TextMode="multiline" CssClass="form-control" Height="425px" Columns="50" Rows="5" runat="server" placeholder="Duyuru giriniz.." />
                                </div>
                               <div class="button-list">
                                    <asp:Button ID="btnYayımla" CssClass="btn btn-primary" runat="server" Text="Yayımla" OnClick="btnYayımla_Click" />
                                  
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
