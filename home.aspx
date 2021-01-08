<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="WebApplication1.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>home</title>
    <style type="text/css">
      .div1{      
             margin-left:auto;
             background-color: #000066; 
             width:100%; 
             height: 60px;
           }
      .auto-style1 {
            font-size: xx-large;
            color:white;
        }
       .button
        {
            font-size: large;
            color:white;
            background-color :#003366 ;
        }
    </style>
</head>
<body bgcolor="#E6E9F2">
    <form id="form1" runat="server">
    <div class="div1"><strong><span class="auto-style1">Staff Mangement System</span></strong></h1>
    </div> 
    <div style="margin-left:auto; margin-right:auto; width:600px; > 
    <p class="auto-style1"> </p>
            <asp:TextBox ID="TextBox1" runat="server" Height="29px" Width="139px"></asp:TextBox>
            <asp:Button class="button" ID="Button2" runat="server" Height="35px" OnClick="Button2_Click" Text="SearchByID" Width="120px" />
    </div>  
    <div style="margin-left:auto; margin-right:auto; width:600px; >
    <p class="auto-style1">
    <table>
       <tr>
         <td><asp:Label ID="Label1" runat="server"></asp:Label></td> 
         <td> <asp:Label ID="Label2" runat="server"></asp:Label></td></tr>
       <tr>
         <td><asp:Label ID="Label3" runat="server"></asp:Label></td>
         <td><asp:Label ID="Label4" runat="server"></asp:Label></td></tr>
       <tr>
         <td><asp:Label ID="Label5" runat="server"></asp:Label></td>
         <td><asp:Label ID="Label6" runat="server"></asp:Label></td></tr>
       <tr>
         <td><asp:Label ID="Label7" runat="server"></asp:Label></td>
         <td><asp:Label ID="Label8" runat="server"></asp:Label></td></tr>
       <tr>
         <td><asp:Label ID="Label9" runat="server"></asp:Label></td>
         <td> <asp:Label ID="Label10" runat="server"></asp:Label></td></tr>
       <tr>
         <td> <asp:Label ID="Label11" runat="server"></asp:Label></td>
         <td><asp:Label ID="Label12" runat="server"></asp:Label></td></tr>
        <tr>
         <td><asp:Label ID="Label13" runat="server"></asp:Label></td>
         <td><asp:Label ID="Label14" runat="server"></asp:Label></td></tr>
     </table>
    </div>
    <div style="margin-left:auto; margin-right:auto; width:600px; ">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconn %>" SelectCommand="SELECT employee.Id, employee.Fname, employee.Lname, employee.BirthDate, employee.Address, job_salary.JobTitle, job_salary.Salary FROM employee INNER JOIN job_salary ON employee.Id = job_salary.EmpId ORDER BY employee.Id " DeleteCommand="DELETE FROM employee FROM employee INNER JOIN job_salary ON employee.Id = job_salary.EmpId AND employee.Id = @Id" >
        <DeleteParameters>
        <asp:Parameter Name="Id" />
        </DeleteParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
        <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
        <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
        <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" />
        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
        <asp:BoundField DataField="JobTitle" HeaderText="JobTitle" SortExpression="JobTitle" />
        <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
        <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="update.aspx?Id={0}" HeaderText="Edit" NavigateUrl="~/update.aspx" Text="Edit"></asp:HyperLinkField>
        <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="delete.aspx?Id={0}" HeaderText="Delete" NavigateUrl="~/delete.aspx" Text="Delete" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#000066" HorizontalAlign="Left" BackColor="White" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:Button class="button" ID="Button1" runat="server"  Height="45px" OnClick="Button1_Click" Text="insert new data" Width="140px" BorderColor="#E6E9F2" />
    </div>
    </form>
</body>
</html>
