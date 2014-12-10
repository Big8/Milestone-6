<%@ Page Title="Customers in Dyersville Store" Language="VB" MasterPageFile="~/Site.master" %>

<script runat="server">

    Protected Sub Page_Load(sender As Object, e As EventArgs)

    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT C.CustID AS &quot;Customer ID&quot;, C.CustFirstName|| ' ' ||C.CustLastName AS &quot;Customer Name&quot;, SUM.&quot;CustomerTotal&quot; as &quot;Customer Total&quot;
FROM Customers C, 
    (select Sum(O.TotalPrice) as &quot;CustomerTotal&quot;,O.CustID
    From Orders O
    WHERE O.StoreID='1001'
    group by O.CustID
    order by &quot;CustomerTotal&quot; desc
    ) SUM
WHERE SUM.CustID=C.CustID"></asp:SqlDataSource>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Customer ID" HeaderText="Customer ID" SortExpression="Customer ID" />
            <asp:BoundField DataField="Customer Name" HeaderText="Customer Name" SortExpression="Customer Name" />
            <asp:BoundField DataField="Customer Total" HeaderText="Customer Total" SortExpression="Customer Total" />
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
        This table shows the totals per customer, and lists them in descending order, only for Store 1001 AKA Dyersville store
    </p>

</asp:Content>

