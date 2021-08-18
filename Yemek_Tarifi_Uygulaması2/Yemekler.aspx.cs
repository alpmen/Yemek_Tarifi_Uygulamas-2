using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifi_Uygulaması2
{
    public partial class Yemekler : System.Web.UI.Page
    {
        sqlBaglanti bgl = new sqlBaglanti();
        string Yemekid = "";
        string islem2 = "";
        string Kategoriid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

            SqlCommand komut = new SqlCommand("select * from Tbl_Yemekler ", bgl.baglan());
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
            bgl.baglan().Close();

            Yemekid = Request.QueryString["Yemekid"];
            islem2 = Request.QueryString["islem2"];
            Kategoriid = Request.QueryString["Kategoriid"];
           

            if (Page.IsPostBack == false)
            {
                SqlCommand komut2 = new SqlCommand("select * from Tbl_Kategoriler", bgl.baglan());
                SqlDataReader dr2 = komut2.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
                bgl.baglan().Close();

                if (islem2 == "sil")
                {
                    try
                    {
                        SqlCommand komutsil = new SqlCommand("delete from Tbl_Yemekler where Yemekid=@p1", bgl.baglan());
                        komutsil.Parameters.AddWithValue("@p1", Convert.ToInt32(Yemekid));
                        komutsil.ExecuteNonQuery();
                        bgl.baglan().Close();

                        SqlCommand komut3 = new SqlCommand("update Tbl_Kategoriler set KategoriAdet=KategoriAdet-1 where kategoriid=@k1", bgl.baglan());
                        komut3.Parameters.AddWithValue("@k1", Convert.ToInt32(Kategoriid));
                        komut3.ExecuteNonQuery();
                        bgl.baglan().Close();
                    }
                    catch (Exception)
                    {

                        Response.Write("Bu yemeğe ait yorumlar olduğu için silinemez");
                    }
                }
            }
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

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid) values(@p1,@p2,@p3,@p4)", bgl.baglan());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.ExecuteNonQuery();
            bgl.baglan().Close();


            SqlCommand komut2 = new SqlCommand("update Tbl_Kategoriler set KategoriAdet=KategoriAdet+1 where kategoriid=@k1", bgl.baglan());
            komut2.Parameters.AddWithValue("@k1", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglan().Close();
        }
    }
}