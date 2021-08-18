using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifi_Uygulaması2
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        sqlBaglanti bgl = new sqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection
                 ("Data Source=DESKTOP-38F6FLL\\MSSQLSERVER2014;Initial Catalog=dbo_Yemek_Tarifi;Integrated Security=True");

            baglanti.Open();
            SqlCommand komut = new SqlCommand("select * from Tbl_Kategoriler", baglanti);
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            baglanti.Close();
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}