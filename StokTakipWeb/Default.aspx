<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="StokTakipWeb.Default1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--Repeater kontrolü veritabanından çektiğimiz verileri ekranda göstermede kullanılır.
    Kendi içerisinde döngü kurarak verileri sırayla ekrana yerleştirir.
    Repeater içindeki HeaderTemplate alanı veritabanından gelen verilerin gösterildiği ItemTemplate alanının önüne kod ekleyebilmemizi sağlar.
    ItemTemplate alanı veritabanından gelen kayıtların gösterildiği alandır.
    FooterTemplate alanı da ItemTemplate ile gösterilen verilerden sonraki kısma html kodu yazabilmemizi sağlar.
    Yani HeaderTemplate ve FooterTemplate ile veritabanından gelen dataları göstereceğimiz tablonun açılış kapanış kodlarını yazabiliriz.--%>

    <h1 class="ortala">Ürünlerimiz</h1>

    <asp:Repeater ID="rptAnasayfaUrunleri" runat="server">
        <HeaderTemplate>
            <table class="urunler">
                <tr>
        </HeaderTemplate>
        <ItemTemplate>
            <td>
                <a href="/UrunDetay.aspx?uid=<%#Eval("Id") %>">
                    <img src="/uploads/<%#Eval("Resim") %>" alt="Resim Yok" height="200" />
                    <div><%#Eval("UrunAdi") %></div>
                </a>
            </td>
        </ItemTemplate>
        <FooterTemplate>
            </tr>
            </table>
        </FooterTemplate>
    </asp:Repeater>

    <div class="ortala">
        <p>Sizin için en son teknoloji ürünlerini sunmaya çalışıyoruz.</p>
        <p>İmza : Ünal elektronik...</p>
    </div>

</asp:Content>
