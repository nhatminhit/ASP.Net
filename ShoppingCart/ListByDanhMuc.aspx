<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ListByDanhMuc.aspx.cs" Inherits="HoangNhatMinh_2019601026.ListByDanhMuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
    Danh mục theo sản phẩm
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="MaTs" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal">
            <ItemTemplate>
                MaTs:
                <asp:Label ID="MaTsLabel" runat="server" Text='<%# Eval("MaTs") %>' />
                <br />
                TenTs:
                <asp:Label ID="TenTsLabel" runat="server" Text='<%# Eval("TenTs") %>' />
                <br />
                Anh:
                <asp:Image ID="AnhLabel" runat="server" ImageUrl='<%#"~/Images/" + Eval("Anh") %>' width="100"/>
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
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLSanpham2ConnectionString %>" 
       SelectCommand="select MaTs,TenTs,s.Mota,Anh,Giatien,Soluong,s.MaDanhmuc,l.MaDanhmuc from Trangsuc s,Danhmuc l where s.MaDanhmuc=l.MaDanhmuc and s.MaDanhmuc=@MaDanhmuc">
        <SelectParameters>
            <asp:QueryStringParameter Name="MaDanhmuc" Type="int32" QueryStringField="MaDanhmuc" />
        </SelectParameters>
        </asp:SqlDataSource>
</asp:Content>