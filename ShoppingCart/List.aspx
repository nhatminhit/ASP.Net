<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="HoangNhatMinh_2019601026.List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    Danh sách sản phẩm
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="MaTs" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal">
            <ItemTemplate>
                MaTs:
                <asp:Label ID="MaTsLabel" runat="server" Text='<%# Eval("MaTs") %>' />
                <br />
                TenTs:
                <asp:Label ID="TenTsLabel" runat="server" Text='<%# Eval("TenTs") %>' />
                <br />
                Anh:
                <asp:Image ID="AnhLabel" runat="server" ImageUrl='<%#"~/Images/"+Eval("Anh") %>' Width="100"/>
                <br />
                Mota:
                <asp:Label ID="MotaLabel" runat="server" Text='<%# Eval("Mota") %>' />
                <br />
                Soluong:
                <asp:Label ID="SoluongLabel" runat="server" Text='<%# Eval("Soluong") %>' />
                <br />
                Giatien:
                <asp:Label ID="GiatienLabel" runat="server" Text='<%# Eval("Giatien") %>' />
                <br />
                MaDanhmuc:
                <asp:Label ID="MaDanhmucLabel" runat="server" Text='<%# Eval("MaDanhmuc") %>' />
                <br />
                <a class="btn btn-sm btn-primary"  href='ShoppingCart.aspx?MaTs=<%#  Eval("MaTs")  %>&Tenvd=<%#  Eval("TenTs")  %>&Mota=<%# Eval("Mota")  %>&Giatien=<%#  Eval("Giatien")  %>&action=add'  class="button">Mua  hàng</a>
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLSanpham2ConnectionString %>" SelectCommand="SELECT * FROM [Trangsuc]"></asp:SqlDataSource>
</asp:Content>
