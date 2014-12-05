<%@ Page Title="CUSTOMERS" Language="VB" MasterPageFile="~/Site.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=MSDAORA;Data Source=delphi;Persist Security Info=True;Password=DataRocks;User ID=MS320076" ProviderName="System.Data.OleDb" SelectCommand="SELECT CFT.&quot;Customer Name&quot;, S.STORENAME AS &quot;Store Name&quot;, CFT.&quot;# Catering Events&quot;, CFT.&quot;Total Cost&quot;, CFT.&quot;Total Price&quot; FROM (SELECT CONTACTFNAME, CONTACTLNAME AS &quot;Customer Name&quot;, STOREID, COUNT(*) AS &quot;# Catering Events&quot;, SUM(NUMBERATTENDEES * COSTPERPLATE) AS &quot;Total Cost&quot;, SUM(NUMBERATTENDEES * PRICEPERPLATE) AS &quot;Total Price&quot; FROM (SELECT E.EVENTID, E.CONTACTLNAME, E.CONTACTFNAME, E.STOREID, CE.NUMBERATTENDEES, CE.COSTPERPLATE, CE.PRICEPERPLATE FROM EVENT E INNER JOIN CATERINGEVENTS CE ON E.EVENTID = CE.EVENTID) CT GROUP BY CONTACTLNAME, CONTACTFNAME, STOREID) CFT INNER JOIN STORES S ON CFT.STOREID = S.STOREID"></asp:SqlDataSource>
</asp:Content>

