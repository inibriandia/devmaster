<%@ Page Title="" Language="C#" MasterPageFile="~/Intro.Master" AutoEventWireup="true" CodeBehind="Employes.aspx.cs" Inherits="Master.Employes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="centreContent" runat="server">
    <asp:GridView ID="employesGridView" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" EnableModelValidation="True" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <br />
    <asp:Button ID="obtenirEmployesButton" runat="server" OnClick="obtenirEmployesButton_Click" Text="Obtenir les employés" />
</asp:Content>
