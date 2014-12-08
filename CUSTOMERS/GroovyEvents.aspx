<%@ Page Title="Groovy Events Customers" Language="VB" MasterPageFile="~/Site.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=MSDAORA;Data Source=delphi;Password=DataRocks;User ID=MS320076" ProviderName="System.Data.OleDb" SelectCommand="SELECT GFT.&quot;Customer Name&quot;, S.StoreName as &quot;Store Name&quot;, GFT.&quot;# Groovy Events&quot;, GFT.&quot;Total Cost&quot;, GFT.&quot;Total Price&quot;, (GFT.&quot;Total Price&quot;-GFT.&quot;Total Cost&quot;) as &quot;Total Profit&quot;
FROM (SELECT GT.ContactFName|| ' ' ||GT.ContactLName as &quot;Customer Name&quot;, GT.StoreID, Count(*) as &quot;# Groovy Events&quot;, SUM(GT.TotalCost) as &quot;Total Cost&quot;, SUM(GT.TotalPrice) as &quot;Total Price&quot;
      FROM (Select E.EventID, E.ContactLName, E.ContactFName, E.StoreID, GE.TotalCost, GE.TotalPrice
            FROM Event E, GroovyEvents GE
            WHERE E.EventID=GE.EventID
            ) GT
      Group By GT.ContactLName, GT.ContactFName, GT.StoreID
      ) GFT, Stores S
WHERE S.StoreID=GFT.StoreID"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Customer Name" HeaderText="Customer Name" SortExpression="Customer Name" />
            <asp:BoundField DataField="Store Name" HeaderText="Store Name" SortExpression="Store Name" />
            <asp:BoundField DataField="# Groovy Events" HeaderText="# Groovy Events" SortExpression="# Groovy Events" />
            <asp:BoundField DataField="Total Cost" HeaderText="Total Cost" SortExpression="Total Cost" />
            <asp:BoundField DataField="Total Price" HeaderText="Total Price" SortExpression="Total Price" />
            <asp:BoundField DataField="Total Profit" HeaderText="Total Profit" SortExpression="Total Profit" />
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
        The table shows the number of Groovy Events each unique customer name has had, the store that performed the event, and the relating data. Customer can go between two stores, and would be counted twice.
    </p>

</asp:Content>

