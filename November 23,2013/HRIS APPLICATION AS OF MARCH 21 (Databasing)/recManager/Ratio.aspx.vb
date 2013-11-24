
Partial Class recMANAGERinfo_Profile_Ratio
    Inherits System.Web.UI.Page

    Protected Sub cmdPreview_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles cmdPreview.Click
        If cboRatio.Text = "" Then

        Else
            imgRatio.Visible = True
            cmdPrint.Visible = True
        End If
    End Sub
End Class
