﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SiteSablon.Master" AutoEventWireup="true" CodeBehind="KategoriYonetimi.aspx.cs" Inherits="StokTakipWeb.KategoriYonetimi" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %> 
<%--Sayfada ajax control toolkit kontrollerini kullanabilmek için yukardaki kod satırını eklememiz gerekiyor, bu kod ile artık sayfada ajax kontrollerini kullanabiliriz--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Kategori Yönetimi</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseContext %>" DeleteCommand="DELETE FROM [Kategori] WHERE [Id] = @original_Id" InsertCommand="INSERT INTO [Kategori] ([KategoriAdi], [KategoriAciklamasi], [EklenmeTarihi], [Aktif]) VALUES (@KategoriAdi, @KategoriAciklamasi, @EklenmeTarihi, @Aktif)" SelectCommand="SELECT * FROM [Kategori]" UpdateCommand="UPDATE [Kategori] SET [KategoriAdi] = @KategoriAdi, [KategoriAciklamasi] = @KategoriAciklamasi, [EklenmeTarihi] = @EklenmeTarihi, [Aktif] = @Aktif WHERE [Id] = @original_Id" OldValuesParameterFormatString="original_{0}">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="KategoriAdi" Type="String" />
            <asp:Parameter Name="KategoriAciklamasi" Type="String" />
            <asp:Parameter Name="EklenmeTarihi" Type="DateTime" />
            <asp:Parameter Name="Aktif" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="KategoriAdi" Type="String" />
            <asp:Parameter Name="KategoriAciklamasi" Type="String" />
            <asp:Parameter Name="EklenmeTarihi" Type="DateTime" />
            <asp:Parameter Name="Aktif" Type="Boolean" />
            <asp:Parameter Name="original_Id" Type="Int32" />
        </UpdateParameters>
                </asp:SqlDataSource>
    <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="1" Width="100%">
        <ajaxToolkit:TabPanel runat="server" HeaderText="Kategoriler" ID="TabPanel1">
            <ContentTemplate>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="KategoriAdi" HeaderText="KategoriAdi" SortExpression="KategoriAdi" />
                        <asp:BoundField DataField="KategoriAciklamasi" HeaderText="KategoriAciklamasi" SortExpression="KategoriAciklamasi" />
                        <asp:BoundField DataField="EklenmeTarihi" HeaderText="EklenmeTarihi" SortExpression="EklenmeTarihi" />
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
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
        <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="Kategori Ekle / Düzenle">
            <ContentTemplate>
                <table>
                    <tr>
                        <td>Kategori Adı</td>
                        <td>
                            <asp:TextBox ID="txtKategoriAdi" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Boş Geçilemez!" ForeColor="Red" ControlToValidate="txtKategoriAdi"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Kategori Açıklaması</td>
                        <td>
                            <asp:TextBox ID="txtKategoriAciklamasi" runat="server" TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Boş Geçilemez!" ForeColor="Red" ControlToValidate="txtKategoriAciklamasi"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:CheckBox ID="cbAktif" runat="server" Text="Aktif/Pasif" />
                        </td>
                    </tr>

                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="btnEkle" runat="server" Text="Ekle" OnClick="btnEkle_Click" />
                        </td>
                    </tr>

                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="lblSonuc" runat="server"></asp:Label>
                        </td>
                    </tr>

                </table>
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
    </ajaxToolkit:TabContainer>
</asp:Content>

<%--'RequiredFieldValidator1' öğesinin ControlToValidate özelliği boş olamaz. hatası alırsak eğer ilgili RequiredFieldValidator kontrolüne gidip ControlToValidate özelliğine hangi textbox ı veya dropdownlist i kontrol edeceksek onun ıd sini vermeliyiz  --%>