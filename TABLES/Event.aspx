<%@ Page Title="Event Table" Language="VB" MasterPageFile="~/Site.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="select * from event"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="EVENTID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="EVENTID" HeaderText="Event ID" ReadOnly="True" SortExpression="EVENTID" />
            <asp:BoundField DataField="STOREID" HeaderText="Store ID" SortExpression="STOREID" />
            <asp:BoundField DataField="CONTACTFNAME" HeaderText="Contact First Name" SortExpression="CONTACTFNAME" />
            <asp:BoundField DataField="CONTACTLNAME" HeaderText="Contact Last Name" SortExpression="CONTACTLNAME" />
            <asp:BoundField DataField="EVENTSTARTDATE" HeaderText="Event Start Date" SortExpression="EVENTSTARTDATE" />
            <asp:BoundField DataField="EVENTSTARTTIME" HeaderText="Event Start Time" SortExpression="EVENTSTARTTIME" />
            <asp:BoundField DataField="EVENTENDDATE" HeaderText="Event End Date" SortExpression="EVENTENDDATE" />
            <asp:BoundField DataField="EVENTENDTIME" HeaderText="Event End Time" SortExpression="EVENTENDTIME" />
            <asp:BoundField DataField="GROOVYEVENT" HeaderText="Groovy Event" SortExpression="GROOVYEVENT" />
            <asp:BoundField DataField="CATERINGEVENT" HeaderText="Catering Event" SortExpression="CATERINGEVENT" />
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

