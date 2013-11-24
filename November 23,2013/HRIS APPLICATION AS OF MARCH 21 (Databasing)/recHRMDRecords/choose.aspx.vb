Imports Connections
Imports System.Data
Imports Microsoft.VisualBasic
Imports DBConnect

Partial Class recHRMDRecords_choose
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim i As Integer
        Dim con As New DBConnect()
        Dim sql As String = "SELECT ChildName, ChildAge FROM hris.recchildren WHERE EmployeeID = '12064267';"
        con.connectDB(sql, "childname")

        dgchoose.DataSource = con.dset.Tables(0)
        dgchoose.DataBind()

        For i = 0 To dgchoose.Rows.Count - 1
            Dim ddl As DropDownList = CType(dgchoose.Rows(i).FindControl("drop1"), DropDownList)
            'ddl.DataSource = con.dset
            'ddl.DataBind()
            'ddl.DataTextField = "ChildAge"
            'ddl.DataValueField = "ChildAge"
            'ddl.DataSource = con.dset.Tables(6)
            'ddl.DataBind()

            'Dim dr As DataRowView = e.Row.DataItem
            'ddl.SelectedValue = dr("ChildAge").ToString()
        Next

    End Sub

    Protected Sub dgchoose_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles dgchoose.RowDataBound
        'Dim conn As New DBConnect()
        'Dim sql As String = "SELECT ChildName, ChildAge FROM hris.recchildren WHERE EmployeeID = '12064267';"
        'conn.connectDB(sql, "childage")

        'If e.Row.RowType = DataControlRowType.DataRow Then
        '    'For i = 0 To dgchoose.Rows.Count - 1
        '    Dim ddl As DropDownList = CType(e.Row.FindControl("drop1"), DropDownList)
        '    'ddl.DataTextField = "ChildAge"
        '    'ddl.DataValueField = "ChildAge"
        '    'ddl.DataSource = conn.dset.Tables(0)
        '    'ddl.DataBind()

        '    Dim dr As DataRowView = e.Row.DataItem
        '    ddl.SelectedValue = dr("ChildAge").ToString()

        '    If ddl IsNot Nothing Then
        '        ddl.DataSource = conn.dset.Tables(0)
        '        ddl.DataBind()
        '    End If
        '    'Next
        '    'Dim drv As DataRowView = e.Row.DataItem
        '    'Dim child As String = drv("ChildAge").ToString()
        '    'Dim drop As DropDownList = CType(e.Row.FindControl("drop1"), DropDownList)
        '    'drop.DataSource = conn.dset
        '    'drop.DataTextField = "child"
        '    'drop.DataBind()
        '    'drop.Items.FindByText(child).Selected = True
        'End If

    End Sub

    Protected Sub dgchoose_RowEditing(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewEditEventArgs) Handles dgchoose.RowEditing
        dgchoose.EditIndex = e.NewEditIndex
        dgchoose.DataBind()
    End Sub


End Class
