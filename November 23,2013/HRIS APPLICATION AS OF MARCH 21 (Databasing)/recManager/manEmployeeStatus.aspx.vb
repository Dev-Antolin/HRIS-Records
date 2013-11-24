
Partial Class recMANAGERinfo_Profile_manEmployeeStatus
    Inherits System.Web.UI.Page

    Protected Sub cmdPreview_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles cmdPreview.Click
        imgstatus.Visible = True
        cmdPrint.Visible = True
    End Sub
End Class
