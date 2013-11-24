
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim curdate As Date
        curdate = Date.Now
        Me.lbltime2.Text = curdate.ToLongDateString

    End Sub

    Protected Sub btnAdmin_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles btnAdmin.Click

    End Sub

    Protected Sub btnRecords_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles btnRecords.Click
        Response.Redirect("~/recHRMDRecords/persoInfo.aspx")
    End Sub
End Class

