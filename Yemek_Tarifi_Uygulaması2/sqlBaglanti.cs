using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
namespace Yemek_Tarifi_Uygulaması2
{
    public class sqlBaglanti
    {
        public SqlConnection baglan()
        {
            SqlConnection baglanti = new SqlConnection
                ("Data Source=DESKTOP-38F6FLL\\MSSQLSERVER2014;Initial Catalog=dbo_Yemek_Tarifi;Integrated Security=True");
            baglanti.Open();
            return baglanti;
        }
    }
}