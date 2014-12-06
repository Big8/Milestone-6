﻿<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=MSDAORA;Data Source=delphi;Password=DataRocks;User ID=MS320076" ProviderName="System.Data.OleDb" SelectCommand="SELECT P.PName|| ' - Size:' ||DS.DrinkSize as &quot;Product Name&quot;,BS.&quot;Qty&quot; as &quot;Qty Sold&quot;
FROM Products P, DrinkSizes DS, (select OD.ProductID, OD.SizeID, SUM(OD.Quantity) as &quot;Qty&quot;
                                From Orders_Details OD, (SELECT O.OrderID, O.CustID
                                                        FROM Orders O
                                                        WHERE O.StoreID='1001'
                                                        ) O
                                WHERE O.OrderID=OD.OrderID
                                Group by OD.ProductID,OD.SizeID
                                ) BS
WHERE P.ProductID=BS.ProductID AND BS.SizeID=DS.SizeID 
ORDER BY &quot;Qty Sold&quot; Desc"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Product Name" HeaderText="Product Name" SortExpression="Product Name" />
            <asp:BoundField DataField="Qty Sold" HeaderText="Qty Sold" SortExpression="Qty Sold" />
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

