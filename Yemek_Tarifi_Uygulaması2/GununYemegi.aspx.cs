using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifi_Uygulaması2
{
    public partial class GununYemegi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection
               ("Data Source=DESKTOP-38F6FLL\\MSSQLSERVER2014;Initial Catalog=dbo_Yemek_Tarifi;Integrated Security=True");

            baglanti.Open();
            SqlCommand komut2 = new SqlCommand("select * from Tbl_Yemekler where durum=1", baglanti);
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList3.DataSource = dr2;
            DataList3.DataBind();
            baglanti.Close();
        }

        protected void DataList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}