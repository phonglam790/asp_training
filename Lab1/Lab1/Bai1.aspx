<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bai1.aspx.cs" Inherits="Lab1.Bai1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bài 1</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="Label1" runat="server" Text="Nhập số a:"></asp:Label>
            <asp:TextBox ID="txtsoA" runat="server" Width="223px"></asp:TextBox>

        </div>
        <asp:Label ID="Label2" runat="server" Text="Nhập số b:"></asp:Label>
        <asp:TextBox ID="txtsoB" runat="server" Width="219px"></asp:TextBox>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Kết quả:"></asp:Label>
            <asp:Label ID="ketQua" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Tính tổng" />
        </p>
    </form>
</body>
</html>
