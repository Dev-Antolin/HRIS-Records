
Partial Class DisDiscipline_disCaseApplication
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub cmdsearch_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles cmdsearch.Click
        Me.pnlrecsearch.Visible = "true"
        Response.Redirect("disCaseStatus2.aspx")
    End Sub
End Class
