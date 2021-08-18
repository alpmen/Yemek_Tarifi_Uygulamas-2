using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi_Uygulaması2
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        sqlBaglanti bgl = new sqlBaglanti();
        string id = "";
        string islem2 = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yemekid"];
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("select * from Tbl_Yemekler where Yemekid=@p1", bgl.baglan());
                komut.Parameters.AddWithValue("@p1", Convert.ToInt32(id));
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                }
                bgl.baglan().Close();

                SqlCommand komut2 = new SqlCommand("select * from Tbl_Kategoriler", bgl.baglan());
                SqlDataReader dr2 = komut2.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
                bgl.baglan().Close();

                

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName));


                SqlCommand komut = new SqlCommand
                    ("update Tbl_Yemekler set YemekAd=@p1,YemekMalzeme=@p2,YemekTarif=@p3,Kategoriid=@p4,YemekResim=@p6 where yemekid=@p5", bgl.baglan());
                komut.Parameters.AddWithValue("@p1", TextBox1.Text);
                komut.Parameters.AddWithValue("@p2", TextBox2.Text);
                komut.Parameters.AddWithValue("@p3", TextBox3.Text);
                komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
                komut.Parameters.AddWithValue("@p6", "~/resimler/" + FileUpload1.FileName);
                komut.Parameters.AddWithValue("@p5", Convert.ToInt32(id));

                komut.ExecuteNonQuery();
                bgl.baglan().Close();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
            }
            catch (Exception)
            {

                Response.Write("Lütfen Resim Seçiniz");
            }

            SqlCommand komut2 = new SqlCommand("update Tbl_Kategoriler set KategoriAdet=KategoriAdet+1 where kategoriid=@k1", bgl.baglan());
            komut2.Parameters.AddWithValue("@k1", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglan().Close();
        }
    }
}