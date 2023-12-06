<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bai4.aspx.cs" Inherits="Lab1.Bai4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="Label1" runat="server" Text="Nhập số a:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Nhập số b:"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Giải phương trình bậc nhất ax + b = 0"></asp:Label>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Kết quả là :"></asp:Label>
            <asp:Label ID="ketQua" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Giải phương trình" Width="256px" />

        </div>
    </form>
</body>
</html>
