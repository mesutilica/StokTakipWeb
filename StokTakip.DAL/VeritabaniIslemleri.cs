using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StokTakip.DAL
{
    public class VeritabaniIslemleri
    {
        SqlConnection connection = new SqlConnection(@"Server=.; initial catalog=StokTakip; Integrated security=true");
    }
}
