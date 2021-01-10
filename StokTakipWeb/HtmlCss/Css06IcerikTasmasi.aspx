<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Css06IcerikTasmasi.aspx.cs" Inherits="StokTakipWeb.HtmlCss.Css06IcerikTasmasi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>CSS Düzeni - İçerik Taşma Durumu</h1>

            <p>
                Overflow CSS özelliği, bir alana sığmayacak kadar büyük içeriğe ne olacağını denetler.
            </p>

            <h2>Css Overflow özelliği aşağıdaki değerlere sahiptir:</h2>
            <div>
                visible - Varsayılan değer. Taşma kırpılmıyor. İçerik, öğenin kutusunun dışında işlenir<br />
                hidden - Taşma kırpılır ve içeriğin geri kalanı görünmez olur<br />
                scroll - Taşma kırpılır ve içeriğin geri kalanını görmek için bir kaydırma çubuğu eklenir<br />
                auto - Scrolla benzer, ancak yalnızca gerektiğinde kaydırma çubukları ekler
            </div>

            <div style="width: 200px; height: 50px; background-color: #eee; overflow: visible; margin-bottom:100px;">
                Düzeni daha iyi denetlemek istediğinizde taşma özelliğini kullanabilirsiniz. Taşma özelliği, içerik bir öğenin kutusunu taşarsa ne olacağını belirtir.
            </div>

            <div style="width: 200px; height: 50px; background-color: #eee; overflow: hidden; margin-bottom: 100px;">
                Düzeni daha iyi denetlemek istediğinizde taşma özelliğini kullanabilirsiniz. Taşma özelliği, içerik bir öğenin kutusunu taşarsa ne olacağını belirtir.
            </div>

            <div style="width: 200px; height: 50px; background-color: #eee; overflow: scroll; margin-bottom: 100px;">
                Düzeni daha iyi denetlemek istediğinizde taşma özelliğini kullanabilirsiniz. Taşma özelliği, içerik bir öğenin kutusunu taşarsa ne olacağını belirtir.
            </div>

            <div style="width: 200px; height: 50px; background-color: #eee; overflow: auto;">
                Düzeni daha iyi denetlemek istediğinizde taşma özelliğini kullanabilirsiniz. Taşma özelliği, içerik bir öğenin kutusunu taşarsa ne olacağını belirtir.
            </div>

        </div>
    </form>
</body>
</html>
