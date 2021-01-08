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
    public partial class WebForm1 : System.Web.UI.Page
    {
       // SqlConnection conn =new SqlConnection ("Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\engineering\for_asp.ent\WebApplication1\App_Data\staff.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn =new SqlConnection (@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\engineering\for_asp.ent\WebApplication1\App_Data\staff.mdf;Integrated Security=True");
            conn.Open();
            SqlDataAdapter adapter1 = new SqlDataAdapter();
            SqlDataAdapter adapter2 = new SqlDataAdapter();
            string query1="insert into employee values ('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"')";
            SqlCommand cmd1 = new SqlCommand(query1, conn);
            adapter1.InsertCommand = new SqlCommand(query1, conn);
            adapter1.InsertCommand.ExecuteNonQuery();
            string query2 = "INSERT INTO job_salary VALUES( (SELECT Id from employee WHERE Fname='" + TextBox1.Text + "'and Lname='"+TextBox2.Text+"'),'" + TextBox5.Text + "','" + TextBox6.Text + "')";
            SqlCommand cmd2 = new SqlCommand(query2, conn);  
            adapter2.InsertCommand = new SqlCommand(query2, conn);
            adapter2.InsertCommand.ExecuteNonQuery();
            cmd1.Dispose();
            cmd2.Dispose();
            conn.Close();
            Response.Redirect("home.aspx");
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox4.Text = Calendar1.SelectedDate.ToString("yyyy-MM-dd");
            Calendar1.Visible = false;
        }

        
    }
}