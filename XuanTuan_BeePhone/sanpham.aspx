<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="sanpham.aspx.cs" Inherits="XuanTuan_BeePhone.sanpham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-right: 48px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Sản phẩm</h1>
    <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" CssClass="auto-style1" GridLines="Both" Height="379px" RepeatDirection="Horizontal">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/imgs/"+Eval("hinhanh") %>' Style="width:150px"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("tenhang") %>' BorderColor="#FFCC00" BorderStyle="None"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("mota") %>'></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("dongia") %>' ForeColor="#FF3300"></asp:Label>
            &nbsp;<asp:Label ID="Label4" runat="server" Text="VNĐ"></asp:Label>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("mahang") %>' OnClick="LinkButton2_Click" ForeColor="#009900" >Xem chi tiết</asp:LinkButton>
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
</asp:Content>
