﻿<%@ Page Title="Catering Customers" Language="VB" MasterPageFile="~/Site.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT CFT.&quot;Customer Name&quot;, S.StoreName as &quot;Store Name&quot;, CFT.&quot;# Catering Events&quot;, CFT.&quot;Total Cost&quot;, CFT.&quot;Total Price&quot;
FROM (SELECT CT.ContactFName|| ' ' ||CT.ContactLName as &quot;Customer Name&quot;, CT.StoreID, Count(*) as &quot;# Catering Events&quot;, SUM(CT.NumberAttendees*CT.CostPerPlate) as &quot;Total Cost&quot;, SUM(CT.NumberAttendees*CT.PricePerPlate) as &quot;Total Price&quot;
      FROM (Select E.EventID, E.ContactLName, E.ContactFName, E.StoreID, CE.NumberAttendees, CE.CostPerPlate, CE.PricePerPlate
            FROM Event E, CateringEvents CE
            WHERE E.EventID=CE.EventID
            ) CT
      Group By CT.ContactLName, CT.ContactFName, CT.StoreID
      ) CFT, Stores S
WHERE S.StoreID=CFT.StoreID"></asp:SqlDataSource>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Customer Name" HeaderText="Customer Name" SortExpression="Customer Name" />
            <asp:BoundField DataField="Store Name" HeaderText="Store Name" SortExpression="Store Name" />
            <asp:BoundField DataField="# Catering Events" HeaderText="# Catering Events" SortExpression="# Catering Events" />
            <asp:BoundField DataField="Total Cost" HeaderText="Total Cost" SortExpression="Total Cost" />
            <asp:BoundField DataField="Total Price" HeaderText="Total Price" SortExpression="Total Price" />
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
        This table shows the total number of catering events, total cost to Groovy to put on the events, and total price charged to customer over ALL events, by customer and store.
    </p>

</asp:Content>

