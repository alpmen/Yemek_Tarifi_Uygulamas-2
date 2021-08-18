using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifi_Uygulaması2
{
    public partial class GununYemegiSec : System.Web.UI.Page
    {
        string id = "";
        sqlBaglanti bgl = new sqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yemekid"];
            SqlCommand komut = new SqlCommand("select * from Tbl_Yemekler where yemekid=@p1",bgl.baglan());
            komut.Parameters.AddWithValue("@p1", Convert.ToInt32(id));
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();
            }
            bgl.baglan().Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            id = Request.QueryString["Yemekid"];
            SqlCommand komut = new SqlCommand("update Tbl_Yemekler set durum=0", bgl.baglan());
            komut.ExecuteNonQuery();
            SqlCommand komut2 = new SqlCommand("update Tbl_Yemekler set durum=1 where Yemekid=@p1", bgl.baglan());
            komut2.Parameters.AddWithValue("@p1", Convert.ToInt32(id));
            komut2.ExecuteNonQuery();
            bgl.baglan().Close();
            Response.Write("Günün yemeği seçildi");
        }
    }
}