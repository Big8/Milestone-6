<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="AddCustomer.aspx.vb" Inherits="CUSTOMERS_AddCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <title>Add New Customer</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        InsertCommand="INSERT INTO CUSTOMERS (CUSTID, CUSTFIRSTNAME, CUSTEMAIL, DATEOFBIRTH, CUSTLASTNAME) VALUES (?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"> 
    
    <InsertParameters>
        <asp:Parameter Name="CUSTID" Type="String" />
        <asp:Parameter Name="CUSTFIRSTNAME" Type="String" />
        <asp:Parameter Name="CUSTEMAIL" Type="String" />
        <asp:Parameter Name="DATEOFBIRTH" Type="DateTime" />
        <asp:Parameter Name="CUSTLASTNAME" Type="String" />
    </InsertParameters>

</asp:SqlDataSource>

    <asp:FormView ID="FormView1" runat="server" DataKeyNames="CUSTID" DataSourceID="SqlDataSource1" DefaultMode="Insert" CellPadding="4" ForeColor="#333333" Width="352px">
        <EditItemTemplate>

        </EditItemTemplate>

        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />

        <InsertItemTemplate>
            
            <table>
            
                <tr>
                    <td align="right">Customer ID:</td>
                    <td align="left"><asp:TextBox ID="CUSTIDTextBox" runat="server" Text='<%# Bind("CUSTID") %>' /></td>
                </tr>

                <tr>
                    <td align="right">Customer First Name:</td>
                    <td align="left"><asp:TextBox ID="CUSTFIRSTNAMETextBox" runat="server" Text='<%# Bind("CUSTFIRSTNAME") %>' /></td>
                </tr>
            
                <tr>
                    <td align="right">Customer Last Name:</td>
                    <td align="left"><asp:TextBox ID="CUSTLASTNAMETextBox" runat="server" Text='<%# Bind("CUSTLASTNAME") %>' /></td>
                </tr>
                
                <tr>
                    <td align="right">Customer Email:</td>
                    <td align="left"><asp:TextBox ID="CUSTEMAILTextBox" runat="server" Text='<%# Bind("CUSTEMAIL") %>' /></td>
                </tr>
            
                <tr>
                    <td align="right">Date of Birth:</td>
                    <td align="left"><asp:TextBox ID="DATEOFBIRTHTextBox" runat="server" Text='<%# Bind("DATEOFBIRTH") %>' /></td>
                </tr>

            </table>
            <br />
            <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />

        </InsertItemTemplate>

        <ItemTemplate>

        </ItemTemplate>

        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />

    </asp:FormView>
</asp:Content>

