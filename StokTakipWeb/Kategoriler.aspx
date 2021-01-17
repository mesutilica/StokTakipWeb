<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="StokTakipWeb.Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 class="ortala">
        <asp:Literal ID="LtKategoriBaslik" runat="server" Text="Ürünlerimiz"></asp:Literal>
    </h1>

    <table class="urunler">
        <tr>
            <asp:Repeater ID="rptAnasayfaUrunleri" runat="server">
                <ItemTemplate>
                    <td>
                        <a href="/UrunDetay.aspx?uid=<%#Eval("Id") %>">
                            <img src="/uploads/<%#Eval("Resim") %>" alt="Resim Yok" height="200" />
                            <div><%#Eval("UrunAdi") %></div>
                        </a>
                    </td>
                </ItemTemplate>
            </asp:Repeater>
        </tr>
    </table>

</asp:Content>
