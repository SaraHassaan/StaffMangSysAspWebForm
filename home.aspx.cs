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
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("insert.aspx");
        }

    
        protected void Button2_Click(object sender, EventArgs e)
        {
            
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\engineering\for_asp.ent\WebApplication1\App_Data\staff.mdf;Integrated Security=True");
            conn.Open();
            SqlDataReader dataReader1;
            String query1 = "select Id,Fname,Lname,Address,BirthDate,JobTitle,Salary from employee join job_salary on Id='"+TextBox1.Text+"'and EmpId=Id";
            SqlCommand cmd1 = new SqlCommand(query1, conn);
            dataReader1 = cmd1.ExecuteReader();
            Label1.Text = "ID:";
            Label3.Text = "Fname:";
            Label5.Text = "Lname:";
            Label7.Text = "Address:";
            Label9.Text = "BirthDate:";
            Label11.Text = "JobName:";
            Label13.Text = "Salary:";
            if (dataReader1.Read()) //datareader contains only one row (fname,lname,address,birth,job,salary)
            {
                Label2.Text = dataReader1.GetValue(0).ToString();
                Label4.Text = dataReader1.GetValue(1).ToString();
                Label6.Text = dataReader1.GetValue(2).ToString();
                Label8.Text = dataReader1.GetValue(3).ToString();
                Label10.Text = dataReader1.GetValue(4).ToString();
                Label12.Text = dataReader1.GetValue(5).ToString();
                Label14.Text = dataReader1.GetValue(6).ToString();
            }
            else
            {
                Response.Write("you entered wrong ID");
            }
            /*if(TextBox1.Text==" ")
            {
                Label1.Visible=false; 
                Label2.Visible= false; 
                Label3.Visible = false;
                Label4.Visible  = false;
                Label5.Visible = false;
                Label6.Visible = false;
                Label7.Visible = false;
                Label8 .Visible = false;
                Label9.Visible =false;
                Label10.Visible  = false;
                Label11.Visible =false;
                Label12.Visible  = false;
                Label13.Visible =false;
                Label14.Visible  = false;

            }*/
          
            dataReader1.Close();
            cmd1.Dispose();
            conn.Close(); 
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}