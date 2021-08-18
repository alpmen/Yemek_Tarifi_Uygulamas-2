using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifi_Uygulaması2
{
    public partial class TarifOnayla : System.Web.UI.Page
    {
        sqlBaglanti bgl = new sqlBaglanti();
        string Tarifid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            
                Tarifid = Request.QueryString["Tarifid"];
                SqlCommand komut = new SqlCommand("select * from Tbl_Tarifler where Tarifid=@p1", bgl.baglan());
                komut.Parameters.AddWithValue("@p1", Convert.ToInt32(Tarifid));
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                    TextBox4.Text = dr[5].ToString();
                    TextBox5.Text = dr[6].ToString();
                }
                bgl.baglan().Close();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Tbl_Tarifler set TarifDurum=1 where Tarifid=@p1", bgl.baglan());
            komut.Parameters.AddWithValue("@p1", Convert.ToInt32(Tarifid));
            komut.ExecuteNonQuery();
            bgl.baglan().Close();
            Response.Write("Tarif Onaylandı");


        }
    }
}