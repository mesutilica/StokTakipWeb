<%@ Page Title="" Language="C#" MasterPageFile="~/SiteSablon.Master" AutoEventWireup="true" CodeBehind="SiparisYonetimi.aspx.cs" Inherits="StokTakipWeb.SiparisYonetimi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="1" Width="100%">
        <ajaxToolkit:TabPanel ID="TabPanel1" runat="server" HeaderText="Sparişler">
            <ContentTemplate>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="MusteriAdi" HeaderText="MusteriAdi" SortExpression="MusteriAdi" />
                        <asp:BoundField DataField="MusteriSoyadi" HeaderText="MusteriSoyadi" SortExpression="MusteriSoyadi" />
                        <asp:BoundField DataField="Ulke" HeaderText="Ulke" SortExpression="Ulke" />
                        <asp:BoundField DataField="Adres" HeaderText="Adres" SortExpression="Adres" />
                        <asp:BoundField DataField="SiparisNo" HeaderText="SiparisNo" SortExpression="SiparisNo" />
                        <asp:BoundField DataField="UrunId" HeaderText="UrunId" SortExpression="UrunId" />
                        <asp:BoundField DataField="SiparisTarihi" HeaderText="SiparisTarihi" SortExpression="SiparisTarihi" DataFormatString="{0:MM/dd/yyyy}" HtmlEncode="false" />
                        <asp:BoundField DataField="TeslimatTarihi" HeaderText="TeslimatTarihi" SortExpression="TeslimatTarihi" DataFormatString="{0:MM/dd/yyyy}" HtmlEncode="false" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseContext %>" DeleteCommand="DELETE FROM [Siparis] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Siparis] ([MusteriAdi], [MusteriSoyadi], [Ulke], [Adres], [SiparisNo], [UrunId], [SiparisTarihi], [TeslimatTarihi]) VALUES (@MusteriAdi, @MusteriSoyadi, @Ulke, @Adres, @SiparisNo, @UrunId, @SiparisTarihi, @TeslimatTarihi)" SelectCommand="SELECT * FROM [Siparis]" UpdateCommand="UPDATE [Siparis] SET [MusteriAdi] = @MusteriAdi, [MusteriSoyadi] = @MusteriSoyadi, [Ulke] = @Ulke, [Adres] = @Adres, [SiparisNo] = @SiparisNo, [UrunId] = @UrunId, [SiparisTarihi] = @SiparisTarihi, [TeslimatTarihi] = @TeslimatTarihi WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="MusteriAdi" Type="String" />
                        <asp:Parameter Name="MusteriSoyadi" Type="String" />
                        <asp:Parameter Name="Ulke" Type="String" />
                        <asp:Parameter Name="Adres" Type="String" />
                        <asp:Parameter Name="SiparisNo" Type="String" />
                        <asp:Parameter Name="UrunId" Type="Int32" />
                        <asp:Parameter Name="SiparisTarihi" Type="DateTime" />
                        <asp:Parameter Name="TeslimatTarihi" Type="DateTime" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="MusteriAdi" Type="String" />
                        <asp:Parameter Name="MusteriSoyadi" Type="String" />
                        <asp:Parameter Name="Ulke" Type="String" />
                        <asp:Parameter Name="Adres" Type="String" />
                        <asp:Parameter Name="SiparisNo" Type="String" />
                        <asp:Parameter Name="UrunId" Type="Int32" />
                        <asp:Parameter Name="SiparisTarihi" Type="DateTime" />
                        <asp:Parameter Name="TeslimatTarihi" Type="DateTime" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
        <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="Sipariş Ekle / Düzenle">
            <ContentTemplate>
                <table class="auto-style1">
        <tr>
            <td>Müşteri Adı</td>
            <td>
                <asp:TextBox ID="txtMusteriAdi" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Boş Geçilemez!" ControlToValidate="txtMusteriAdi" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Müşteri Soyadı</td>
            <td>
                <asp:TextBox ID="txtMusteriSoyadi" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Boş Geçilemez!" ControlToValidate="txtMusteriSoyadi" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Ülke</td>
            <td>
                <asp:TextBox ID="txtUlke" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Adres</td>
            <td>
                <asp:TextBox ID="txtAdres" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Boş Geçilemez!" ControlToValidate="txtAdres" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Sipariş No</td>
            <td>
                <asp:TextBox ID="txtSiparisNo" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Boş Geçilemez!" ControlToValidate="txtSiparisNo" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Ürün</td>
            <td>
                <asp:DropDownList ID="ddlUrun" runat="server" AppendDataBoundItems="True" DataTextField="UrunAdi" DataValueField="Id">
                    <asp:ListItem Selected="True" Value="-1">Seçiniz</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Boş Geçilemez!" ControlToValidate="ddlUrun" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Sipariş Tarihi</td>
            <td>
                <asp:Calendar ID="clSiparisTarihi" runat="server"></asp:Calendar>
            </td>
        </tr>
        <tr>
            <td>Teslimat Tarihi</td>
            <td>
                <asp:Calendar ID="clTeslimatTarihi" runat="server"></asp:Calendar>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnKaydet" runat="server" Text="Ekle" OnClick="btnKaydet_Click" />
                <asp:Label ID="lblMesaj" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
    </ajaxToolkit:TabContainer>


    


</asp:Content>
