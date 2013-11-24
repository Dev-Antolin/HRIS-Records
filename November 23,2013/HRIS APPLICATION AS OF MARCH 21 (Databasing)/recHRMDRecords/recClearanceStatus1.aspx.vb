
Partial Class recHRMDinfo_recClearanceStatus1
    Inherits System.Web.UI.Page

    Protected Sub cmdNext_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles cmdNext.Click
        Response.Redirect("recClearanceStatus2.aspx")
    End Sub
End Class
