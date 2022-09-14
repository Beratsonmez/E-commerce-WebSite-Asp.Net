<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="PeynirSite.Iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="assets/css/iletisim.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container">
        <form id="contact" method="post">
            <h3>İletişim Formu</h3>
            <h4>Sorularınız ve daha fazlası için iletişime geçebilirsiniz.</h4>
            <fieldset>
                <input placeholder="Ad Soyad" type="text" tabindex="1" required autofocus>
            </fieldset>
            <fieldset>
                <input placeholder="E-posta Adresi" type="email" tabindex="2" required>
            </fieldset>
            <fieldset>
                <input placeholder="Telefon (opsiyonal)" type="tel" tabindex="3" required>
            </fieldset>
            <fieldset>
                <textarea placeholder="Type your message here...." tabindex="5" required></textarea>
            </fieldset>
            <fieldset>
                <button name="submit" type="submit" id="contact-submit" data-submit="...Sending">Gönder</button>
            </fieldset>
        </form>
    </div>

</asp:Content>
