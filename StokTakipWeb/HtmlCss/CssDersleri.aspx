<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CssDersleri.aspx.cs" Inherits="StokTakipWeb.HtmlCss.CssDersleri" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Css Dersleri</title>
    <style>
        /*Css kodlarımızı sayfalarımızın head etiketleri arasında tanımlayabiliriz. Bu kullanıma Dahili Css denir. */
        h1 { color: red; }
        /*bu şekilde sayfamızdaki tüm h1 leri seçip ona kırmızı rengi uyguladık*/
        h2, h3, h4 { color: crimson; }
        /*eğer aynı stili birden fazla elemana uygulamak istersek h2,h3 .. şeklinde aralarına , koyarak birden fazla elemanı seçebiliriz*/
        #idSecici { color: darkblue; font-size: large; }
        /*burada sayfamızdaki idSecici id değerine sahip elemanı seçip belirttiğimiz stili bu seçiciye uyguladık*/
        #cssElemanSecici { color: aquamarine; padding: 10px; }
        #nedenCss { background-color: burlywood; padding: 10px; border-bottom: 1px solid red; }
        #cssSozDizimi { background-color: blue; color: yellow; padding: 15px; border: 1px solid yellow; }
        .center { text-align: center; color: red; }
        p.center { background-color: burlywood; text-align: right; color: white; padding: 18px; }
        /*Css seçicilerden class seçicisini buradaki gibi p.center şeklinde kullanırsak bu sayfadaki p elementlerinden class ı center olanlara bu stili uygula anlamına gelir*/
        .xlarge { font-size: x-large; }
        /* html elemanlarından class="xlarge" özelliğine sahip olanların yazı fontunu büyüten class */
        * { text-align: center; color: blue; font-size: 103%; }
        /* CSS Evrensel Seçici ile sayfadaki tüm HTML öğelerini seçip stil uygulayabiliriz */
    </style>
    <link href="HariciCssDosyasi.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>CSS nedir?</h1>
            <ul>
                <li>CSS Cascading Style Sheets anlamına gelir</li>
                <li>CSS, HTML öğelerinin ekranda, kağıda veya diğer ortamlarda nasıl görüntüleneceğini açıklar</li>
                <li>CSS ile birden çok web sayfasının düzenini aynı anda denetleyebiliriz</li>
                <li>Harici stil sayfaları CSS dosyalarında depolanır</li>
            </ul>

            <h2 id="nedenCss">Neden CSS kullanıyoruz?</h2>

            <p class="center xlarge">
                CSS, farklı aygıtlar ve ekran boyutları için tasarım, düzen ve ekran varyasyonları da dahil olmak üzere web sayfalarınızın stillerini tanımlamak için kullanılır.
            </p>

            <h2 id="cssSozDizimi">CSS Sözdizimi</h2>

            <p class="xlarge">CSS kural kümesi bir seçici ve bildirim bloğundan oluşur: </p>

            <p>Örneğin h1 {color:blue;} şeklinde bir bildirimde bulunursak burada h1 seçici yani css i uygulamak istediğimiz elemandır, küme parantezi içindeki color property yani özelliktir, blue ise bu özelliğe atanan değer (value) dir.</p>
            <p>Bir elemana biren fazla stil özelliği tanımlamak istersek küme parantezi içinde ekleyeceğimiz özellik ve değerlerin sonuna ; koyarak bunu yapabiliriz, şöyle ki : p { color: red; text-align: center; } </p>
            <p>
                p CSS'de bir seçicidir (stil yapmak istediğiniz HTML öğesini işaret eder: < p >).
                <br />
                color bir özelliktir ve özellik değeri red dir,
                <br />
                text-align bir özelliktir ve özellik değeri center dir.
            </p>
            <h2>CSS Seçiciler</h2>

            <p>CSS seçiciler, stilize etmek istediğiniz HTML öğelerini "bulmak" (veya seçmek) için kullanılır.</p>
            <p>CSS seçicilerini beş kategoriye ayırabiliriz:</p>

            <ul>
                <li>Basit seçiciler (ad, kimlik, sınıfa göre öğeleri seçin)</li>
                <li>Kombinatör seçiciler (aralarındaki belirli bir ilişkiye göre öğeleri seçin)</li>
                <li>Sözde sınıf seçiciler (belirli bir duruma göre öğeleri seçin)</li>
                <li>Sözde eleman seçiciler (bir öğenin bir parçasını seçin ve stilize eder)</li>
                <li>Öznitelik seçicileri (bir öznitelik veya öznitelik değerine göre öğeleri seçin)</li>
            </ul>

            <h3 id="cssElemanSecici">CSS eleman Seçici</h3>

            <p>Öğe seçici, öğe adına göre HTML öğelerini seçer. Css de html elemanlarını etiket ismine göre seçebiliriz. Örneğin div elemanını seçersek css in etik olduğu tüm sayfalardaki div ler seçilmiş ve tanımladığımız css özelliklerine göre şekillendirilmiş olur.</p>

            <p class="center">
                Örnek
                <br />
                Burada, sayfadaki tüm < p > öğeleri kırmızı metin rengiyle orta hizalı olacaktır:
            </p>

            <h2>CSS id Seçici</h2>

            <p id="idSecici">
                Kimlik seçici, belirli bir öğeyi seçmek için bir HTML öğesinin id özniteliğini kullanır.<br />

                Bir öğenin kimliği bir sayfa içinde benzersizdir, bu nedenle kimlik seçici tek bir benzersiz öğe seçmek için kullanılır!
                <br />

                Belirli bir kimliği olan bir öğe seçmek için, bir karma (#) karakteri ve ardından öğenin kimliğini yazın.
            </p>

            <h5 class="center">Not: Bir kimlik adı bir numara ile başlayamaz!</h5>

            <h2>CSS class(sınıf) Seçici</h2>

            <div>
                Sınıf seçici, belirli bir sınıf özniteliği olan HTML öğelerini seçer.
                <br />
                Belirli bir sınıfa sahip öğeleri seçmek için, bir nokta (.) karakteri ve ardından sınıf adı yazın.
                <br />
                <h5 class="center">Örnek</h5>
                .center { text-align: center; color: red; }
                <br />
                Bu örnekte class="center" ile tüm HTML öğeleri kırmızı ve ortaya hizalı olacaktır.
            </div>

            <div>
                Bir html elementine birden fazla class verebiliriz. Bunun için kodumuz şöyle olmalıdır; br
                <p class="center xlarge">
                    bir elemana birden fazla class tanımlama
                </p>
            </div>

            <p class="xlarge">
                Not: Bir sınıf adı bir sayıyla başlayamaz!
            </p>

            <h2>CSS Evrensel Seçici</h2>

            <p>Evrensel seçici (*) sayfadaki tüm HTML öğelerini seçer.</p>

            <p>Aşağıdaki CSS kuralı sayfadaki her HTML öğesini etkileyecektir:</p>

            <p>* { text-align: center; color: blue; } </p>

            <h2>CSS Gruplandırma Seçici</h2>

            <p>Grupseçici, aynı stil tanımlarına sahip tüm HTML öğelerini seçer.</p>

            <p>Aşağıdaki CSS koduna bakın (h1, h2 ve p elemanları aynı stil tanımlarına sahiptir):</p>

            <p>
                h1 {
                  text-align: center;
                  color: red;
                }
                
                h2 {
                  text-align: center;
                  color: red;
                }
                
                p {
                  text-align: center;
                  color: red;
                }
            </p>

            <p>
                Yukarıdaki gibi aynı css kodlarına sahip elemanlaru şu şekilde gruplayarak daha az kodla işimizi çözebiliriz; <br />
                h1, h2, p { text-align: center; color: red; }
            </p>

            <h2>CSS Nasıl Eklenir</h2>
            
            <h3>CSS Eklemenin Üç Yolu Vardır</h3>

            <p>Harici CSS, Dahili CSS, Sıralı(İnline) CSS </p>

            <h3>Harici CSS Ekleme</h3>

            <p>Harici bir stil sayfası ile, sadece bir dosya değiştirerek tüm bir web sitesinin görünümünü değiştirebiliriz.</p>

            <p>Harici stiller,html sayfasının < head> bölümünde < link> öğesi içinde tanımlanır:</p>

            <p>Şu şekilde : < link rel="stylesheet" href="mystyle.css"> </p>

        </div>
    </form>
</body>
</html>
