<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateUser.aspx.cs" Inherits="UpdateUser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h2>HR Comp.</h2>

    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label><!--First Name -->
                    </td>
                    <td>
                        <asp:TextBox ID="fname" runat="server"></asp:TextBox>
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="Field cannot be blank" ControlToValidate="fname" forecolor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ErrorMessage="Field can only contain letters a-z" ValidationExpression="^[a-zA-Z]*$" ControlToValidate="fname" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label><!--Last Name-->
                    </td>
                    <td>
                        <asp:TextBox ID="lname" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ErrorMessage="Field cannot be blank" ControlToValidate="lname" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>          
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ErrorMessage="Field can only contain letters a-z" ControlToValidate="lname" ValidationExpression="^[a-zA-Z]*$" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Email Address"></asp:Label><!--Email Address-->
                    </td>
                    <td>
                        <asp:TextBox ID="email" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ErrorMessage="Field cannot be blank" ControlToValidate="email" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ErrorMessage="Invalid Email Format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label><!--Password-->
                    </td>
                    <td>
                        <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ErrorMessage="Field cannot be blank" ControlToValidate="password" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                            ErrorMessage="Password must be at least 6 characters and contain letters and numbers" ValidationExpression="^.*(?=.{6,})(?=.*[a-zA-Z])[a-zA-Z0-9]+$" ControlToValidate="password" 
                            ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Verify Password"></asp:Label><!--Password Verification-->
                    </td>
                    <td>
                        <asp:TextBox ID="passwordverif" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ErrorMessage="Field cannot be blank"   
                            ControlToValidate="passwordverif" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:CompareValidator ID="RegularExpressionValidator5" runat="server" ControlToCompare="password"
                            ErrorMessage="Passwords do not match" 
                            ControlToValidate="passwordverif" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>     
                        <asp:Label ID="Label6" runat="server" Text="Age"></asp:Label><!--Age-->
                    </td>
                    <td>
                        <asp:TextBox ID="age" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ErrorMessage="Field cannot be blank" ControlToValidate="age" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>

                    </td>
                </tr>
            </table>
        </div>

        <asp:Label ID="Label7" runat="server" Text="Which of the following are you familiar with?"></asp:Label>
            
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" Width="117px">
            <asp:ListItem>C#</asp:ListItem>
            <asp:ListItem>PHP</asp:ListItem>
            <asp:ListItem>.NET</asp:ListItem>
            <asp:ListItem>Javascript</asp:ListItem>
            <asp:ListItem>C++</asp:ListItem>
            <asp:ListItem>python</asp:ListItem>
        </asp:CheckBoxList>

        <asp:Label ID="Label8" runat="server" Text="Select Your City:"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="DropDownList1" ErrorMessage="Select a City" ForeColor="Red" 
            InitialValue="-1"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label9" runat="server" Text="Label">Gender:</asp:Label>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:RadioButtonList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ControlToValidate="RadioButtonList1" ErrorMessage="Must Select a Gender" 
            ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" CausesValidation="False" 
            onclick="Button2_Click" Text="Sign-In" />
    </form>
</body>
</html>
