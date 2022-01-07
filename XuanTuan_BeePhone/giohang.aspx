<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="giohang.aspx.cs" Inherits="XuanTuan_BeePhone.giohang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server">
        <Columns>
            <asp:BoundField DataField="mahang" HeaderText="Mã hàng" />
            <asp:BoundField DataField="tenhang" HeaderText="Tên hàng" />
            <asp:BoundField DataField="dongia" HeaderText="Đơn giá" />
            <asp:BoundField DataField="soluong" HeaderText="Số lượng" />
            <asp:BoundField DataField="thanhtien" HeaderText="Thành tiền" />
        </Columns>
    </asp:GridView>
    <asp:Label ID="lbl_tongtien" runat="server" Text="Label"></asp:Label>
</asp:Content>
