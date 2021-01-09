<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Css03GenislikYukseklik.aspx.cs" Inherits="StokTakipWeb.HtmlCss.Css03GenislikYukseklik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>CSS Yükseklik ve genişlik ayarlama</h1>
            <p style="width: 350px; height: 200px; padding: 18px; background-color: azure">
                Bir öğenin yüksekliğini ve genişliğini ayarlamak için height ve width kullanılır.
            </p>

            <h2>CSS yükseklik ve genişlik Değerleri</h2>

            <p>
                height ve width değerleri şu özellikleri alabilir
            </p>
            <div style="height: 200px; width: 50%; background-color: powderblue;">
                auto - Bu varsayılandır. Tarayıcı yükseklik ve genişliği hesaplar<br />
                length - Px, cm vb. yükseklik/genişliği tanımlar.<br />
                % - İçeren bloğun yüzdesi yükseklik/genişlik tanımlar<br />
                initial - Yüksekliği/genişliği varsayılan değerine ayarlar<br />
                inherit - Yükseklik/genişlik ana değerinden devralınacaktır
            </div>

            <h2>Maksimum genişlik ayarlama</h2>
            <p>
                Özellik, bir öğenin maksimum genişliğini ayarlamak için kullanılır; max-width
            </p>

            <div style="height: 100px; max-width: 300px; background-color: powderblue;">
                Bu öğe 100 piksel yüksekliğe ve maksimum 300 piksel genişliğe sahiptir.
            </div>

            <h2>Tüm CSS Boyut Özellikleri</h2>
            <ul>
                <li>height: elemanın yüksekliği</li>
                <li>max-height: elemanın maksimum yüksekliği</li>
                <li>min-height: elemanın minimum yüksekliği</li>
                <li>max-width: elamanın maksimum genişliği</li>
                <li>min-width: elemanın minimum genişliği</li>
                <li>width: elemanın genişliği</li>
            </ul>

        </div>
    </form>
</body>
</html>
