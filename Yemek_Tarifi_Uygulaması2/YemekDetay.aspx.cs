using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifi_Uygulaması2
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        string yemekid = "";
        sqlBaglanti bgl = new sqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["Yemekid"];
            SqlCommand komut = new SqlCommand("select yemekAd from Tbl_Yemekler where Yemekid=@p1", bgl.baglan());
            komut.Parameters.AddWithValue("@p1", Convert.ToInt32(yemekid));
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                Label9.Text = dr[0].ToString();
            }
            bgl.baglan().Close();


            sqlBaglanti bgl2 = new sqlBaglanti();
            SqlCommand komut2 = new SqlCommand("select * from Tbl_Yorumlar where yemekid=@p2", bgl.baglan());
            komut2.Parameters.AddWithValue("@p2", Convert.ToInt32(yemekid));
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();
            bgl.baglan().Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            sqlBaglanti bgl = new sqlBaglanti();
            SqlCommand komut = new SqlCommand("insert into Tbl_Yorumlar (YorumAdSoyad,YorumMail,Yorumİcerik,yemekid) values(@p1,@p2,@p3,@p4)", bgl.baglan());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", yemekid);
            komut.ExecuteNonQuery();
            Response.Write("Yorumunuz değerlendirmeye alındı");
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
    }
}