<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HtmlDersleri.aspx.cs" Inherits="StokTakipWeb.HtmlCss.HtmlDersleri" %>

<!DOCTYPE html>
<%--Bir sayfanın html sayfası olduğu <!DOCTYPE html> kod bildirimiyle yapılır--%>

<html xmlns="http://www.w3.org/1999/xhtml">
<%--Bir html sayfasında sadece 1 tane <html></html> kodu bulunmalıdır ve html kodları açıldığı hiyerarşiye göre kapatılmalıdır. Sayfada html tag ı ana kapsayıcı koddur ve diğer tüm sayfa elemanları bu kod içerisinde yer alır. --%>
<head runat="server">
    <%-- head kodu html sayfalarında sayfada kullanacağımız css, javascript gibi ek dosya veya kodlarla beraber sayfamızın meta ayarlarının tutulduğu kod bloğudur. örneğin sayfa başlığını title koduyla burada tanımlarız ya da sayfanın yazı dilinin ayarını burada yaparız. --%>
    <title>Title tagları sayfamızın sekmede görünen başlığında yazacak olan metnin barındığı koddur</title>
    <link href="HariciCssDosyasi.css" rel="stylesheet" />
</head>
<body>
    <%--<body></body> kodları sayfamızın görünen tasarımının yer aldığı kısımdır ve sayfamızın içeriklerine ait kodlar ve veriler bu alanda tanımlanır. Statik veya dinamik tüm içerikleri barındırır.--%>
    <form id="form1" runat="server">
        <%--<form></form> etiketleri normalde html taglarıdır bununla beraber asp.net sayfalarında form taglarına runat="server" attribute u eklenir ve asp.net web form sayfalarında kullanacağımız asp.net e özel kontroller bu formun içine eklenerek kullanılır. 1 .aspx   sayfasında sadece 1 tane form elemenı kullanılır. --%>
        <div>
            Div elemanı html elemanlarından en sık kullanılanlardandır.<br />
            Sayfada bölümler oluşturmamızı sağlar.<br />
            Bir sayfada istediğimiz kadar div kullanabiliriz
        </div>
        <br />
        br elemanı yazdığımız yazılarda kendisinden sonraki kısmın alt satırdan devam etmesini sağlar, enter görevi görür.
        <p>
            P elemanı html kodlarından paragraf yazılarında kullandığımız bir elemandır.
        </p>
        <h1>H1 elemanı html sayfalarında başlık oluşturmak için kullanılır, en büyük yazı boyutuna sahip başlık türüdür. 1 sayfada 1 tane kullanılması tavsiye edilir.</h1>
        <h2>H2 sayfada h1 den sonra alt başlık olarak kullanılıan html elemanıdır</h2>
        <h3>H3 elemanı h2 nin küçüğüdür orta seviye önem sırasına sahip başlıklar için kullanılır</h3>
        <h4>H4 başlığı</h4>
        <h5>H5 başlık örneği</h5>
        <h6>H6 başlık en küçük fonta sahiptir, son başlık kodudur.</h6>
        <p>Html de başlık etiketleri H1 den H6 ya kadardır. H1 en büyük başlık, H6 en küçük başlıktır.</p>
        <p>Html elemanlarının Display özellikleri bulunur ve bu özellik elemandan elemana değişir. Bazı elemanlarda varsayılan display özelliği block tur ve bu elemanlar sayfada bulunduğu satırın tamamını kapsar.</p>
        <a href="#">Sayfada başka bir adrese veya sayfaya link vermek için a tagı kullanılır</a>
        <p>Sayfada Resim göstermek için kullanılan Html kontrolü img dir.</p>
        <img src="../Admin/Uploads/monster-tulpar-t7-v18-3-2-i9-9900k-64-gb-1-tb-10-tb-ssd-rtx2080-17-3-4k-notebook-z.jpg" width="500" height="300" title="Resmin üzerine geldiğimizde açıklama göstermek için title kullanılır" />
        <p>Resim eklemek için kullanılan img kodunda resmin yolu src attribute una tanımlanır, eğer verilen adreste resim varsa img kodu sayfada resmi gösterir. Resim gösteriminde resme genişlik ve yükseklik belirlemek için img koduna width ve height özellikleri verilebilir.</p>
        <p>Ayrıca resimlerde alt özelliği kullanılırsa resim bulunamadığında alt tagına yazdığımız metin gösterilir ekranda</p>
        <img src="/admin.jpg" alt="Resim yolu bulunamadı" />
        <p>Html de excel deki gibi tasarım yaparak satır ve sütunlar halinde içerik gösterimi yapmak için table tagı kullanılır.</p>
        <p>Table tagı genel kapsayıcı tagdır ve içerisinde yer alacak satır ve sütunlar table ile çevrelenir.</p>
        <p>Table içine satırlar tr kodu ile sütunlar td kodu ile oluşturulur</p>
        <p>Table da satır ve sütunların çerçevesini göstermek için border=1 attributunu tanımlamalıyız</p>
        <table border="1">
            <tr>
                <td>Tek satır ve tek sütunluk bir tablo</td>
            </tr>
        </table>
        <br />
        <table border="1">
            <tr>
                <td>Tek satır ve </td>
                <td>iki sütunluk bir tablo</td>
            </tr>
        </table>

        <br />

        <table border="1">
            <tr>
                <td>İki satır ve </td>
                <td>iki sütunluk bir tablo</td>
            </tr>
            <tr>
                <td>İki satır ve </td>
                <td>iki sütunluk bir tablo</td>
            </tr>
        </table>

        <br />

        <table border="1">
            <tr>
                <td>1. Satır 1.Sütun</td>
                <td>1. Satır 2.Sütun</td>
                <td>1. Satır 3.Sütun</td>
            </tr>
            <tr>
                <td>2. Satır 1.Sütun</td>
                <td>2. Satır 2.Sütun</td>
                <td>2. Satır 3.Sütun</td>
            </tr>
            <tr>
                <td>3. Satır 1.Sütun</td>
                <td>3. Satır 2.Sütun</td>
                <td>3. Satır 3.Sütun</td>
            </tr>
        </table>

        <h2>Tablo kullanımında satır ve sütun birleştirme</h2>
        <p>Html table elemanında içeiriğinde bulunan satır ve sütunları birleştirme özelliği vardır.</p>
        <p>Bunun için colspan ve rowspan attribute ları kullanılır</p>
        <p>colspan sütunları rowspan satırları birleştirir</p>

        <table border="1">
            <caption>Tablo başlığı oluşturma - Rowspan kullanımı</caption>
            <tr>
                <th>Name:</th>
                <td>Bill Gates</td>
            </tr>
            <tr>
                <th rowspan="2">Telephone:</th>
                <td>55577854</td>
            </tr>
            <tr>
                <td>55577855</td>
            </tr>
        </table>
        <br />
        <table border="1">
            <caption>Table da colspan kullanımı</caption>
            <tr>
                <td colspan="2">İki satır ve iki sütunluk bir tablo</td>
            </tr>
            <tr>
                <td>İki satır ve </td>
                <td>iki sütunluk bir tablo</td>
            </tr>
        </table>

        <h1 style="background-color: crimson">
            Style kullanarak html kontrolüne arkaplan rengi verme
        </h1>
        <p style="background-color: tomato">Arkaplan rengi</p>
        <h2 style="background-color: darkblue; color: yellow">Html elemanlarına style ile yazı rengi verme
        </h2>
        <h3 style="font-family:'Times New Roman', Times, serif">
            Style kullanarak html kontrolüne yazı tipi fontu verme
        </h3>
        <h6 style="font-size: 180%">
            Yazı boyutunu büyütme
        </h6>
        <p style="text-align:center;">
            Html de yazıyı ortalama
        </p>
        <i>Html i elementi ile italik yani yana yatık yazılar yazdırabiliriz</i>
        <em>em elementi ile de</em>
        <h2>Html de <small>small</small> elementi ile bir yazıyı daha küçük gösterebiliriz</h2>
        <mark>mark HTML öğesi işaretli veya vurgulanmış metni tanımlar</mark>
        <ins>Html ins tagı</ins>
        <p>sub HTML öğesi ile <sub>alt</sub> metin tanımlarız</p>
        <p>sup HTML öğesi <sup>üst yazı</sup> metnini tanımlar</p>
        <address>
            Adres yazımları için <br />
            html address elementini kullanabiliriz
        </address>
        <!-- Html de yorum satırı oluşturma -->
        <!-- Html nin yorum satırı ile yorum satırı oluşturursak bu yorum metni sayfa ön yüzünde görünmez ama tarayıcımızın kaynağı görüntüle kısmında kod tarafında görünür -->
        <%--C# ın yorum satırı kaynağı görüntüle kısmında da görünmez sadece vs da kod yazarken görünür--%>
        <h2 style="border: 3px solid DodgerBlue">
            Html elementlerinde border ile çerçeve kullanabiliriz
        </h2>
        <h2 style="border: 3px solid #fbfbfb; background-color: #808080;">
            Html elementlerinde renk ismi yerine renk kodlarını da kullanabiliriz
        </h2>
        <h3>Html de liste elemanları kullanımı</h3>
        <p>Sıralı ve sırasız liste olmak üzere 2 farklı liste kullanabiliriz</p>
        <ul>
            <li>Unordered HTML List</li>
            <li>Sırasız liste oluşturmak için</li>
            <li>ul ve li kullanabiliriz</li>
            <li>Özellikle menülerde sık kullanılır</li>
        </ul>
        <ol>
            <li>Ordered HTML List</li>
            <li>Sıra numaralı liste kullanmak istersek</li>
            <li>ol be li kullanabiliriz</li>
        </ol>
        <h4>Bir diğer liste yöntemi de dl yani Description Lists dir. Açıklamalı listeler oluşturmada kullanılır</h4>
        <dl>
            <dt>Çay var </dt>
            <dd>İçersen</dd>
            <dt>Yol var</dt>
            <dd>Gidersen</dd>
        </dl>

    </form>
</body>
</html>
