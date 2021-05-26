<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignIn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign-In</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Email:"></asp:Label>
            </td>
            <td>
            <asp:TextBox ID="email" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
            </td>
        <td>
            <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
    </table>
        
    </div>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
    </form>
</body>
</html>
