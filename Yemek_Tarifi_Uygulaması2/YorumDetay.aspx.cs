using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi_Uygulaması2
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        sqlBaglanti bgl = new sqlBaglanti();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yorumid"];
            if (Page.IsPostBack==false)
            {
                SqlCommand komut = new SqlCommand
               ("select YorumAdSoyad,YorumMail,Yorumicerik,YemekAd from Tbl_Yorumlar" +
               " inner join Tbl_Yemekler on Tbl_Yorumlar.Yemekid=Tbl_Yemekler.Yemekid where yorumid=@p1", bgl.baglan());
                komut.Parameters.AddWithValue("@p1", Convert.ToInt32(id));
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[0].ToString();
                    TextBox2.Text = dr[1].ToString();
                    TextBox3.Text = dr[2].ToString();
                    TextBox4.Text = dr[3].ToString();
                }
            }
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Tbl_Yorumlar set yorumonay=1 where yorumid=@p1", bgl.baglan());
            komut.Parameters.AddWithValue("@p1", Convert.ToInt32(id));
            komut.ExecuteNonQuery();
            bgl.baglan().Close();
        }
    }
}