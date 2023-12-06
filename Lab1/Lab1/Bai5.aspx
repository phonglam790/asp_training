<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bai5.aspx.cs" Inherits="Lab1.Bai5" %>

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
            <asp:Label ID="Label3" runat="server" Text="Nhập số c:"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Giải phương trình bậc 2: ax2 + bx + c = 0"></asp:Label>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Kết quả:"></asp:Label>
            <asp:Label ID="ketQua" runat="server"></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Tính" Width="253px" />
        </div>
    </form>
</body>
</html>
