<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="HoangNhatMinh_2019601026.List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tieude" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <h2>Danh sách<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="trackid" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="trackid" HeaderText="trackid" InsertVisible="False" ReadOnly="True" SortExpression="trackid" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="artist" HeaderText="artist" SortExpression="artist" />
            <asp:BoundField DataField="composer" HeaderText="composer" SortExpression="composer" />
            <asp:BoundField DataField="bytes" HeaderText="bytes" SortExpression="bytes" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
            <asp:BoundField DataField="genreid" HeaderText="genreid" SortExpression="genreid" />
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="return confirm('Bạn có chắc chắn xóa không?')"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydataConnectionString %>" DeleteCommand="DELETE FROM [Tracks] WHERE [trackid] = @trackid" InsertCommand="INSERT INTO [Tracks] ([name], [artist], [composer], [bytes], [price], [phone], [genreid]) VALUES (@name, @artist, @composer, @bytes, @price, @phone, @genreid)" SelectCommand="SELECT * FROM [Tracks]" UpdateCommand="UPDATE [Tracks] SET [name] = @name, [artist] = @artist, [composer] = @composer, [bytes] = @bytes, [price] = @price, [phone] = @phone, [genreid] = @genreid WHERE [trackid] = @trackid">
            <DeleteParameters>
                <asp:Parameter Name="trackid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="artist" Type="String" />
                <asp:Parameter Name="composer" Type="String" />
                <asp:Parameter Name="bytes" Type="Int32" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="genreid" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="artist" Type="String" />
                <asp:Parameter Name="composer" Type="String" />
                <asp:Parameter Name="bytes" Type="Int32" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="genreid" Type="Int32" />
                <asp:Parameter Name="trackid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </h2>
</asp:Content>
