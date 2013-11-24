
Partial Class recHRMDinfo_Profile_Longevity
    Inherits System.Web.UI.Page

    Protected Sub cmdPreview_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles cmdPreview.Click
        Me.img.Visible = True
        Me.cmdPrint.Visible = True
    End Sub
End Class
