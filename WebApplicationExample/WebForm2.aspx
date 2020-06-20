<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplicationExample.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:BulletedList ID="BulletedList1" runat="server">
                <asp:ListItem>Opcja A</asp:ListItem>
                <asp:ListItem>Opcja B</asp:ListItem>
                <asp:ListItem>Opcja C</asp:ListItem>
            </asp:BulletedList>
        </div>
        <div>
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Stawka VAT 23%" Checked="True" />
        </div>
        <div>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatColumns="2" TextAlign="Left">
                <asp:ListItem Value="A">Opcja A</asp:ListItem>
                <asp:ListItem Value="B">Opcja B</asp:ListItem>
                <asp:ListItem Selected="True" Value="C">Opcja C</asp:ListItem>
                <asp:ListItem Value="D">Opcja D</asp:ListItem>
            </asp:CheckBoxList>
        </div>
        <div>
            <asp:TextBox ID="TextBox1" runat="server" Width="400px"></asp:TextBox>
        </div>
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
        </div>
        <div>
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem Value="RED">Czerwony</asp:ListItem>
                <asp:ListItem Value="GREEN">Zielony</asp:ListItem>
                <asp:ListItem Value="BLUE">Niebieski</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Content/kotki.jpg" Width="250px" />
        </div>
        <div>
            <asp:ListBox ID="ListBox1" runat="server" Rows="10" Width="150px">
                <asp:ListItem Value="0">Stawka 0%</asp:ListItem>
                <asp:ListItem Value="8">Stawka 8%</asp:ListItem>
                <asp:ListItem Value="23">Stawka 23%</asp:ListItem>
            </asp:ListBox>
        </div>
        <div>

            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem Value="rb">Robert B.</asp:ListItem>
                <asp:ListItem Value="ad">Andrzej D.</asp:ListItem>
                <asp:ListItem Value="rt">Rafał T.</asp:ListItem>
            </asp:RadioButtonList>

        </div>
        <div>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
        <div>
            <asp:Button ID="Button1" runat="server" Text="Wyślij" />
        </div>
    </form>
</body>
</html>
