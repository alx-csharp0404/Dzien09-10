<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MyDoctor.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Logowanie</h3>
    <table class="table">
        <tr>
            <td>Login</td>
            <td>
                <asp:TextBox ID="tbLogin" runat="server" Width="250px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Hasło</td>
            <td>
                <asp:TextBox ID="tbPassword" runat="server" TextMode="Password" Width="250px"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblResult" 
                    ForeColor="Red" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
            </td>
        </tr>

    </table>
</asp:Content>
