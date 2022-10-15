using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebForm_webSite
{
    public partial class frmLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Connection_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(@"data source=.\sqlexpress2008;initial catalog=librairie;user id=sa; password=123456");
            cn.Open();
            SqlCommand cmd = new SqlCommand("select * from [user] where login = @email", cn);
            cmd.Parameters.AddWithValue("@email", txtlogin.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            bool flag = false;
            if (dr.Read())
                if (dr["password"].ToString() == txtpassword.Text)
                    flag = true;


            dr.Close();
            dr = null;
            cmd = null;
            cn.Close();
            cn = null;


            if (flag)
            {

                Session["passport"] = "ok";
                Response.Redirect("default.aspx");

            }
            else
                lbl_erorConnection.Visible = true;


        }
    }
}