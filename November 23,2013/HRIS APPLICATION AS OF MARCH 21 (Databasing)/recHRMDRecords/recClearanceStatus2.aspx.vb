
Partial Class recHRMDinfo_recClearanceStatus2
    Inherits System.Web.UI.Page

    Protected Sub cmdNext_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles cmdNext.Click
        Response.Redirect("recClearanceStatus3.aspx")
    End Sub

    Protected Sub cmdBack_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles cmdBack.Click
        Response.Redirect("recClearanceStatus1.aspx")
    End Sub
End Class
