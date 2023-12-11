<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bai3.aspx.cs" Inherits="lab2.Bai3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link href="Css/Lab2-bai3.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
         <div>
      <table>
          <tr class="row-1">
              <th colspan="2">Xem album các loài hoa</th>
          </tr>
          <tr>
              <td>
                  <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged">
                      <asp:ListItem Text="Hoa bất tử" Value="hoa_bat_tu" />
                      <asp:ListItem Text="Hoa cúc" Value="hoa_cuc" />
                      <asp:ListItem Text="Hoa hồng" Value="hoa_hong" />
                      <asp:ListItem Text="Hoa lan" Value="hoa_lan" />
                      <asp:ListItem Text="Hoa lys" Value="hoa_lys" />
                      <asp:ListItem Text="Hoa súng" Value="hoa_sung" />
                      <asp:ListItem Text="Hoa dâm bụt" Value="hoa_dam_but" />
                  </asp:ListBox>
              </td>
              <td>
                  <asp:Image ID="Image1" runat="server" Width="200px" Height="200px" />
              </td>
          </tr>
      </table>
  </div>
    </form>
</body>
</html>
