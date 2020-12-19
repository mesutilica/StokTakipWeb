<%@ Page Title="" Language="C#" MasterPageFile="~/SiteSablon.Master" AutoEventWireup="true" CodeBehind="MarkaYonetimi.aspx.cs" Inherits="StokTakipWeb.MarkaYonetimi" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 { width: 100%; }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="1">
        <ajaxToolkit:TabPanel runat="server" HeaderText="Marka Listesi" ID="TabPanel1">
            <ContentTemplate>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="MarkaAdi" HeaderText="MarkaAdi" SortExpression="MarkaAdi" />
                        <asp:BoundField DataField="MarkaAciklamasi" HeaderText="MarkaAciklamasi" SortExpression="MarkaAciklamasi" />
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
        <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="Marka Ekle/Düzenle">
            <ContentTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>Marka Adı</td>
                        <td>
                            <asp:TextBox ID="txtMarkaAdi" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Marka Açıklaması</td>
                        <td>
                            <asp:TextBox ID="txtMarkaAciklamasi" runat="server" TextMode="MultiLine"></asp:TextBox>
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
                            <asp:Button ID="btnKaydet" runat="server" OnClick="btnKaydet_Click" Style="height: 26px" Text="Ekle" />
                            <asp:Label ID="lblMesaj" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
        </ajaxToolkit:TabPanel>
    </ajaxToolkit:TabContainer>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseContext %>" DeleteCommand="DELETE FROM [Marka] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Marka] ([MarkaAdi], [MarkaAciklamasi], [EklenmeTarihi], [Aktif]) VALUES (@MarkaAdi, @MarkaAciklamasi, @EklenmeTarihi, @Aktif)" SelectCommand="SELECT * FROM [Marka]" UpdateCommand="UPDATE [Marka] SET [MarkaAdi] = @MarkaAdi, [MarkaAciklamasi] = @MarkaAciklamasi, [EklenmeTarihi] = @EklenmeTarihi, [Aktif] = @Aktif WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MarkaAdi" Type="String" />
            <asp:Parameter Name="MarkaAciklamasi" Type="String" />
            <asp:Parameter Name="EklenmeTarihi" Type="DateTime" />
            <asp:Parameter Name="Aktif" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MarkaAdi" Type="String" />
            <asp:Parameter Name="MarkaAciklamasi" Type="String" />
            <asp:Parameter Name="EklenmeTarihi" Type="DateTime" />
            <asp:Parameter Name="Aktif" Type="Boolean" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />

</asp:Content>
