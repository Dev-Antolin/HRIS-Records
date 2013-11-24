
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim curdate As Date
        curdate = Date.Now
        Me.lbltime2.Text = curdate.ToLongDateString
    End Sub

    Protected Sub btnDiscipline_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles btnDiscipline.Click
        Response.Redirect("~/disManagerDiscipline(RMGM)/disCaseApplication.aspx")
    End Sub

    Protected Sub btnEmployee_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles btnEmployee.Click
        Response.Redirect("~/recEmployee/EmployeeProfileInformation.aspx")
    End Sub
End Class

