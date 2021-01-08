using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace WebApplication1
{
    public partial class deleteaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\engineering\for_asp.ent\WebApplication1\App_Data\staff.mdf;Integrated Security=True");
            string id = Request.QueryString["Id"];
            conn.Open();
            SqlDataAdapter adapter2 = new SqlDataAdapter();
            SqlDataAdapter adapter3 = new SqlDataAdapter();
            String query2 = "Delete job_salary where EmpId ='" + id + "'";
            String query3 = "Delete employee where Id ='" + id + "' ";
            SqlCommand cmd2 = new SqlCommand(query2, conn);
            adapter2.InsertCommand = new SqlCommand(query2, conn);
            adapter2.InsertCommand.ExecuteNonQuery();
            SqlCommand cmd3 = new SqlCommand(query3, conn);
            adapter3.InsertCommand = new SqlCommand(query3, conn);
            adapter3.InsertCommand.ExecuteNonQuery();
            cmd2.Dispose();
            cmd3.Dispose();
            conn.Close();
            Response.Redirect("home.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }
    }
}