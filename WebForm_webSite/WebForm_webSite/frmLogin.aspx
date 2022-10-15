<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmLogin.aspx.cs" Inherits="WebForm_webSite.frmLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 117px;
        }
        #login{
            width:300px;
            height:300px;
            margin:auto;
            margin-top:200px;
            border: solid 2px black;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    <div id="login">
        <table style="width: 96%; height: 207px;">
        <tr>
            <td class="auto-style1">logine<br />
                <br />
            </td>
            <td>
                <asp:TextBox ID="txtlogin" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtlogin" ErrorMessage="login est obligatoire" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtlogin" ErrorMessage="le login doit etre un email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style1">Password<br />
            </td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpassword" ErrorMessage="Password inccorect" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Button ID="btn_Connection" runat="server" OnClick="btn_Connection_Click" Text="Connection" Width="93px" />
            </td>
            <td>&nbsp;</td>
            
        </tr>
        
    </table>
        <asp:Label ID="lbl_erorConnection" runat="server" ForeColor="Red" Text="login ou mot de pass inccorect" Visible="False"></asp:Label>
    </div>
    
    </form>
        
</body>
</html>
