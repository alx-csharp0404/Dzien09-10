﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisterVisit2.aspx.cs" Inherits="MyDoctor.RegisterVisit2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Nowa wizyta - info o chorobie</h3>
    <table class="table" border="0">
        <tr>
            <td colspan="2">
                <b><asp:Label ID="lblDescr" runat="server" Text="Label" Font-Bold="False"></asp:Label></b>
            </td>
        </tr>
        <tr>
            <td>Opis</td>
            <td>
                <asp:TextBox ID="tbDescr" runat="server" Rows="10" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Plik (PNG)</td>
            <td>
                <asp:FileUpload ID="fuImage" runat="server" Width="350px" /></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnOK" runat="server" Text="Zapisz mnie" OnClick="btnOK_Click" /></td>
        </tr>
    </table>
</asp:Content>
