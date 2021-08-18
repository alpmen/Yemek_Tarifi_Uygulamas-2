using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; 
namespace Yemek_Tarifi_Uygulaması2
{
    public partial class MesajDetay : System.Web.UI.Page
    {
        string Mesajid = "";
        sqlBaglanti bgl = new sqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            Mesajid = Request.QueryString["Mesajid"];
            SqlCommand komut = new SqlCommand("select * from Tbl_Mesajlar where mesajid=@p1",bgl.baglan());
            komut.Parameters.AddWithValue("@p1", Convert.ToInt32(Mesajid));
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();
                TextBox4.Text = dr[4].ToString();
            }
            bgl.baglan().Close();
        }
    }
}