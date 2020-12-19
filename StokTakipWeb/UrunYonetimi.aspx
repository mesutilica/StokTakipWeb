<%@ Page Title="" Language="C#" MasterPageFile="~/SiteSablon.Master" AutoEventWireup="true" CodeBehind="UrunYonetimi.aspx.cs" Inherits="StokTakipWeb.UrunYonetimi" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 { width: 100%; }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="1">
        <ajaxToolkit:TabPanel runat="server" HeaderText="Ürün Listesi" ID="TabPanel1">
            <ContentTemplate>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:CheckBox ID="cbSil" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="KategoriId" HeaderText="KategoriId" SortExpression="KategoriId" />
                        <asp:BoundField DataField="MarkaId" HeaderText="MarkaId" SortExpression="MarkaId" />
                        <asp:BoundField DataField="UrunAdi" HeaderText="UrunAdi" SortExpression="UrunAdi" />
                        <asp:BoundField DataField="UrunAciklamasi" HeaderText="UrunAciklamasi" SortExpression="UrunAciklamasi" />
                        <asp:BoundField DataField="EklenmeTarihi" HeaderText="EklenmeTarihi" SortExpression="EklenmeTarihi" />
                        <asp:BoundField DataField="UrunFiyati" HeaderText="UrunFiyati" SortExpression="UrunFiyati" />
                        <asp:BoundField DataField="Kdv" HeaderText="Kdv" SortExpression="Kdv" />
                        <asp:BoundField DataField="StokMiktari" HeaderText="StokMiktari" SortExpression="StokMiktari" />
                        <asp:CheckBoxField DataField="Aktif" HeaderText="Aktif" SortExpression="Aktif" />
                        <asp:ImageField DataImageUrlField="Resim" DataImageUrlFormatString="~\Uploads\{0}" ControlStyle-Height="50" HeaderText="Resim" />
                        <asp:BoundField DataField="Resim" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseContext %>" DeleteCommand="DELETE FROM [Urun] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Urun] ([KategoriId], [MarkaId], [UrunAdi], [UrunAciklamasi], [EklenmeTarihi], [UrunFiyati], [Kdv], [StokMiktari], [Aktif]) VALUES (@KategoriId, @MarkaId, @UrunAdi, @UrunAciklamasi, @EklenmeTarihi, @UrunFiyati, @Kdv, @StokMiktari, @Aktif)" SelectCommand="SELECT * FROM [Urun]" UpdateCommand="UPDATE [Urun] SET [KategoriId] = @KategoriId, [MarkaId] = @MarkaId, [UrunAdi] = @UrunAdi, [UrunAciklamasi] = @UrunAciklamasi, [EklenmeTarihi] = @EklenmeTarihi, [UrunFiyati] = @UrunFiyati, [Kdv] = @Kdv, [StokMiktari] = @StokMiktari, [Aktif] = @Aktif WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="KategoriId" Type="Int32" />
                        <asp:Parameter Name="MarkaId" Type="Int32" />
                        <asp:Parameter Name="UrunAdi" Type="String" />
                        <asp:Parameter Name="UrunAciklamasi" Type="String" />
                        <asp:Parameter Name="EklenmeTarihi" Type="DateTime" />
                        <asp:Parameter Name="UrunFiyati" Type="Decimal" />
                        <asp:Parameter Name="Kdv" Type="Int32" />
                        <asp:Parameter Name="StokMiktari" Type="Int32" />
                        <asp:Parameter Name="Aktif" Type="Boolean" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="KategoriId" Type="Int32" />
                        <asp:Parameter Name="MarkaId" Type="Int32" />
                        <asp:Parameter Name="UrunAdi" Type="String" />
                        <asp:Parameter Name="UrunAciklamasi" Type="String" />
                        <asp:Parameter Name="EklenmeTarihi" Type="DateTime" />
                        <asp:Parameter Name="UrunFiyati" Type="Decimal" />
                        <asp:Parameter Name="Kdv" Type="Int32" />
                        <asp:Parameter Name="StokMiktari" Type="Int32" />
                        <asp:Parameter Name="Aktif" Type="Boolean" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
        <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="Ürün Ekle/Düzenle">
            <ContentTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>Ürün Kategorisi</td>
                        <td>
                            <asp:DropDownList ID="ddlUrunKategorisi" runat="server" DataTextField="KategoriAdi" DataValueField="Id">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>Ürün Markası</td>
                        <td>
                            <asp:DropDownList ID="ddlUrunMarkasi" runat="server" DataTextField="MarkaAdi" DataValueField="Id">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>Ürün Adı</td>
                        <td>
                            <asp:TextBox ID="txtUrunAdi" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Ürün Açıklaması</td>
                        <td>
                            <asp:TextBox ID="txtUrunAciklamasi" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Ürün Fiyatı</td>
                        <td>
                            <asp:TextBox ID="txtUrunFiyati" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Kdv</td>
                        <td>
                            <asp:TextBox ID="txtKdv" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Stok Miktarı</td>
                        <td>
                            <asp:TextBox ID="txtStokMiktari" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Ürün Resmi</td>
                        <td>
                            <asp:FileUpload ID="fuResim" runat="server" />
                            <asp:Image ID="ImgResim" runat="server" Height="75" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:CheckBox ID="cbAktif" runat="server" Checked="True" Text="Aktif" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblMesaj" runat="server"></asp:Label>
                        </td>
                        <td>
                            <asp:Button ID="btnKaydet" runat="server" OnClick="btnKaydet_Click" Text="Ekle" />
                            <asp:Label ID="lblId" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
    </ajaxToolkit:TabContainer>

    <br />

</asp:Content>

