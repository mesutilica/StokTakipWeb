<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="StokTakipWeb.Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 style="text-align:center">
        <asp:Literal ID="LtKategoriBaslik" runat="server" Text="Ürünlerimiz"></asp:Literal>
    </h1>

    <table>
        <tr>
            <asp:Repeater ID="rptAnasayfaUrunleri" runat="server">
                <ItemTemplate>
                    <td>
                        <img src="/uploads/<%#Eval("Resim") %>" alt="Resim Yok" height="200" />
                        <div><%#Eval("UrunAdi") %></div>
                    </td>
                </ItemTemplate>
            </asp:Repeater>
        </tr>
    </table>

</asp:Content>
