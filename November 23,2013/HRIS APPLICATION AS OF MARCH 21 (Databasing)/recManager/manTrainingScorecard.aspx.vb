
Partial Class recMANAGERinfo_Training_manTrainingScorecard
    Inherits System.Web.UI.Page

    Protected Sub cmdPreview_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles cmdPreview.Click
        imgScoreCard.Visible = True
        cmdPrint.Visible = True
    End Sub
End Class
