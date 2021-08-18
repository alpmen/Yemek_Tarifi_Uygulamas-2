using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifi_Uygulaması2
{
    public partial class KategoriAdminDetay : System.Web.UI.Page
    {
        sqlBaglanti bgl = new sqlBaglanti();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["kategoriid"];
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("select * from Tbl_KAtegoriler where Kategoriid=@p1", bgl.baglan());
                komut.Parameters.AddWithValue("@p1", Convert.ToInt32(id));
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                }
                bgl.baglan().Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            sqlBaglanti bgl2 = new sqlBaglanti();
            SqlCommand komut = new SqlCommand("update Tbl_Kategoriler set KategoriAd=@p1,KategoriAdet=@p2 where Kategoriid=@p3", bgl2.baglan());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            bgl2.baglan().Close();
        }
    }
}