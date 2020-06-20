<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisterVisit.aspx.cs" Inherits="MyDoctor.RegisterVisit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.js">
    </script>

    <script type="text/javascript">
        $(function () {
            $("#<%= tbPESEL.ClientID %>").mask("9999999999999");
        });
    </script>
    <h3>Nowa wizyta</h3>
    <table border="0" class="table">
        <tr>
            <td>Imię</td>
            <td>
                <asp:TextBox ID="tbFName" Width="200" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" Display="Dynamic"
                    runat="server" ErrorMessage="Podaj imię" ControlToValidate="tbFName">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Nazwisko</td>
            <td>
                <asp:TextBox ID="tbLName" Width="200" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" Display="Dynamic"
                    runat="server" ErrorMessage="Podaj nazwisko" 
                    ControlToValidate="tbLName">*</asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td>PESEL</td>
            <td>
                <asp:TextBox ID="tbPESEL" Width="200" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" Display="Dynamic"
                    runat="server" ErrorMessage="Podaj PESEL" 
                    ControlToValidate="tbPESEL">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Email</td>
            <td>
                <asp:TextBox ID="tbEmail" Width="200" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ForeColor="Red"
                   ControlToValidate="tbEmail" runat="server" ErrorMessage="Podaj email" Display="Dynamic" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" Display="Dynamic"
                    runat="server" ErrorMessage="Podaj email" 
                    ControlToValidate="tbEmail">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Lekarz</td>
            <td>
                <asp:DropDownList ID="ddDoctor" runat="server">
                    <asp:ListItem Value="-1">-------</asp:ListItem>
                    <asp:ListItem Value="1">Jan Kowalski - Pediatra</asp:ListItem>
                    <asp:ListItem Value="2">Janina Zientek - Dermatolog</asp:ListItem>
                    <asp:ListItem Value="3">Mirosław Baka - Kardiolog</asp:ListItem>
                </asp:DropDownList>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ForeColor="Red"
                    ErrorMessage="Wybierz lekarza" ControlToValidate="ddDoctor" Display="Dynamic"
                    Type="Integer" MinimumValue="1" MaximumValue="99999">*</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td>Data wizyty</td>
            <td>
                <asp:Calendar ID="calVisitDate" runat="server" Height="200px" ShowGridLines="True" Width="300px"></asp:Calendar>
            </td>
        </tr>
        <tr>
            <td>Klient VIP</td>
            <td>
                <asp:CheckBox ID="cbVIP" runat="server" AutoPostBack="True" OnCheckedChanged="cbVIP_CheckedChanged" />
                <br />
                <asp:TextBox ID="tbVIPNumber" runat="server" Visible="false"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnOK" runat="server" Text="Zapisz na wizytę" OnClick="btnOK_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
