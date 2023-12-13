<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="lab-4-bai-tap-2.aspx.cs" Inherits="Lab_4.lab_4_bai_tap_2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div>
            <h3>Tìm USCLN</h3>
            <div>
                <label for="lblA">Nhập số a:</label>
                <asp:TextBox ID="txtA" runat="server"></asp:TextBox>
            </div>
            <div>
                <label for="lblB">Nhập số b:</label>
                <asp:TextBox ID="txtB" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="btnTim" runat="server" Text="Find USCLN" OnClick="btnTim_Click" />
            </div>
            <div>
                <asp:Label ID="lblResult" runat="server" ForeColor="Green"></asp:Label>
            </div>
        </div>
</asp:Content>
