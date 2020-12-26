<%@ Page Title="" Language="C#" MasterPageFile="~/SiteSablon.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="StokTakipWeb.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    burası web form 1 .aspx
    <br />
    <h1>Asp .Net Web Form Nasıl Çalışır?</h1>
    <p>
        Proje oluştururken create new project dedikten sonra açılan pencereden C# web application .net framework u seçip proje ismimizi verip projemizi oluşturuyoruz.
    </p>
    <p>
        Projemiz oluştuktan sonra sitemizin ön yüzünde kullanılacak sabit tasarım şablonu için projeye 1 tane master page ekliyoruz.
    </p>
    <p>
        Bu masterpage içerisinde çalışacak olan web form dosyasını new item kısmından web form with master page ile ilgili masterpage imizi seçerek ekliyoruz.
    </p>
    <p>
        Eklenen masterpage de alt sayfalardan gelecek olan içerikleri çalıştırmak için 2 alan var.
        <br />
        1.si head alanındaki ContentPlaceHolder ki buraya alt sayfaların head alanları gönderilir
        <br />
        2.si body alanındaki ContentPlaceHolder buraya da web form sayfalarının içindeki içerikler gönderilir. <br />
        Masterpage de alt sayfalardan gelen bu verileri ilgili alanlarda gösterir.
    </p>
    <p>
        Alt sayfalar olan web form larda da Content alanları vardır ve bu Content ler hangi master page e veri göndereceğini ContentPlaceHolderID bölümünden belirlerler.
    </p>
    <p>
        ContentPlaceHolderID="head" kodu bu alanın içindeki içeriğin masterpage deki head alanındaki id si head olan ContentPlaceHolder ın içinde gönderileceğini ifade eder.
    </p>
    <p>
        Aynı şekilde alt sayfa olan web formlardaki ContentPlaceHolderID="ContentPlaceHolder1" kodu da masterpage deki ıd si ContentPlaceHolder1 olan placeholder ın içinde gönderilecek olan veri alanını belirler
    </p>
    <p>
        Özetlersek masterpage de 2 tane ContentPlaceHolder var birisi head diğeri body içerisinde ve bu 2 ContentPlaceHolder ın da ıd leri farklı, bu yüzden web formlardan gönderilen içeriği ayırt edebiliyor masterpage. <br />
        Masterpage de bulunan bu 2 adet ContentPlaceHolder a veri gönderebilmek için web formlarda content isimli elemanlar var bu elemanlar da içerisinde yazan ContentPlaceHolderID ye göre ilgili ContentPlaceHolder a içerisindeki veriyi gönderir.
    </p>
</asp:Content>
