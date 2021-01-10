<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Css07FloatOzellgi.aspx.cs" Inherits="StokTakipWeb.HtmlCss.Css07FloatOzellgi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Css Float Özelliği</h1>

            <p>Float çevrildiğinde yüzme anlamına geliyor, yani bir elemanın bulunduğu alanda yüzer gibi davranması.</p>

            <p>En çok kullanılan özellikleri float left ve right dır.</p>

            <div>
                float left - Eleman kabının solunda yüzer<br />
                float right - Eleman konteynerinin sağında yüzer<br />
                float none - Öğe yüzmüyor (metinde olduğu yerde görüntülenir). Bu varsayılandır.<br />
                devralma - Öğe, üst öğesinin float değerini devralır
            </div>

            <div>
                Kapsayıcı div

                <div style="float: left; border: 1px solid">
                    Float left olan div sola yapışır ve sonraki elemanlar buradan itibaren dizilir
                </div>

                <div style="border: 1px solid">
                    Burası float left den sonraki div içeriği
                </div>

                <div style="float: right; border: 1px solid">
                    Float right olan div sağa yapışır ve sonraki elemanlar buradan itibaren dizilir
                </div>

                <div style="border: 1px solid">
                    Burası float right dan sonraki div içeriği
                </div>

                <div style="border: 1px solid; clear:right">
                    Burası float right dan sonraki 2.div içeriği clear uygulayarak float özelliğini kaldırabiliriz
                    <p>
                        Clear özelliğinde önceki div de float ne ayarlandıysa ona göre bir temizleme yapabiliriz
                    </p>
                    <p>
                        Örneğin float right tan sonra bir temizleme yapacaksak clear:right diyerek float right özelliğinin uygulanmasını engelleyebiliriz.
                    </p>
                    <p>
                        Bir diğer temizlik yöntemimiz de clear:both dur. Bu özelliği verirsek float left veya right dan gelen kalıtımı iki taraflı engelleyebiliriz.
                    </p>
                </div>

            </div>

        </div>
    </form>
</body>
</html>
