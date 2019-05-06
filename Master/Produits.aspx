<%@ Page Title="" Language="C#" MasterPageFile="~/Intro.Master" AutoEventWireup="false" CodeBehind="Produits.aspx.cs" Inherits="Master.Produits" %>

<asp:Content ID="Content1" ContentPlaceHolderID="centreContent" runat="server">
    <asp:GridView ID="ProduitsGridView" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="ProductID" DataSourceID="ProduitsSqlDataSource" EnableModelValidation="True" ForeColor="Black">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" InsertVisible="False" ReadOnly="True" SortExpression="CategoryID" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
            <asp:BoundField DataField="SupplierID" HeaderText="SupplierID" SortExpression="SupplierID" />
            <asp:TemplateField HeaderText="CategoryID" SortExpression="CategoryID">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="CategorieSqlDataSource" DataTextField="CategoryName" DataValueField="CategoryID">
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("CategoryID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="QuantityPerUnit" HeaderText="QuantityPerUnit" SortExpression="QuantityPerUnit" />
            <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
            <asp:BoundField DataField="UnitsInStock" HeaderText="UnitsInStock" SortExpression="UnitsInStock" />
            <asp:BoundField DataField="UnitsOnOrder" HeaderText="UnitsOnOrder" SortExpression="UnitsOnOrder" />
            <asp:BoundField DataField="ReorderLevel" HeaderText="ReorderLevel" SortExpression="ReorderLevel" />
            <asp:CheckBoxField DataField="Discontinued" HeaderText="Discontinued" SortExpression="Discontinued" />
            <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="CategorieSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Master.Properties.Settings.NorthwindConnectionString %>" SelectCommand="SELECT CategoryID, CategoryName FROM Categories"></asp:SqlDataSource>
    <asp:SqlDataSource ID="ProduitsSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Master.Properties.Settings.NorthwindConnectionString %>" DeleteCommand="DELETE FROM Products FROM Products INNER JOIN [Order Details] ON Products.ProductID = [Order Details].ProductID WHERE (Products.ProductID = @productID) AND ([Order Details].ProductID = @productID)" SelectCommand="SELECT Products.ProductID, Products.ProductName, Products.SupplierID, Products.CategoryID, Products.QuantityPerUnit, Products.UnitPrice, Products.UnitsInStock, Products.UnitsOnOrder, Products.ReorderLevel, Products.Discontinued, Categories.CategoryName FROM Products INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID" UpdateCommand="UPDATE Products SET ProductName = @ProductName, SupplierID = @SupplierID, CategoryID = @CategoryID, QuantityPerUnit = @QuantityPerUnit, UnitPrice = @UnitPrice, UnitsInStock = @UnitsInStock, UnitsOnOrder = @UnitsOnOrder, ReorderLevel = @ReorderLevel, Discontinued = @Discontinued WHERE (ProductID = @productID)">
        <DeleteParameters>
            <asp:Parameter Name="productID" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProductName" />
            <asp:Parameter Name="SupplierID" />
            <asp:Parameter Name="CategoryID" />
            <asp:Parameter Name="QuantityPerUnit" />
            <asp:Parameter Name="UnitPrice" />
            <asp:Parameter Name="UnitsInStock" />
            <asp:Parameter Name="UnitsOnOrder" />
            <asp:Parameter Name="ReorderLevel" />
            <asp:Parameter Name="Discontinued" />
            <asp:Parameter Name="productID" />
        </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
