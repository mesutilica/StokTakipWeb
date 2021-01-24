<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UstMenu.ascx.cs" Inherits="StokTakipWeb.Bloklar.UstMenu" %>

<ul id="menu">
    <li>
        <a href="/Admin/KategoriYonetimi.aspx">Kategori Yönetimi</a>
    </li>
    <li>
        <a href="/Admin/MarkaYonetimi.aspx">Marka Yönetimi</a>
    </li>
    <li>
        <a href="/Admin/UrunYonetimi.aspx">Ürün Yönetimi</a>
    </li>
    <li>
        <a href="/Admin/SiparisYonetimi.aspx">Sipariş Yönetimi</a>
    </li>
    <li>
        <a href="/Admin/KullaniciYonetimi.aspx">Kullanıcı Yönetimi</a>
    </li>
    <li>
        <asp:LinkButton ID="LbCikis" runat="server" OnClick="LbCikis_Click" ValidationGroup="cikis">Çıkış</asp:LinkButton>
    </li>
</ul>
<%-- ValidationGroup="cikis" kodu ile butonlara hangi boş geçilemez kontrolünü tetikleyeceğini ayarlayabiliriz. 
    Eğer ayarlamazsak varsayılan olarak sayfadaki requiredfiel validator boş geçilemez kontrolü boş bir textbox yakaladığında master page deki asp.net butonlarının da çalışmasını engelliyor. 
    Dolayısıyla çıkış butonun o kutucuklar boş olduğu için işleme devam edemiyor. 
    Bu durumu engellemek için ya tüm sayfalardaki boş geçilemez kontrollerine ve butonlarına bu kodu tanımlamalıyız ya da çıkış butonuna. Biz kolaylık için çıkış butonuna vermeyi tercih ettik, böylece çıkış butonu diğer validation kontrollerinden ayrıldı ve işlevini yerine getirmeye başladı. --%>