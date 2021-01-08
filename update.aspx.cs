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
    public partial class update : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\engineering\for_asp.ent\WebApplication1\App_Data\staff.mdf;Integrated Security=True");

        
        protected void Page_Load(object sender, EventArgs e)
        {

           
            
            if (Page.IsPostBack == false) //this code will be executed one time at the first load 
            {
                string id = Request.QueryString["Id"];
                conn.Open();
                SqlDataAdapter adapter1 = new SqlDataAdapter();
                SqlDataAdapter adapter2 = new SqlDataAdapter();
                SqlDataReader dataReader1;
                String query1 = "select Fname,Lname,Address,BirthDate,JobTitle,Salary from employee join job_salary on Id= '"+id+"'and EmpId=Id";
                SqlCommand cmd1 = new SqlCommand(query1, conn);
                dataReader1 = cmd1.ExecuteReader();

                while (dataReader1.Read()) //datareader contains only one row (fname,lname,address,birth,job,salary)
                {
                    TextBox1.Text = dataReader1.GetValue(0).ToString();
                    TextBox2.Text = dataReader1.GetValue(1).ToString();
                    TextBox3.Text = dataReader1.GetValue(2).ToString();
                    TextBox4.Text = dataReader1.GetValue(3).ToString();
                    TextBox5.Text = dataReader1.GetValue(4).ToString();
                    TextBox6.Text = dataReader1.GetValue(5).ToString();
                }
                dataReader1.Close();
                cmd1.Dispose();
                conn.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox4.Text = Calendar1.SelectedDate.ToString("yyyy-MM-dd");
            Calendar1.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\engineering\for_asp.ent\WebApplication1\App_Data\staff.mdf;Integrated Security=True");
            string id = Request.QueryString["Id"];
            conn.Open();
            SqlDataAdapter adapter2 = new SqlDataAdapter();
            SqlDataAdapter adapter3 = new SqlDataAdapter();
            String query2 = "update employee set Fname='" + TextBox1.Text + "',Lname='" + TextBox2.Text + "',Address='" + TextBox3.Text + "',BirthDate='" + TextBox4.Text + "'where Id ='"+id+"' ";
            String query3 = "update job_salary set JobTitle='" + TextBox5.Text + "',Salary='" + TextBox6.Text + "' where EmpId ='"+id+"'";
            SqlCommand cmd2 = new SqlCommand(query2, conn);
		    adapter2.InsertCommand = new SqlCommand(query2,conn);
            adapter2.InsertCommand.ExecuteNonQuery();
            SqlCommand cmd3 = new SqlCommand(query3, conn);
            adapter3.InsertCommand = new SqlCommand(query3, conn);
            adapter3.InsertCommand.ExecuteNonQuery();
            cmd2.Dispose();
            cmd3.Dispose();
		    conn.Close();
            Response.Redirect("home.aspx");
        }
    }
}