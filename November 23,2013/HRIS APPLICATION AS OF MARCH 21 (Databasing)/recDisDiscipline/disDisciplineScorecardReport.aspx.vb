
Partial Class DisDiscipline_disCaseApplication
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub cmdSearch_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles cmdSearch.Click
        Me.pnlreport.Visible = "true"
        Me.cmdprint.Visible = "true"
    End Sub

    Protected Sub cmdprint_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles cmdprint.Click

    End Sub
End Class
