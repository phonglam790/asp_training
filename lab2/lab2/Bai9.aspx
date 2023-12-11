<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bai9.aspx.cs" Inherits="lab2.Bai9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="Css/Lab2-bai9.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
      <div>
    <table>
        <tr class="row-1">
            <th>
                <asp:LinkButton ID="lnkView1" runat="server" Text="Upload tập tin" OnClick="lnkView1_Click" ForeColor="White" /></th>
            <th>
                <asp:LinkButton ID="lnkView2" runat="server" Text="Xem các tập tin được upload" OnClick="lnkView2_Click" ForeColor="White" /></th>
        </tr>
        <tr class="row-2">
            <td colspan="2">
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <div class="file-upload">
                            <asp:FileUpload ID="FileUpload1" runat="server" /></div>
                        <div class="file-upload">
                            <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" /></div>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <asp:ListBox ID="ListBox1" runat="server" Width="100%" />
                    </asp:View>
                </asp:MultiView></td>
        </tr>
    </table>
</div>
    </form>
</body>
</html>
