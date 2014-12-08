<%@ Page Title="Orders From Lawton Store" Language="VB" MasterPageFile="~/Site.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=MSDAORA;Data Source=delphi;Password=DataRocks;User ID=MS320076" ProviderName="System.Data.OleDb" SelectCommand="SELECT I.IngredName as &quot;Ingredient Name&quot;, DI.&quot;IngrAmtDemanded&quot; as &quot;Demand of Ingredients&quot;
FROM Ingredients I, (SELECT R.IngredientID, Sum(R.IngrQty*D.&quot;Qty&quot;) as &quot;IngrAmtDemanded&quot;
                    FROM Recipe R, (select OD.ProductID, SUM(OD.Quantity) as &quot;Qty&quot;
                                    From Orders_Details OD, (SELECT O.OrderID, O.CustID
                                                            FROM Orders O
                                                            WHERE O.StoreID='1002'
                                                            ) O
                                    WHERE O.OrderID=OD.OrderID AND OD.SIZEID IS NULL
                                    Group by OD.ProductID,OD.SizeID
                                    ) D 
                    WHERE R.ProductID=D.ProductID
                    Group By R.IngredientID
                    Order By &quot;IngrAmtDemanded&quot; Desc
                    ) DI
WHERE I.INGREDIENTID=DI.IngredientID"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Ingredient Name" HeaderText="Ingredient Name" SortExpression="Ingredient Name" />
            <asp:BoundField DataField="Demand of Ingredients" HeaderText="Demand of Ingredients" SortExpression="Demand of Ingredients" />
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
        This table shows summed demand for each ingredient at the Lawton store.
    </p>

</asp:Content>

