using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifi_Uygulaması2
{
    public partial class TarifOner : System.Web.UI.Page
    {
        sqlBaglanti bgl = new sqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand
               ("insert into Tbl_Tarifler (TarifAd,TarifMalzeme,TarifYapilis,TarifResim,TarifSahip,TarifSahipMail) values(@p1,@p2,@p3,@p4,@p5,@p6)", bgl.baglan());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", FileUpload1.FileName);
            komut.Parameters.AddWithValue("@p5", TextBox4.Text);
            komut.Parameters.AddWithValue("@p6", TextBox5.Text);
            komut.ExecuteNonQuery();
            bgl.baglan().Close();
            Response.Write("Tarif değerlendirmeye alındı");
        }

      
    }
}