<%@ Page Title="Employees Table" Language="VB" MasterPageFile="~/Site.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="select * from employees"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="EMPID" HeaderText="Employee ID" SortExpression="EMPID" />
            <asp:BoundField DataField="EMPTYPE" HeaderText="Employee Type" SortExpression="EMPTYPE" />
            <asp:BoundField DataField="EMPLASTNAME" HeaderText="Employee Last Name" SortExpression="EMPLASTNAME" />
            <asp:BoundField DataField="EMPFIRSTNAME" HeaderText="Employee First Name" SortExpression="EMPFIRSTNAME" />
            <asp:BoundField DataField="EMPPHONE" HeaderText="Employee Phone" SortExpression="EMPPHONE" />
            <asp:BoundField DataField="EMPEMAIL" HeaderText="Employee Email" SortExpression="EMPEMAIL" />
            <asp:BoundField DataField="EMPHIREDATE" HeaderText="Employee Hire Date" SortExpression="EMPHIREDATE" />
            <asp:BoundField DataField="SEPARATIONDATE" HeaderText="Separation Date" SortExpression="SEPARATIONDATE" />
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
</asp:Content>

