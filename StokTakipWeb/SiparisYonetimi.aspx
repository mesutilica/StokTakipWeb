<%@ Page Title="" Language="C#" MasterPageFile="~/SiteSablon.Master" AutoEventWireup="true" CodeBehind="SiparisYonetimi.aspx.cs" Inherits="StokTakipWeb.SiparisYonetimi" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="MusteriAdi" HeaderText="MusteriAdi" SortExpression="MusteriAdi" />
                    <asp:BoundField DataField="MusteriSoyadi" HeaderText="MusteriSoyadi" SortExpression="MusteriSoyadi" />
                    <asp:BoundField DataField="Ulke" HeaderText="Ulke" SortExpression="Ulke" />
                    <asp:BoundField DataField="Adres" HeaderText="Adres" SortExpression="Adres" />
                    <asp:BoundField DataField="SiparisNo" HeaderText="SiparisNo" SortExpression="SiparisNo" />
                    <asp:BoundField DataField="SiparisTarihi" HeaderText="SiparisTarihi" SortExpression="SiparisTarihi" />
                    <asp:BoundField DataField="TeslimatTarihi" HeaderText="TeslimatTarihi" SortExpression="TeslimatTarihi" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseContext %>" DeleteCommand="DELETE FROM [Siparis] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Siparis] ([MusteriAdi], [MusteriSoyadi], [Ulke], [Adres], [SiparisNo], [SiparisTarihi], [TeslimatTarihi]) VALUES (@MusteriAdi, @MusteriSoyadi, @Ulke, @Adres, @SiparisNo, @SiparisTarihi, @TeslimatTarihi)" SelectCommand="SELECT * FROM [Siparis]" UpdateCommand="UPDATE [Siparis] SET [MusteriAdi] = @MusteriAdi, [MusteriSoyadi] = @MusteriSoyadi, [Ulke] = @Ulke, [Adres] = @Adres, [SiparisNo] = @SiparisNo, [SiparisTarihi] = @SiparisTarihi, [TeslimatTarihi] = @TeslimatTarihi WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MusteriAdi" Type="String" />
                    <asp:Parameter Name="MusteriSoyadi" Type="String" />
                    <asp:Parameter Name="Ulke" Type="String" />
                    <asp:Parameter Name="Adres" Type="String" />
                    <asp:Parameter Name="SiparisNo" Type="String" />
                    <asp:Parameter Name="SiparisTarihi" Type="DateTime" />
                    <asp:Parameter Name="TeslimatTarihi" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MusteriAdi" Type="String" />
                    <asp:Parameter Name="MusteriSoyadi" Type="String" />
                    <asp:Parameter Name="Ulke" Type="String" />
                    <asp:Parameter Name="Adres" Type="String" />
                    <asp:Parameter Name="SiparisNo" Type="String" />
                    <asp:Parameter Name="SiparisTarihi" Type="DateTime" />
                    <asp:Parameter Name="TeslimatTarihi" Type="DateTime" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
    <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="1">
        <ajaxToolkit:TabPanel runat="server" HeaderText="Siparişler" ID="TabPanel1">
            <ContentTemplate>

            </ContentTemplate>
        </ajaxToolkit:TabPanel>
        <ajaxToolkit:TabPanel runat="server" HeaderText="Yeni Ekle" ID="TabPanel2">
            <ContentTemplate>

            </ContentTemplate>
        </ajaxToolkit:TabPanel>
    </ajaxToolkit:TabContainer>    
</asp:Content>
