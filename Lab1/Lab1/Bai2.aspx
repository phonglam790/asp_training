<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bai2.aspx.cs" Inherits="Lab1.Bai2" %>

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

        </div>
        <asp:Label ID="Label3" runat="server" Text="Kết quả: "></asp:Label>
        <asp:Label ID="ketQua" runat="server"></asp:Label>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Tính Tổng" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Tính Hiệu" />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Tính Thương" />
        </p>
    </form>
</body>
</html>
