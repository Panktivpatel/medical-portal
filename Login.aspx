<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Medical.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td colspan="4" align="center">LOGIN</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblus" runat="server" Text="User Name"></asp:Label>
                    </td>
                    <td></td>
                    <td colspan="2">
                        <asp:TextBox ID="userid" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblpass" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td></td>
                    <td colspan="2">
                        <asp:TextBox ID="pass" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:Button ID="login" runat="server" Text="Login" OnClick="login_Click"/>
                    &nbsp;
                        <asp:Button ID="register" runat="server" Text="Don't Have Account?" OnClick="register_Click"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:Label ID="lblmsg" runat="server" Text=""> </asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
