<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplicationExample.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <b>To jest strona w ASP.NET</b>
        </div>
        <div>
            <asp:Label ID="lblText" runat="server" 
                Text="Kontrolka typu Label z ASP.NET" BorderStyle="Dotted"
                Font-Size="XX-Large" ForeColor="Green"></asp:Label>
        </div>
        <div>
            <p>Informacja na temat request'u:</p>
            <asp:Label ID="lblInfo" runat="server" Text="Label" Font-Size="Large"></asp:Label>
        </div>
        <div>
            Podaj imię: <asp:TextBox ID="tbName" Width="300px" runat="server" MaxLength="100" ToolTip="Wprowadź imię"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
        </div>
        <div>
            <asp:Button ID="btnOK" runat="server" Text="Pokaż imię" OnClick="btnOK_Click" />
        </div>
    </form>
</body>
</html>
