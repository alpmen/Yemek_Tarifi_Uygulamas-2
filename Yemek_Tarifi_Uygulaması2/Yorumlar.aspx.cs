using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi_Uygulaması2
{
    public partial class Yorumlar : System.Web.UI.Page
    {
        sqlBaglanti bgl = new sqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;
            SqlCommand komut = new SqlCommand("select * from Tbl_Yorumlar where YorumOnay=1", bgl.baglan());
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();


            SqlCommand komut2 = new SqlCommand("select * from Tbl_Yorumlar where YorumOnay=0", bgl.baglan());
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList4.DataSource = dr2;
            DataList4.DataBind();
            bgl.baglan().Close();




        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
            Panel4.Visible = false;
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Panel2.Visible = true;
            Panel4.Visible = true;
        }
    }
}