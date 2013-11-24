
Imports Connections
Imports DBConnect
Imports System.Data
Imports Microsoft.VisualBasic


Partial Class recMANAGERinfo_Profile_ClearancApproval
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim con As New DBConnect()
        Dim sql As String = "call retrieveempclearanceapp()"
        con.connectDB(sql, "employeeid")

        If con.dset Is Nothing Then
            dgridApproval.DataSource = New DataTable()
            dgridApproval.DataBind()
            'lblmoveinfo.visible = True
        Else
            dgridApproval.DataSource = con.dset
            dgridApproval.DataBind()
        End If

        'Dim com As New DBConnect()
        'Dim querry As String = ""
        'com.connectDB(querry, "")

        'If com.dset Is Nothing Then
        '    dgridApproval.DataSource = New DataTable()
        '    dgridApproval.DataBind()
        'Else
        '    dgridApproval.DataSource = com.dset
        '    dgridApproval.DataBind()
        'End If

    End Sub

    Protected Sub dgmovement_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles dgridApproval.RowCommand

        'Me.movementdetails.Visible = True
        'Dim firstcommand As String = e.CommandName
        Dim currentindex As Integer = Int32.Parse(e.CommandArgument.ToString())
        Dim empID As String = dgridApproval.DataKeys(currentindex).Value
        'Dim DateRequested As String = dgridApproval.DataKeys(currentindex).Value

        Dim con As New DBConnect
        Dim sql As String = "call retrieveempclearanceapplication('" & empID & "')"
        con.connectDB(sql, "clearanceno")

        con.retrieveData(txtClearanceNo, 0, 0, 0)
        con.retrieveData(txtResourceID, 0, 0, 1)
        con.retrieveData(txtName, 0, 0, 2)
        con.retrieveData(txtDesignation, 0, 0, 3)
        con.retrieveData(txtBranch, 0, 0, 4)
        con.retrieveData(txtDateHired, 0, 0, 5)

        con.retrieveData(txtLastDate, 0, 0, 6)

        con.retrieveData(txtDivision, 0, 0, 7)

        con.retrieveData(txtStatus, 0, 0, 8)


    End Sub
End Class

