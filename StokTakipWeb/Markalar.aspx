<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeBehind="Markalar.aspx.cs" Inherits="StokTakipWeb.Markalar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 class="ortala">
        <asp:Literal ID="LtBaslik" runat="server" Text="Markalarımız"></asp:Literal>
    </h1>

    <ul>
        <asp:Repeater ID="RptMarkalar" runat="server">
            <ItemTemplate>
                <li>
                    <a href="/Markalar.aspx?mid=<%#Eval("Id") %>">
                        <img src="/uploads/<%#Eval("Resim") %>" alt="Resim Yok" height="200" />
                        <div><%#Eval("UrunAdi") %></div>
                    </a>
                </li>
            </ItemTemplate>
        </asp:Repeater>
    </ul>

    <ul>
        <asp:Repeater ID="rptAnasayfaUrunleri" runat="server">
            <ItemTemplate>
                <li>
                    <a href="/UrunDetay.aspx?uid=<%#Eval("Id") %>">
                        <img src="/uploads/<%#Eval("Resim") %>" alt="Resim Yok" height="200" />
                        <div><%#Eval("UrunAdi") %></div>
                    </a>
                </li>
            </ItemTemplate>
        </asp:Repeater>
    </ul>

</asp:Content>
