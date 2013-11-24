
Partial Class recHRMDinfo_Profile_EmployeeStatus
    Inherits System.Web.UI.Page

    Protected Sub cmdPreview_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles cmdPreview.Click
        img.Visible = True
        cmdPrint.Visible = True
    End Sub
End Class
