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
    
    

    <asp:Repeater ID="rptAnasayfaUrunleri" runat="server">       

        <HeaderTemplate>
            <table>
                <th>
                    <td>
                        <h1>Ürünlerimiz</h1>
                    </td>
                </th>
                <tr>
        </HeaderTemplate>

        <ItemTemplate>

            <td>
                <img src="/uploads/<%#Eval("Resim") %>" alt="Resim Yok" height="200" />
                <div><%#Eval("UrunAdi") %></div>
            </td>

        </ItemTemplate>

        <FooterTemplate>
            </tr>
            </table>
        </FooterTemplate>

    </asp:Repeater>

    <p>Sizin için en son teknoloji ürünlerini sunmaya çalışıyoruz.</p>
    <p>İmza : Ünal elektronik...</p>

</asp:Content>
