<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VisitList.aspx.cs" Inherits="MyDoctor.VisitList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<h3>Lista wizyt</h3>
    <asp:GridView ID="gridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="10" CellSpacing="5" DataKeyNames="id" DataSourceID="sqlDataSource" Font-Size="Medium" ForeColor="#333333" OnRowDataBound="gridView_RowDataBound" Width="100%">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id">
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="fname" HeaderText="Imię" SortExpression="fname" />
            <asp:BoundField DataField="lname" HeaderText="Nazwisko" SortExpression="lname" />
            <asp:BoundField DataField="pesel" HeaderText="PESEL" SortExpression="pesel" />
            <asp:TemplateField HeaderText="E-mail" SortExpression="email">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("email", "mailto:{0}") %>' Text='<%# Eval("email") %>'></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Lekarz" SortExpression="doctor">
                <ItemTemplate>
                    <i>
                        dr <asp:Label ID="Label1" runat="server" Text='<%# GetDoctor(Convert.ToInt32(Eval("doctor")))  %>'></asp:Label>
                    </i>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="card" HeaderText="Nr VIP" SortExpression="card" />
            <asp:BoundField DataField="visit_date" HeaderText="Data" SortExpression="visit_date" />
            <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
            <asp:BoundField DataField="descr" HeaderText="Opis" SortExpression="descr" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="sqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:edoctorConnectionString %>" ProviderName="<%$ ConnectionStrings:edoctorConnectionString.ProviderName %>" SelectCommand="SELECT * FROM visits"></asp:SqlDataSource>
</asp:Content>
