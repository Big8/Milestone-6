<%@ Page Title="Lawton Store's Monthly Revenue" Language="VB" MasterPageFile="~/Site.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="Select JanT.&quot;Jan. Total&quot;, FebT.&quot;Feb. Total&quot;, MarT.&quot;Mar. Total&quot;,
      AprT.&quot;Apr. Total&quot;, MayT.&quot;May Total&quot;, JunT.&quot;Jun. Total&quot;,
      JulT.&quot;Jul. Total&quot;, AugT.&quot;Aug. Total&quot;, SepT.&quot;Sep. Total&quot;,
      OctT.&quot;Oct. Total&quot;, NovT.&quot;Nov. Total&quot;, DecT.&quot;Dec. Total&quot;
From (SELECT Sum(Jan.TotalPrice) as &quot;Jan. Total&quot;
      FROM (Select O.OrderID,O.OrderDate,O.TotalPrice
            From Orders O
            WHERE O.OrderDate IN (select unique OrderDate
                                  From Orders
                                  WHERE OrderDate between '01-jan2014' and '31-jan-2014'
                                  )
            AND O.StoreID='1002'
            ) Jan
    ) JanT, (SELECT Sum(Feb.TotalPrice) as &quot;Feb. Total&quot;
            FROM (Select O.OrderID,O.OrderDate,O.TotalPrice
                  From Orders O
                  WHERE O.OrderDate IN (select unique OrderDate
                                        From Orders
                                        WHERE OrderDate between '01-feb-2014' and '28-feb-2014'
                                        )
                  AND O.StoreID='1002'
                  ) Feb
    ) FebT, (SELECT Sum(Mar.TotalPrice) as &quot;Mar. Total&quot;
            FROM (Select O.OrderID,O.OrderDate,O.TotalPrice
                  From Orders O
                  WHERE O.OrderDate IN (select unique OrderDate
                                        From Orders
                                        WHERE OrderDate between '01-Mar-2014' and '31-Mar-2014'
                                        )
                  AND O.StoreID='1002'
                  ) Mar
    ) MarT, (SELECT Sum(Apr.TotalPrice) as &quot;Apr. Total&quot;
            FROM (Select O.OrderID,O.OrderDate,O.TotalPrice
                  From Orders O
                  WHERE O.OrderDate IN (select unique OrderDate
                                        From Orders
                                        WHERE OrderDate between '01-Apr-2014' and '30-Apr-2014'
                                        )
                  AND O.StoreID='1002'
                  ) Apr
    ) AprT, (SELECT Sum(May.TotalPrice) as &quot;May Total&quot;
            FROM (Select O.OrderID,O.OrderDate,O.TotalPrice
                  From Orders O
                  WHERE O.OrderDate IN (select unique OrderDate
                                        From Orders
                                        WHERE OrderDate between '01-May-2014' and '31-May-2014'
                                        )
                  AND O.StoreID='1002'
                  ) May
    ) MayT, (SELECT Sum(Jun.TotalPrice) as &quot;Jun. Total&quot;
            FROM (Select O.OrderID,O.OrderDate,O.TotalPrice
                  From Orders O
                  WHERE O.OrderDate IN (select unique OrderDate
                                        From Orders
                                        WHERE OrderDate between '01-Jun-2014' and '30-Jun-2014'
                                        )
                  AND O.StoreID='1002'
                  ) Jun
    )JunT, (SELECT Sum(Jul.TotalPrice) as &quot;Jul. Total&quot;
            FROM (Select O.OrderID,O.OrderDate,O.TotalPrice
                  From Orders O
                  WHERE O.OrderDate IN (select unique OrderDate
                                        From Orders
                                        WHERE OrderDate between '01-Jul-2014' and '31-Jul-2014'
                                        )
                  AND O.StoreID='1002'
                  ) Jul
    ) JulT, (SELECT Sum(Aug.TotalPrice) as &quot;Aug. Total&quot;
            FROM (Select O.OrderID,O.OrderDate,O.TotalPrice
                  From Orders O
                  WHERE O.OrderDate IN (select unique OrderDate
                                        From Orders
                                        WHERE OrderDate between '01-Aug-2014' and '31-Aug-2014'
                                        )
                  AND O.StoreID='1002'
                  ) Aug
    ) AugT, (SELECT Sum(Sep.TotalPrice) as &quot;Sep. Total&quot;
            FROM (Select O.OrderID,O.OrderDate,O.TotalPrice
                  From Orders O
                  WHERE O.OrderDate IN (select unique OrderDate
                                        From Orders
                                        WHERE OrderDate between '01-Sep-2014' and '30-Sep-2014'
                                        )
                  AND O.StoreID='1002'
                  ) Sep
    ) SepT, (SELECT Sum(Oct.TotalPrice) as &quot;Oct. Total&quot;
            FROM (Select O.OrderID,O.OrderDate,O.TotalPrice
                  From Orders O
                  WHERE O.OrderDate IN (select unique OrderDate
                                        From Orders
                                        WHERE OrderDate between '01-Oct-2014' and '31-Oct-2014'
                                        )
                  AND O.StoreID='1002'                      
                  ) Oct
    ) OctT, (SELECT Sum(Nov.TotalPrice) as &quot;Nov. Total&quot;
            FROM (Select O.OrderID,O.OrderDate,O.TotalPrice
                  From Orders O
                  WHERE O.OrderDate IN (select unique OrderDate
                                        From Orders
                                        WHERE OrderDate between '01-Nov-2014' and '30-Nov-2014'
                                        )
                  AND O.StoreID='1002'
                  ) Nov
    ) NovT, (SELECT Sum(Dec.TotalPrice) as &quot;Dec. Total&quot;
            FROM (Select O.OrderID,O.OrderDate,O.TotalPrice
                  From Orders O
                  WHERE O.OrderDate IN (select unique OrderDate
                                        From Orders
                                        WHERE OrderDate between '01-Dec-2014' and '31-Dec-2014'
                                        
                                        )
                  AND O.StoreID='1002'
                  ) Dec
    ) DecT"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Jan. Total" HeaderText="Jan. Total" SortExpression="Jan. Total" />
            <asp:BoundField DataField="Feb. Total" HeaderText="Feb. Total" SortExpression="Feb. Total" />
            <asp:BoundField DataField="Mar. Total" HeaderText="Mar. Total" SortExpression="Mar. Total" />
            <asp:BoundField DataField="Apr. Total" HeaderText="Apr. Total" SortExpression="Apr. Total" />
            <asp:BoundField DataField="May Total" HeaderText="May Total" SortExpression="May Total" />
            <asp:BoundField DataField="Jun. Total" HeaderText="Jun. Total" SortExpression="Jun. Total" />
            <asp:BoundField DataField="Jul. Total" HeaderText="Jul. Total" SortExpression="Jul. Total" />
            <asp:BoundField DataField="Aug. Total" HeaderText="Aug. Total" SortExpression="Aug. Total" />
            <asp:BoundField DataField="Sep. Total" HeaderText="Sep. Total" SortExpression="Sep. Total" />
            <asp:BoundField DataField="Oct. Total" HeaderText="Oct. Total" SortExpression="Oct. Total" />
            <asp:BoundField DataField="Nov. Total" HeaderText="Nov. Total" SortExpression="Nov. Total" />
            <asp:BoundField DataField="Dec. Total" HeaderText="Dec. Total" SortExpression="Dec. Total" />
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
        This table shows the monthly revenue of the Lawton store.
    </p>

</asp:Content>

