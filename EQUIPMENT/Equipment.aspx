<%@ Page Title="Equipment" Language="VB" MasterPageFile="~/Site.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=MSDAORA;Data Source=delphi;Password=DataRocks;User ID=MS320076" ProviderName="System.Data.OleDb" SelectCommand="select E.EquipmentID as &quot;Equipment ID&quot;, E.Description as &quot;Description&quot;, E.EquipName as &quot;Equipment Name&quot;, E.LastSerDate as &quot;Previous Service Date&quot;
From Equipment E, (select MIN(LastSerDate) as &quot;OldestDate&quot;
                  from Equipment
                  Having Min(LastSerDate)&lt;=(sysdate-180)
                  ) ES
WHERE E.LastSerDate=ES.&quot;OldestDate&quot;"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Equipment ID" HeaderText="Equipment ID" SortExpression="Equipment ID" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Equipment Name" HeaderText="Equipment Name" SortExpression="Equipment Name" />
            <asp:BoundField DataField="Previous Service Date" HeaderText="Previous Service Date" SortExpression="Previous Service Date" />
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
        This table shows the previous service date of the equipment.
    </p>

</asp:Content>

