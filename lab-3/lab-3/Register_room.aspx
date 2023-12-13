<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register_room.aspx.cs" Inherits="lab_3.Register_room" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link href="Css/lab3.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
       <div>
     <table>
         <tr>
             <td colspan="3">
                 <div class="row-1-col-1">ĐĂNG KÝ PHÒNG</div>
             </td>
         </tr>
         <tr>
             <td>Họ tên</td>
             <td>
                 <asp:TextBox ID="txtHoTen" runat="server"></asp:TextBox></td>
             <td>
                 <asp:RequiredFieldValidator ID="rfvHoTen" runat="server" ErrorMessage="Nhập họ tên" ControlToValidate="txtHoTen" ForeColor="Red"></asp:RequiredFieldValidator></td>
         </tr>
         <tr>
             <td>Cơ quan</td>
             <td>
                 <asp:TextBox ID="txtCoQuan" runat="server"></asp:TextBox></td>
             <td>
                 <asp:RequiredFieldValidator ID="rfvCoQuan" runat="server" ErrorMessage="Nhập cơ quan" ControlToValidate="txtCoQuan" ForeColor="Red"></asp:RequiredFieldValidator></td>
         </tr>
         <tr>
             <td>E-mail</td>
             <td>
                 <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
             <td>
                 <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Nhập địa chỉ email" ControlToValidate="txtEmail" ValidationExpression="\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b" ForeColor="Red"></asp:RegularExpressionValidator></td>
         </tr>
         <tr>
             <td>Mật khẩu</td>
             <td>
                 <asp:TextBox ID="txtMatKhau" runat="server" TextMode="Password"></asp:TextBox></td>
             <td>
                 <asp:RequiredFieldValidator ID="rfvMatKhau" runat="server" ErrorMessage="Nhập mật khẩu" ControlToValidate="txtMatKhau" ForeColor="Red"></asp:RequiredFieldValidator></td>
         </tr>
         <tr>
             <td>Nhập lại mật khẩu</td>
             <td>
                 <asp:TextBox ID="txtNLMatKhau" runat="server" TextMode="Password"></asp:TextBox></td>
             <td>
                 <asp:RequiredFieldValidator ID="rfvNLMatKhau" runat="server" ErrorMessage="Nhập mật khẩu lần 2" ControlToValidate="txtNLMatKhau" ForeColor="Red"></asp:RequiredFieldValidator>
                 <asp:CompareValidator ID="cmvMatKhau" runat="server" ErrorMessage="Mật khẩu không khớp" ControlToValidate="txtNLMatKhau" ControlToCompare="txtMatKhau" ForeColor="Red"></asp:CompareValidator>
             </td>
         </tr>
         <tr>
             <td>Ngày check in</td>
             <td>
                 <asp:TextBox ID="txtCheckin" runat="server"></asp:TextBox></td>
             <td>
                 <asp:CompareValidator ID="cmvCheckin" runat="server" ErrorMessage="Nhập ngày checkin" ControlToValidate="txtCheckin" Type="Date" Operator="DataTypeCheck" ForeColor="Red"></asp:CompareValidator></td>
         </tr>
         <tr>
             <td>Số ngày ở</td>
             <td>
                 <asp:TextBox ID="txtSoNgay" runat="server"></asp:TextBox></td>
             <td>
                 <asp:CompareValidator ID="cmvSoNgay" runat="server" ErrorMessage="Nhập con số ngày" ControlToValidate="txtSoNgay" Type="Integer" Operator="DataTypeCheck" ForeColor="Red"></asp:CompareValidator></td>
         </tr>
         <tr>
             <td>Loại phòng</td>
             <td>
                 <asp:DropDownList ID="cbxLoaiPhong" runat="server">
                     <asp:ListItem Text="Phòng đơn" Value="1" />
                     <asp:ListItem Text="Phòng đôi" Value="2" />
                     <asp:ListItem Text="Phòng VIP đơn" Value="3" />
                     <asp:ListItem Text="Phòng VIP đôi" Value="4" />
                 </asp:DropDownList>
             </td>
             <td></td>
         </tr>
         <tr> 
             <td colspan="3" style="text-align:center">
                 <asp:Button ID="btnDangKy" runat="server" Text="Đăng ký"  OnClick="btnDangKy_Click"/></td>
         </tr>
         <tr>
             <td colspan="3" style="text-align:center">
                 <asp:Label ID="lblThongBao" runat="server"></asp:Label></td>
         </tr>
         <tr>
             <td colspan="3" style="text-align:center">
                 <asp:ValidationSummary ID="vsTomTatLoi" runat="server" ForeColor="#FF3300" />
             </td>
         </tr>
     </table>
 </div>
    </form>
</body>
</html>
