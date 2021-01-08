<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="delete.aspx.cs" Inherits="WebApplication1.deleteaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body bgcolor="#E6E9F2">
    <form id="form1" runat="server">
    <div>
        <p>Do you want to delete employee information ?</p>
    
    </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Confirm" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel" />
    </form>
</body>
</html>
