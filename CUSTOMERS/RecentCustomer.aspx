<%@ Page Title="Recent Customers" Language="VB" MasterPageFile="~/Site.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="select CU.custid as &quot;Customer ID&quot;, CU.custfirstname as &quot;Customer First Name&quot;, CU.custlastname as &quot;Customer Last Name&quot;, O.orderid as &quot;Order ID&quot;, O.orderdate as &quot;Order Date&quot;
from customers CU, orders O
where O.custid=CU.custid
and O.orderdate &gt;= (sysdate-30)"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Customer ID" HeaderText="Customer ID" SortExpression="Customer ID" />
            <asp:BoundField DataField="Customer First Name" HeaderText="Customer First Name" SortExpression="Customer First Name" />
            <asp:BoundField DataField="Customer Last Name" HeaderText="Customer Last Name" SortExpression="Customer Last Name" />
            <asp:BoundField DataField="Order ID" HeaderText="Order ID" SortExpression="Order ID" />
            <asp:BoundField DataField="Order Date" HeaderText="Order Date" SortExpression="Order Date" />
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

    <br />
    <br />

    <p style="text-align:left; color:#0B3861;">
        This table shows customers who have visited Groovy within 30 days.
    </p>

</asp:Content>

