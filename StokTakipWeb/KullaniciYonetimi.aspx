<%@ Page Title="" Language="C#" MasterPageFile="~/SiteSablon.Master" AutoEventWireup="true" CodeBehind="KullaniciYonetimi.aspx.cs" Inherits="StokTakipWeb.KullaniciYonetimi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="KullaniciAdi" HeaderText="KullaniciAdi" SortExpression="KullaniciAdi" />
            <asp:BoundField DataField="KullaniciSifre" HeaderText="KullaniciSifre" SortExpression="KullaniciSifre" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Adi" HeaderText="Adi" SortExpression="Adi" />
            <asp:BoundField DataField="Soyadi" HeaderText="Soyadi" SortExpression="Soyadi" />
            <asp:CheckBoxField DataField="Aktif" HeaderText="Aktif" SortExpression="Aktif" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseContext %>" DeleteCommand="DELETE FROM [Kullanici] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Kullanici] ([KullaniciAdi], [KullaniciSifre], [Email], [Adi], [Soyadi], [Aktif]) VALUES (@KullaniciAdi, @KullaniciSifre, @Email, @Adi, @Soyadi, @Aktif)" SelectCommand="SELECT * FROM [Kullanici]" UpdateCommand="UPDATE [Kullanici] SET [KullaniciAdi] = @KullaniciAdi, [KullaniciSifre] = @KullaniciSifre, [Email] = @Email, [Adi] = @Adi, [Soyadi] = @Soyadi, [Aktif] = @Aktif WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="KullaniciAdi" Type="String" />
            <asp:Parameter Name="KullaniciSifre" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Adi" Type="String" />
            <asp:Parameter Name="Soyadi" Type="String" />
            <asp:Parameter Name="Aktif" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="KullaniciAdi" Type="String" />
            <asp:Parameter Name="KullaniciSifre" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Adi" Type="String" />
            <asp:Parameter Name="Soyadi" Type="String" />
            <asp:Parameter Name="Aktif" Type="Boolean" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <table class="auto-style1">
        <tr>
            <td>Kullanıcı Adı</td>
            <td>
                <asp:TextBox ID="txtKullaniciAdi" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Şifre</td>
            <td>
                <asp:TextBox ID="txtSifre" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Email</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Adı</td>
            <td>
                <asp:TextBox ID="txtAdi" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Soyadı</td>
            <td>
                <asp:TextBox ID="txtSoyadi" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:CheckBox ID="cbAktif" runat="server" Text="Aktif" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnKaydet" runat="server" OnClick="btnKaydet_Click" Text="Ekle" />
            </td>
        </tr>
    </table>
</asp:Content>
