<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Css04DisplayOzelligi.aspx.cs" Inherits="StokTakipWeb.HtmlCss.Css04DisplayOzelligi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>CSS Display Özelliği</h1>

            <p>
                Display özelliği düzeni denetlemek için en önemli CSS özelliğidir.
            </p>

            <p>
                Her HTML öğesi, ne tür bir öğe olduğuna bağlı olarak varsayılan bir display değerine sahiptir. Çoğu öğe için varsayılan display değeri block veya inline dır.
            </p>

            <h2>Display Özelliği Blok Düzeyi Öğeler</h2>

            <p>
                Blok düzeyindeki bir öğe her zaman yeni bir satırda başlar ve kullanılabilir tam genişliği alır (mümkün olduğunca sola ve sağa doğru uzanır).
            </p>

            <p>Blok düzeyi öğelerine örnekler:</p>

            <div>
                <code>< div><br />
                    < h1>-< h6><br />
                    < p><br />
                    < form><br />
                    < header><br />
                    < footer><br />
                    < section>
                </code>
            </div>

            <h3>Display Inline Elementler</h3>

            <p>
                Display Inline eleman yeni bir satırda başlamaz ve yalnızca gerektiği kadar genişlik alır.
            </p>

            <ul>
                <li>&lt;span&gt; <span>Bu span elemanı display inline</span></li>
                <li>&lt;a&gt; <a href="#">a elemanı</a></li>
                <li>&lt;img&gt; <img src="#" alt="Resim elemanları da inline dır" /></li>
            </ul>

            <h3>Display: none;</h3>

            <p>
                Bir html elemanını ekranda görünmez hale getirmek için display : none özelliği kullanılır
            </p>

            <div style="display:none;">
                Gizli eleman
            </div>

            <h3>Display özelliği değiştirme</h3>

            <p style="display: inline">
                Elemanların varsayılan display özelliklerini css ile değiştirebiliriz. <br />

                P elementinin özelliğini display inline yaptık böylece sonraki element display block bir element olmazsa p nin bittiği yerden başlar sayfa yerleşimine.
            </p>

            <div style="display: inline">
                <b>Bu div</b> normalde block özelliği sayesinde alt satırdan başlayacakken display inline yaptığımız için p nin yanından başlıyor
            </div>

            <span style="display:block">
                Varsayılan özelliği inline olan spanı style="display:block" özelliği vererek display blok yapabiliriz. Böylece eleman blok seviyesi eleman haline gelir ve ekrana yayılır.
            </span>

            <div>
               style="visibility: hidden;" özelliğiyle öğe gizlenir
                <div style="visibility: hidden; width:180px">
                    Gizli eleman.  
                </div>
                ama yine de eskisi gibi aynı alanı kaplar.
            </div>

        </div>
    </form>
</body>
</html>
