<%@ Page Language="VB" AutoEventWireup="false" CodeFile="LogIn.aspx.vb" Inherits="LogIn" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Log In</title>
</head>
<body bgcolor="gainsboro" background="../images/log-ing.gif" style="background-repeat:no-repeat; width:98%;
    background-position:center; margin:0 auto; padding:0;">
    <form id="login" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <div style="height: 181px; background-color:#CD1C1B; width: 340px; margin-bottom:360px; margin-left:805px; margin-top:160px;">    
        <table style="width:98%;">
        
            <tr>
                <td align="right" width="50px">
                    <asp:Image ID="Image1" runat="server" Height="30px" 
                        ImageUrl="~/images/security.png" Width="41px" />
                </td>
                <td style="color:White; font-family:Arial; font-size:27px;" class="style3">
                    Login</td>
                <td>
                </td>
            </tr>
        </table>
    
        <br />
        <table style="width:97%;" cellspacing="5px">
            <tr>
                <td style="font-size:15px; color:White; font-family:Arial; font-weight:700;" 
                    align="right" width="100px">
                    Username</td>
                <td>
                    <asp:TextBox ID="txtuser" runat="server" Width="218px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-size:15px; color:White; font-family:Arial; font-weight:700;" align="right">
                    Password </td>
                <td>
                    <asp:TextBox ID="txtpass" runat="server" Width="218px" TextMode="Password" 
                        Wrap="False"></asp:TextBox>
                </td>
            </tr>
        </table>
    
        <table style="width:97%;">
            <tr>
                <td width="240px">
                    &nbsp;</td>
                <td><a runat="server">
                    <asp:ImageButton ID="cmdLogin" runat="server" Height="26px" 
                        ImageUrl="~/LogIn/login.gif" onmouseover="this.src='loginHover.gif'"
                        onmouseout="this.src='login.gif'"/></a>
                   
                    
                </td>
            </tr>
        </table>
        <br />
    
    </div>
    </form>
</body>
</html>
