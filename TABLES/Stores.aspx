<%@ Page Title="Stores Table" Language="VB" MasterPageFile="~/Site.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="select * from stores"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="STOREID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="STOREID" HeaderText="Store ID" ReadOnly="True" SortExpression="STOREID" />
            <asp:BoundField DataField="STORENAME" HeaderText="Store Name" SortExpression="STORENAME" />
            <asp:BoundField DataField="STORESTREET" HeaderText="Store Street" SortExpression="STORESTREET" />
            <asp:BoundField DataField="STOREUNITNUMBER" HeaderText="Store Unit Num" SortExpression="STOREUNITNUMBER" />
            <asp:BoundField DataField="STORECITY" HeaderText="Store City" SortExpression="STORECITY" />
            <asp:BoundField DataField="STORESTATE" HeaderText="Store State" SortExpression="STORESTATE" />
            <asp:BoundField DataField="STOREZIPCODE" HeaderText="Store Zip Code" SortExpression="STOREZIPCODE" />
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

