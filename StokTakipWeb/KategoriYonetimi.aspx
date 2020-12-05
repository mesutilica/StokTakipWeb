<%@ Page Title="" Language="C#" MasterPageFile="~/SiteSablon.Master" AutoEventWireup="true" CodeBehind="KategoriYonetimi.aspx.cs" Inherits="StokTakipWeb.KategoriYonetimi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Kategori Yönetimi</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>
                <h2>Kategoriler</h2>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="KategoriAdi" HeaderText="KategoriAdi" SortExpression="KategoriAdi" />
                        <asp:BoundField DataField="KategoriAciklamasi" HeaderText="KategoriAciklamasi" SortExpression="KategoriAciklamasi" />
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
                
            </td>
            <td>
                <h2>Yeni Kategori Ekle</h2>
                <table>
                    <tr>
                        <td>Kategori Adı</td>
                        <td>
                            <asp:TextBox ID="txtKategoriAdi" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Kategori Açıklaması</td>
                        <td>
                            <asp:TextBox ID="txtKategoriAciklamasi" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="btnEkle" runat="server" Text="Ekle" OnClick="btnEkle_Click" />
                        </td>
                    </tr>

                </table>
            </td>
        </tr>
    </table>
    

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StokTakip %>" DeleteCommand="DELETE FROM [Kategoriler] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Kategoriler] ([KategoriAdi], [KategoriAciklamasi]) VALUES (@KategoriAdi, @KategoriAciklamasi)" SelectCommand="SELECT * FROM [Kategoriler]" UpdateCommand="UPDATE [Kategoriler] SET [KategoriAdi] = @KategoriAdi, [KategoriAciklamasi] = @KategoriAciklamasi WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="KategoriAdi" Type="String" />
                        <asp:Parameter Name="KategoriAciklamasi" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="KategoriAdi" Type="String" />
                        <asp:Parameter Name="KategoriAciklamasi" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
</asp:Content>
