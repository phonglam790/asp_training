<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bai5.aspx.cs" Inherits="lab2.Bai5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="Css/Lab2-bai5.css" rel="stylesheet" />
   
</head>
<body>
    <form id="form1" runat="server">
       <div>
     <table>
         <tr class="row-1">
             <td colspan="2" class="auto-style1">ĐƠN ĐẶT HÀNG</td>
         </tr>
         <tr class="row-2">
             <td colspan="2">
                 <div class="form-row">
                     <div class="form-column">
                         <asp:Label ID="label_hoTen" runat="server" Text="Khách hàng:"></asp:Label>
                     </div>
                     <div class="form-column">
                         <asp:TextBox ID="textbox_hoTen" runat="server"></asp:TextBox>
                     </div>
                 </div>
                 <div class="form-row">
                     <div class="form-column">
                         <asp:Label ID="label1" runat="server" Text="Địa chỉ:"></asp:Label>
                     </div>
                     <div class="form-column">
                         <asp:TextBox ID="textbox_diaChi" runat="server"></asp:TextBox>
                     </div>
                 </div>
                 <div class="form-row">
                     <div class="form-column">
                         <asp:Label ID="label2" runat="server" Text="Mã số thuế:"></asp:Label>
                     </div>
                     <div class="form-column">
                         <asp:TextBox ID="textbox_maSoThue" runat="server"></asp:TextBox>
                     </div>
                 </div>
             </td>
         </tr>
         <tr class="row-3">
             <td>
                 <asp:Label ID="Label3" runat="server" Text="Chọn các loại bánh sau:" Font-Bold="True" ForeColor="#4c6d52"></asp:Label>
                 <div>
                     <asp:DropDownList ID="ddlDisplayMode" runat="server" Width="100%">
                         <asp:ListItem Text="Hamburger" Value="1" />
                         <asp:ListItem Text="Bánh bò nướng" Value="2" />
                         <asp:ListItem Text="Paté chauds" Value="3" />
                         <asp:ListItem Text="Bánh Croissant bơ" Value="4" />
                     </asp:DropDownList>
                     <div>
                         <asp:Label ID="Label5" runat="server" Text="Số lượng: "></asp:Label>
                         <asp:TextBox ID="textbox_soLuong" runat="server"></asp:TextBox>
                         cái
                     </div>
                     <div>
                         <asp:Label ID="label_error" runat="server" ForeColor="Red"></asp:Label>
                     </div>
                     <div>
                         <asp:Button ID="Button2" runat="server" Text=">" OnClick="Button2_Click" />
                     </div>
                 </div>
             </td>
             <td class="auto-style2">
                 <asp:Label ID="Label4" runat="server" Text="Danh sách bánh được đặt:" Font-Bold="True" ForeColor="#4c6d52"></asp:Label>
                 <div>
                     <asp:ListBox ID="ListBox1" runat="server" Width="80%"></asp:ListBox>
                     <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/thung_rac.jpg" Height="20px" Width="20px" OnClick="ImageButton1_Click" />
                 </div>
             </td>
         </tr>
         <tr class="row-4">
             <td colspan="2">
                 <asp:Button ID="Button1" runat="server" Text="In đơn đặt hàng" BackColor="#66FF66" BorderColor="#006600" ForeColor="#2d3d1d" OnClick="Button1_Click" />
             </td>
         </tr>
     </table>
     <asp:Panel ID="pnlInvoice" runat="server" Visible="false">
         <table class="table-order">
             <tr class="table-order-row-1">
                 <td class="auto-style1">HÓA ĐƠN ĐẶT HÀNG</td>
             </tr>
             <tr>
                 <td class="auto-style1">
                     <div>
                         <strong>Khách hàng: </strong>
                         <asp:Literal ID="litHoTen" runat="server"></asp:Literal>
                     </div>
                     <div>
                         <strong>Địa chỉ:</strong>
                         <asp:Literal ID="litDiaChi" runat="server"></asp:Literal>
                     </div>
                     <div>
                         <strong>Mã số thuế:</strong>
                         <asp:Literal ID="litMaSoThue" runat="server"></asp:Literal>
                     </div>
                     <div>
                         <strong>Đặt các loại bánh sau:</strong>
                     </div>
                     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%">
                         <Columns>
                             <asp:BoundField DataField="TenBanh" />
                             <asp:BoundField DataField="SoLuong" />
                         </Columns>
                     </asp:GridView>
                 </td>
             </tr>
         </table>
     </asp:Panel>
 </div>
    </form>
</body>
</html>
