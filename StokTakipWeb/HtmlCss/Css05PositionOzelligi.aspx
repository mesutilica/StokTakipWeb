<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Css05PositionOzelligi.aspx.cs" Inherits="StokTakipWeb.HtmlCss.Css05PositionOzelligi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>CSS Düzeni - Position(Konum) Özelliği</h1>

            <p>
                Bu özellik, bir öğe (statik, bağıl, sabit, mutlak veya yapışkan) için kullanılan konumlandırma yönteminin türünü belirtir.
            </p>

            <h2>Beş farklı konum değeri vardır:</h2>

            <p>static, relative, fixed, absolute, sticky</p>

            <h2>position: static; nedir?</h2>

            <p>
                HTML öğeleri varsayılan olarak statik olarak konumlandırılır. <br />
                Statik konumlandırılmış öğeler üst, alt, sol ve sağ özelliklerden etkilenmez.
            </p>

            <div style="position:static; border: 3px inset green;">
                Bu div elemanının konumu position static
            </div>

            <h2>position: relative</h2>

            <p>
                Görece konumlandırılmış bir öğenin üst, sağ, alt ve sol özelliklerini ayarlamak, normal konumundan uzağa ayarlanmasına neden olur. Diğer içerik, öğenin bıraktığı boşluğa sığacak şekilde ayarlanmaz.
            </p>

            <div style="position: relative; left: 300px; border: 3px inset green;">
                Bu div elemanının konumu position relative
            </div>

            <h2>position: fixed (sabit)</h2>

            <p>
                Bir elemana position: fixed özelliği tanımlanırsa bu öğe hep aynı yerinde kalır.
            </p>
            <p>
                Öğeyi konumlandırmak için üst(top), sağ(right), alt(bottom) ve sol(left) özellikler kullanılır.
            </p>

            <div style="position: fixed; left: 300px; bottom: 0; right: 0; width: 300px; border: 3px inset green;">
                Bu div elemanının konumu position fixed
            </div>

            <h2>position: absolute(mutlak)</h2>

            <p>
                Eleman, en yakın konumlandırılmış ataya(kapsayıcısı) göre konumlandırılır. <br />
                Ancak; mutlak konumlandırılmış bir öğenin konumlandırılmış ataları yoksa,
                belge gövdesini kullanır ve sayfa kaydırma ile birlikte hareket eder.
            </p>

            <div style="position: relative; width: 400px; height: 200px; border: 3px solid green;">
                Bu div elemanının konumu position relative
                <div style="position: absolute; top: 80px; right: 0; width: 200px; height: 100px; border: 3px solid yellow;">
                    Bu < div> öğesinin konumu absolute
                </div>
            </div>

            <h2>position: sticky</h2>

            <p>
                Kullanıcının kaydırma konumuna göre konumlandırılmış bir öğe oluşturmamızı sağlar.
            </p>

            <div style="position: sticky; top: 0; padding: 5px; background-color: antiquewhite; border: 2px solid #4CAF50;">
                Ben yapışkanım!
            </div>

            <div style="padding-bottom:1800px">
                Burası da sticky alanın altındaki içerik alanı. <br />
                Sayfa kaydırıldığında sticky alan sabit kalır
            </div>

            <h2>Öğelerin Çakışma Durumu</h2>

            <p>
                Position absolute kullandığımız durumlarda öğeler üst üste binebilir.<br />
                Bu durumda css de z-index özelliği kullanılarak üstte kalmasını istediğimiz elemanı ayarlayabiliriz.
            </p>

            <div style="position: relative; width: 500px; height: 500px; border: 3px solid green;">
                Burası kapsayıcı div alanı
                <div style="position: absolute; top: 80px; right: 0; width: 200px; height: 100px; border: 3px solid yellow; background-color: darkblue; color: yellow; z-index: 2;">
                    Bu div öğesinin konumu absolute
                </div>

                <div style="position: absolute; top: 100px; right: 0; width: 200px; height: 100px; border: 3px solid blue; background-color: yellow; z-index: 1;">
                    Bu 2.div öğesinin konumu absolute,
                </div>
                üst üste gelen divlerde hangi öğenin üstte kalmasını istersek ona yüksek bir z-index değeri tanımlayarak bunu yapabiliriz
            </div>

        </div>
    </form>
</body>
</html>
