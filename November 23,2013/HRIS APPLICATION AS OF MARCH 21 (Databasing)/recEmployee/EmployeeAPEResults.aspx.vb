
Partial Class recEmployee_EmployeeAPEResults
    Inherits System.Web.UI.Page

    Protected Sub cmdview_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles cmdview.Click
        Me.panelape.Visible = "true"
        Me.cmdnext.Visible = "true"
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
End Class
