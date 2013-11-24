
Partial Class recHRMDinfo_recClearanceStatus3
    Inherits System.Web.UI.Page

    Protected Sub cmdBack_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles cmdBack.Click
        Response.Redirect("recClearanceStatus2.aspx")
    End Sub

    Protected Sub cmdPrint_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles cmdPrint.Click
        Response.Redirect("recClearanceStatus4.aspx")
    End Sub
End Class
