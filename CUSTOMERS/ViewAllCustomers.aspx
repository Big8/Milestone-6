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
    
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CUSTID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="CUSTID" HeaderText="Customer ID" ReadOnly="True" SortExpression="CUSTID" />
            <asp:BoundField DataField="CUSTFIRSTNAME" HeaderText="First Name" SortExpression="CUSTFIRSTNAME" />
            <asp:BoundField DataField="CUSTLASTNAME" HeaderText="Last Name" SortExpression="CUSTLASTNAME" />
            <asp:BoundField DataField="CUSTEMAIL" HeaderText="Email" SortExpression="CUSTEMAIL" />
            <asp:BoundField DataField="DATEOFBIRTH" DataFormatString="{0:MM/dd/yyyy}" HeaderText="Date of Birth" SortExpression="DATEOFBIRTH" />
            <asp:CommandField ShowEditButton="True" />
        </Columns>
</asp:GridView>
    
    </asp:Content>

