<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="chitietsp.aspx.cs" Inherits="XuanTuan_BeePhone.chitietsp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" RepeatDirection="Horizontal">
        <AlternatingItemStyle BackColor="PaleGoldenrod" />
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/imgs/"+Eval("hinhanh") %>' Style="width:180px"/>
            <br />
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("tenhang") %>'></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("mota") %>'></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" ForeColor="#FF3300" Text='<%# Eval("dongia") %>'></asp:Label>
            &nbsp;<asp:Label ID="Label4" runat="server" Text="VNĐ"></asp:Label>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Sản phẩm Smart phone của BeePhone bảo hành 12 tháng, ưu đãi giá sốc chỉ với 499.000 VNĐ"></asp:Label>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Số lượng: "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Height="18px" Width="96px"></asp:TextBox>
            <asp:Button ID="btn_muahang" runat="server" Text="Mua hàng" CommandArgument='<%# Eval("mahang") %>' OnClick="btn_muahang_Click" Height="31px" Width="106px" BorderColor="#009900" />
            <br />
            <asp:LinkButton ID="link_giohang" runat="server" OnClick="link_giohang_Click" BorderColor="#FFCC00" BorderStyle="Double" Height="22px" Width="90px">Giỏ hàng</asp:LinkButton>
            <asp:Label ID="lbl1" runat="server" Text="Label"></asp:Label>
        </ItemTemplate>
        <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
    </asp:DataList>
</asp:Content>
