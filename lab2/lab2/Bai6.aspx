<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bai6.aspx.cs" Inherits="lab2.Bai6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Css/Lab2-bai6.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
    <table>
        <tr class="row-1">
            <td class="auto-style1">Hệ thống các bài tập Các điều khiển cơ bản</td>
        </tr>
        <tr class="row-2">
            <td>
                <asp:BulletedList ID="BulletedList1" runat="server" DisplayMode="LinkButton" BulletStyle="Disc" OnClick="BulletedList1_Click">
                    <asp:ListItem Text="Bài 3.1: Trang đọc báo" Value="~/Bai1b.aspx" />
                    <asp:ListItem Text="Bài 3.2: Trang câu chào" Value="~/bai2.aspx" />
                    <asp:ListItem Text="Bài 3.3: Album các loài hoa" Value="~/Bai3.aspx" />
                    <asp:ListItem Text="Bài 3.4: Trang đơn đặt hàng" Value="~/Bai5.aspx" />
                    <asp:ListItem Text="Bài 3.3: Trang phiếu ý kiến người tiêu dùng" Value="~/Bai4.aspx" />
                </asp:BulletedList>

            </td>
        </tr>
        <tr class="row-3">
            <td>
                <asp:Label ID="Label1" runat="server" Text="Đổi Bullet"></asp:Label>
                <asp:DropDownList ID="ddlDisplayMode" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlDisplayMode_SelectedIndexChanged">
                    <asp:ListItem Text="Số" Value="1" />
                    <asp:ListItem Text="Ký tự thường" Value="2" />
                    <asp:ListItem Text="Ký tự in" Value="3" />
                    <asp:ListItem Text="Hình tròn" Value="4" />
                    <asp:ListItem Text="Hình vuông" Value="5" />
                </asp:DropDownList>
            </td>
        </tr>
    </table>
</div>
    </form>
</body>
</html>
