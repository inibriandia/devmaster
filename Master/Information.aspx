<%@ Page Title="Information" Culture="auto" UIculture="auto" Language="C#" 
    EnableViewState="true" MasterPageFile="~/Intro.Master" AutoEventWireup="true" 
     CodeBehind="Information.aspx.cs" Inherits="Master.Information"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="centreContent" runat="server">

        <asp:Label ID="nomLabel" runat="server" Text="<%$ Resources:nomLabel.Text %>" ></asp:Label>
&nbsp;:
        <asp:TextBox ID="nomTextBox" runat="server" ></asp:TextBox><br />
        <asp:Label ID="prenomLabel" runat="server" Text="<%$ Resources:prenom %>" ></asp:Label>
&nbsp;:
        <asp:TextBox ID="prenomTextBox" runat="server" ></asp:TextBox><br />
        <asp:Label ID="rueLabel" runat="server" Text="<%$ Resources:rue %>" ></asp:Label>
&nbsp;:
        <asp:TextBox ID="rueTextBox" runat="server" ></asp:TextBox><br />
        <asp:Label ID="villeLabel" runat="server" Text="<%$ Resources:ville %>" ></asp:Label>
&nbsp;:
        <asp:TextBox ID="villeTextBox" runat="server" ></asp:TextBox><br />
        <asp:Label ID="provinceLabel" runat="server" Text="<%$ Resources:province %>" ></asp:Label>
&nbsp;:
        <asp:TextBox ID="provinceTextBox" runat="server" ></asp:TextBox><br />
        <asp:Label ID="codePostalLabel" runat="server" Text="<%$ Resources:codePostal %>" ></asp:Label>
&nbsp;:
        <asp:TextBox ID="codePostalTextBox" runat="server" ></asp:TextBox><br />
        <asp:Label ID="paysLabel" runat="server"  Text="<%$ Resources:pays %>" ></asp:Label>
&nbsp;:
        <asp:TextBox ID="paysTextBox" runat="server"  ></asp:TextBox><br />
        <asp:Label ID="dateNaissanceLabel" runat="server" Text="<%$ Resources:dateNaissance %>"></asp:Label>
&nbsp;:
        <asp:TextBox ID="dateNaissanceTextBox" runat="server"  ></asp:TextBox><br /><br />

        <asp:DropDownList ID="langueDropDownList" runat="server"  AutoPostBack="True" >
            <asp:ListItem Selected="True" >Auto</asp:ListItem>
            <asp:ListItem Value="en-CA" >Langue anglaise</asp:ListItem>
            <asp:ListItem Value="fr-CA" >Langue francaise</asp:ListItem>
        </asp:DropDownList>
</asp:Content>
