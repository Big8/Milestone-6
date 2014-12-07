
Partial Class CUSTOMERS_AddCustomer
    Inherits System.Web.UI.Page

    Protected Sub FormView1_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles FormView1.ItemInserted

        Response.Redirect("~/CUSTOMERS/ViewAllCustomers.aspx")

    End Sub
End Class
