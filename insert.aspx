<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="insert.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>insert</title>
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body bgcolor="#E6E9F2">
    <h2 class="auto-style2"> Record employee information</h2>
    <form id="form1" runat="server" style="margin-left:auto; margin-right:auto; width:600px;">
    <div >
       <table>
          <tr>
           <td>FirstName</td>
            <td >
             <asp:TextBox ID="TextBox1" runat="server" Height="16px"></asp:TextBox> 
            </td> 
            <td>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="enter fname" ForeColor="Red" ControlToValidate="TextBox1" ValidationGroup="insert">*</asp:RequiredFieldValidator>
            </td>            
           </tr>
           <tr>
           <td>LastName</td>
           <td >
            <asp:TextBox ID="TextBox2" runat="server" Height="16px"></asp:TextBox> 
           </td> 
           <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="enter lname" ForeColor="Red" ControlToValidate="TextBox2" ValidationGroup="insert">*</asp:RequiredFieldValidator>
           </td> 
          </tr>
          <tr>
          <td>Address</td>
          <td >
           <asp:TextBox ID="TextBox3" runat="server" Height="16px"></asp:TextBox> 
          </td>
          <td>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="enter address" ForeColor="Red" ControlToValidate="TextBox3" ValidationGroup="insert">*</asp:RequiredFieldValidator>
          </td>
          </tr>
          <tr>
          <td>BirthDate</td>
          <td >
          <asp:TextBox ID="TextBox4" runat="server" Height="16px" placeholder="yyyy-MM-dd"></asp:TextBox> 
          </td>   
          <td>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="TextBox4" ValidationGroup="insert">*</asp:RequiredFieldValidator>
          </td>
          <td>
          <asp:Button ID="Button2" runat="server" Text="Click here" OnClick="Button2_Click" /> </td>    
          </tr> 
          <tr>
          <td>JobTitle</td>
          <td >
          <asp:TextBox ID="TextBox5" runat="server" Height="16px"></asp:TextBox> 
          </td>
          <td>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="TextBox5" ValidationGroup="insert">*</asp:RequiredFieldValidator>
          </td>
          </tr>
          <tr>
          <td>Salary</td>
          <td >
          <asp:TextBox ID="TextBox6" runat="server" Height="16px"></asp:TextBox> 
          </td>
          <td>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="TextBox6" ValidationGroup="insert">*</asp:RequiredFieldValidator>
          </td>
          </tr>
          <tr>
          <td colspan="2" style="text-align: center" >
          <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" Width="133px" ValidationGroup="insert" /> </td>
          </tr>
          </table>
        </div>
          <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged" ShowGridLines="True" Visible="False" Width="220px">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
           </asp:Calendar>
       
    </form>
</body>
</html>
