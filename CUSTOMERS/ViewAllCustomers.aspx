<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="ViewAllCustomers.aspx.vb" Inherits="CUSTOMERS_ViewAllCustomers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <title>View All Customers</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        DeleteCommand="DELETE FROM CUSTOMERS WHERE CUSTID = ?" 
        InsertCommand="INSERT INTO CUSTOMERS (CUSTID, CUSTLASTNAME, CUSTFIRSTNAME, CUSTEMAIL, DATEOFBIRTH) VALUES (?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
        SelectCommand="SELECT CUSTID, CUSTLASTNAME, CUSTFIRSTNAME, CUSTEMAIL, DATEOFBIRTH FROM CUSTOMERS" 
        UpdateCommand="UPDATE CUSTOMERS SET CUSTLASTNAME = ?, CUSTFIRSTNAME = ?, CUSTEMAIL = ?, DATEOFBIRTH = ? WHERE CUSTID = ?">

        <DeleteParameters>
            <asp:Parameter Name="CUSTID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CUSTID" Type="String" />
            <asp:Parameter Name="CUSTLASTNAME" Type="String" />
            <asp:Parameter Name="CUSTFIRSTNAME" Type="String" />
            <asp:Parameter Name="CUSTEMAIL" Type="String" />
            <asp:Parameter Name="DATEOFBIRTH" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CUSTLASTNAME" Type="String" />
            <asp:Parameter Name="CUSTFIRSTNAME" Type="String" />
            <asp:Parameter Name="CUSTEMAIL" Type="String" />
            <asp:Parameter Name="DATEOFBIRTH" Type="DateTime" />
            <asp:Parameter Name="CUSTID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CUSTID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="CUSTID" HeaderText="Customer ID" ReadOnly="True" SortExpression="CUSTID" />
            <asp:BoundField DataField="CUSTFIRSTNAME" HeaderText="First Name" SortExpression="CUSTFIRSTNAME" />
            <asp:BoundField DataField="CUSTLASTNAME" HeaderText="Last Name" SortExpression="CUSTLASTNAME" />
            <asp:BoundField DataField="CUSTEMAIL" HeaderText="Email" SortExpression="CUSTEMAIL" />
            <asp:BoundField DataField="DATEOFBIRTH" DataFormatString="{0:MM/dd/yyyy}" HeaderText="Date of Birth" SortExpression="DATEOFBIRTH" />
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
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

