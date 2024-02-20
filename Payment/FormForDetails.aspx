<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormForDetails.aspx.cs" Inherits="Medical.Payment.FormForDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment Integration</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label>Order ID: </label>
            <asp:TextBox ID="txtOrder" runat="server"></asp:TextBox>
        </div>
        <div>
            <label>Amount: </label>
            <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
        </div>
        <div>
            <label>Customer Name: </label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </div>
        <div>
            <label>Mobile Number: </label>
            <asp:TextBox ID="txtMobileNumber" runat="server"></asp:TextBox>
        </div>
        <div>
            <label>Email ID: </label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        </div>
        <div>
            <label>Customer Id: </label>
            <asp:TextBox ID="txtCustomer" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" />
        </div>
    </form>
</body>
</html>
