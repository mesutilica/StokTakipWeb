<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="StokTakipWeb.Default1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="rptAnasayfaUrunleri" runat="server">
        <ItemTemplate>Ürün</ItemTemplate>
    </asp:Repeater>
</asp:Content>
