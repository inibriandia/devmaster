<%@ Page Title="" Language="C#" MasterPageFile="~/Intro.Master" AutoEventWireup="false" CodeBehind="Produits.aspx.cs" Inherits="Master.Produits" %>

<asp:Content ID="Content1" ContentPlaceHolderID="centreContent" runat="server">
    <asp:GridView ID="ProduitsGridView" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="ProductID" DataSourceID="ProduitsSqlDataSource" EnableModelValidation="True" ForeColor="Black">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ProductID" HeaderText="Numéro de produit" InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
            <asp:BoundField DataField="ProductName" HeaderText="Nom produit" SortExpression="ProductName" />
            <asp:BoundField DataField="SupplierID" HeaderText="Nom fournisseur" SortExpression="SupplierID" />
            <asp:BoundField DataField="CategoryID" HeaderText="Nom catégorie" SortExpression="CategoryID" />
            <asp:BoundField DataField="QuantityPerUnit" HeaderText="Quantité par unité" SortExpression="QuantityPerUnit" />
            <asp:BoundField DataField="UnitPrice" HeaderText="Prix unitaire" SortExpression="UnitPrice" />
            <asp:BoundField DataField="UnitsInStock" HeaderText="Unité en inventaire" SortExpression="UnitsInStock" />
            <asp:BoundField DataField="UnitsOnOrder" HeaderText="Quantité en commande" SortExpression="UnitsOnOrder" />
            <asp:BoundField DataField="ReorderLevel" HeaderText="Niveau de commande" SortExpression="ReorderLevel" />
            <asp:CheckBoxField DataField="Discontinued" HeaderText="Discontinué" SortExpression="Discontinued" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="ProduitsSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Master.Properties.Settings.NorthwindConnectionString %>" DeleteCommand="DELETE FROM Products" SelectCommand="SELECT Products.* FROM Products" UpdateCommand="UPDATE Products SET ProductName =, SupplierID =, CategoryID =, QuantityPerUnit =, UnitPrice =, UnitsInStock =, UnitsOnOrder =, ReorderLevel =, Discontinued ="></asp:SqlDataSource>
</asp:Content>
