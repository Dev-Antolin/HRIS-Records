
Partial Class recMANAGERinfo_Evaluation_manReceiveEval1
    Inherits System.Web.UI.Page

    Protected Sub cmdBack_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles cmdBack.Click
        Response.Redirect("manReceiveEval1.aspx")
    End Sub

    Protected Sub cmdNext_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles cmdNext.Click
        Response.Redirect("manReceiveEval3.aspx")
    End Sub
End Class
