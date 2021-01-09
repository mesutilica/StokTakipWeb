<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Css02MarginPadding.aspx.cs" Inherits="StokTakipWeb.HtmlCss.Css02MarginPadding" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>CSS Kenar Boşlukları(Margin)</h1>
            <p>
                CSS özellikleri, tanımlanmış kenarlıkların dışında öğelerin etrafında boşluk oluşturmak için kullanılır margin.
            </p>
            <p>
                CSS ile kenar boşlukları üzerinde tam kontrole sahipiz. Margin ile Bir öğenin dört yönden (üst, sağ, alt ve sol) için kenar boşluğu ayarlayabiliriz.
            </p>
            <h2>Margin - Bireysel Taraflar</h2>
            <p>
                CSS bir öğenin her bir tarafı için kenar boşluğu nu belirtmek için özelliklere sahiptir:<br />
                margin-top<br />
                margin-right<br />
                margin-bottom<br />
                margin-left<br />
            </p>
            <p>
                Örnek
                <br />
                Bir < p> öğesinin dört tarafı için farklı kenar boşlukları ayarlayalım:
            </p>
            <p>
                <code>p {
                    margin-top: 100px;
                    margin-bottom: 100px;
                    margin-right: 150px;
                    margin-left: 80px;
                    }
                </code>
            </p>
            <h2>Margin - Steno Özelliği</h2>
            <p>Kodu kısaltmak için, tüm kenar boşluğu özelliklerini tek bir özellikte belirtmek mümkündür.</p>
            <p>
                <b>Örnek</b>
                <br />
                Dört değere sahip kenar boşluğu özelliğini kullanalım;
                <br />
                <code>p { margin: 25px 50px 75px 100px; }
                </code>
            </p>
            <p style="margin: 25px 50px 75px 100px; padding: 25px 50px 75px 100px; border: 1px inset; background-color: antiquewhite;">
                Yani, burada nasıl çalışır:<br />
                Özelliğin dört değeri varsa:margin<br />

                margin: 25px 50px 75px 100px;<br />
                üst kenar boşluğu 25px<br />
                sağ kenar boşluğu 50px olduğunu<br />
                alt kenar boşluğu 75px olduğunu<br />
                sol kenar boşluğu 100px
            </p>

            <p>
                Margin in ve padding in tek satırda kullanımı saat yönünde çalışır ve ilk değer üst tür saatteki 12 gibi sonraki değer sağ saat 3 yönü, sonraki alt saat 6 yönü en son değer de sol dur saat 9 un olduğu yön.
            </p>

            <h2>Margin ve Padding Özelliğinin üç değeri varsa:</h2>

            <p style="margin: 25px 50px 75px; padding: 25px 50px 75px; border: 1px inset; background-color: antiquewhite;">
                margin(veya padding): 25px 50px 75px;<br />
                üst kenar boşluğu 25px<br />
                sağ ve sol kenar boşlukları 50px vardır<br />
                alt kenar boşluğu 75px olduğunu
                <br />
                Eğer margin ve padding i 3 lü kullanırsak
                <br />
                1. değer üst boşluk
                <br />
                2. değer sağ ve sol boşluk
                <br />
                3. değer alt boşluktur.
            </p>

            <h2>Margin ve Padding Özelliğinin iki değeri varsa:</h2>

            <code>p { margin: 25px 50px; }
                <br />
                p { padding: 25px 50px; }
            </code>

            <p style="margin: 25px 50px; padding: 25px 50px; border: 5px outset; background-color: whitesmoke;">
                üst ve alt kenar boşlukları 25px vardır
                <br />
                sağ ve sol kenar boşlukları 50px vardır
                <br />
                Yani margin ve padding e 2 değer verirsek o zaman <br />
                1. değerimiz üst ve alt boşluğa <br />
                2. değerimiz sağ ve sol boşluğa denk gelir
            </p>

            <h2>Margin ve Padding Özelliğinin tek değeri varsa:</h2>

            <p style="margin: 50px; padding: 50px; border: 7px groove; background-color: azure;">
                Eğer <code>p { margin: 50px; } p { padding: 50px; }</code> şeklinde kullanırsak 4 yönden de vermiş olduğumuz değer kadar boşluk bırakmış oluruz.
            </p>

            <h2>Otomatik Değer (margin:auto)</h2>

            <p>Kenar boşluğu özelliğini, kapsayıcı içindeki öğeyi yatay olarak ortalamak üzere ayarlayabilirsiniz</p>

            <p>Öğe daha sonra belirtilen genişliği kaplar ve kalan boşluk sol ve sağ kenar boşlukları arasında eşit olarak bölünür.</p>

            <h3>Örnek</h3>

            <p>
                <code> div { width: 300px; margin: auto; border: 1px solid red; } </code>
            </p>
            <div style="width: 350px; margin: auto; padding: 50px; border: 1px solid red;">
                Eğer bir elemanı ortalamak istersek margin auto özelliğinden yararlanabiliriz. <br />
                <b>Önemli not :</b> Elemanları sayfada margin auto ile ortalayabilmek için width özelliğini kullanmalıyız, genişliği belirtmezsek margin sayfada ölçüleme yapamaz
            </div>
        </div>
    </form>
</body>
</html>
