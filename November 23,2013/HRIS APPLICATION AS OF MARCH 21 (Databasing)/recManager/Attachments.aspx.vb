
Partial Class recHRMDinfo_Documents_Attachments
    Inherits System.Web.UI.Page

    Protected Sub cmdPreview_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles cmdPreview.Click
        cmdPrint.Visible = True
        imgsample.Visible = True
    End Sub
End Class
