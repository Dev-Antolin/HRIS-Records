
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim curdate As Date
        curdate = Date.Now
        Me.lbltime2.Text = curdate.ToLongDateString
    End Sub
End Class

