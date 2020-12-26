<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Giris.aspx.cs" Inherits="StokTakipWeb.Giris" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Üye Girişi</title>
    <style type="text/css">
        /*
            Css de seçiciler;
            Css seçicileri web sayfalarındaki Html elemanlarını seçmek için kullanılır
            Css seçiciler ile eleman seçmenin ilk yolu elemanın kendisini seçmektir. Örneğin html{} kodu sayfadaki html elemanını seçer body{} body elemanını seçer, yalnız burada dikkat edilmesi gereken bu seçimler sayfadaki tüm elemanları seçer, bir sayfada sadece 1 tane html ve body kodu olacağı için bu elemanlarda sorun olmaz ama div elementini bu şekilde seçersek sayfadaki tüm div elementlerine uygulanır yazacağımız css kodları.
            * Css Id seçicisi
            Sayfada sadece 1 elementi seçeceksek ıd seçicileri kullanabiliriz. Id seçiciler seçeceğimiz elemente id tanımlaması yaparak kullanılabilir örneğin <td id="bunuSec"> şeklinde.
            Css de id seçiciler #IdSeciciIsmi{} şeklinde tanımlanır
            1 sayfada id özelliğini sadece 1 elementte kullanmamız lazım.
            * Css class seçicisi
            Eğer bir sayfada birden fazla elemente css ile şekil vereceksek bu durumda class seçicisini kullanmamız gerekir. Class seçicisini şu şekilde kullanabiliriz; <td class="classSeciciismi">
            css de class seçiciler .classIsmi{} şeklinde tanımlanır
        */
        html, body {
            height: 100%;/*html ve body elementlerini seç ve bu elementlerin yüksekliğini tarayıcı yüksekliğine eşitle*/
        }

        body {
            margin: 0;/*body elemanının dış boşluklarını sıfırla*/
            padding: 0;/*body elemanının iç boşluklarını sıfırla*/
            font: 18px "Trebuchet MS", Arial, Helvetica, sans-serif;
            color: #333333;
        }
        #bunuSec{ margin: 50px; padding: 34px; background-color : red; color: white; }
        .bunuSec{ margin: 20px; padding: 20px; background-color : red; color: white; }
        .orta-alan {
            width: 100%;
            height: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .giris {
            /* margin kodu elemana dışarıdan boşluk vermeye yarar, margin: 18% auto; yukarıdan ve aşağıdan sayfanın %18 i kadar boşluk ver, sağdan soldan ise tablomu ortala */
            border: 1px solid silver; /*border table a dış çerçeve vermemizi sağlar*/
            padding: 34px; /*padding elemana çerçeveden içeri doğru boşluk verir*/
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="orta-alan">
        <div>
            <table class="giris">
                <tr>
                    <td>Kullanıcı Adı</td>
                    <td id="bunuSec">
                        <asp:TextBox ID="txtKullaniciAdi" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="bunuSec">Şifre</td>
                    <td>
                        <asp:TextBox ID="txtSifre" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblMesaj" runat="server"></asp:Label>
                    </td>
                    <td class="bunuSec">
                        <asp:Button ID="BtnGiris" runat="server" OnClick="BtnGiris_Click" Text="Giriş" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
