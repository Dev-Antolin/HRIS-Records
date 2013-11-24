
Partial Class recMANAGERinfo_Evaluation_manPerformanceEvaluate2
    Inherits System.Web.UI.Page

    Protected Sub cboReason_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles cboReason.SelectedIndexChanged
        If cboReason.Text = "Others" Then
            lblothers.Visible = True
            txtOthers.Visible = True
        Else
            lblothers.Visible = False
            txtOthers.Visible = False
        End If
    End Sub
End Class
