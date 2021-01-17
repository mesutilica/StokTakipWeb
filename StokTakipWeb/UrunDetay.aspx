<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeBehind="UrunDetay.aspx.cs" Inherits="StokTakipWeb.UrunDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 style="text-align: center">
        <asp:Literal ID="LtUrunAdi" runat="server"></asp:Literal>
    </h1>
    <table class="mauto">
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" CssClass="boyutlar" />
            </td>
            <td>
                <asp:Literal ID="LtUrunAciklama" runat="server"></asp:Literal>
            </td>
        </tr>
    </table>

</asp:Content>
