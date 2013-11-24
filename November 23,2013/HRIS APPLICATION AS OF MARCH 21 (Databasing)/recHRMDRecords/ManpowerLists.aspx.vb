Imports CrystalDecisions.CrystalReports.Engine
Imports System.Data
Imports MySql.Data.MySqlClient

Partial Class recHRMDinfo_Profile_ManpowerLists
    Inherits System.Web.UI.Page

    Protected Sub cmdPreview_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles cmdPreview.Click
        'Call Page_Load(sender, e)
        rptViewer.Visible = True
        Dim oRpt As ReportDocument
        Dim report As String = ""
        Dim type, office, manDate As String

        oRpt = New ReportDocument
        type = cboCategory.SelectedItem.ToString

        If cboCategory.Text = "" Then
            manDate = ""
            office = ""
        Else
            office = cboCategory.Text & " VisMin"
            If cboMonth.Text = "" And txtyear.Text = "" Then
                manDate = "from the start"
            ElseIf cboMonth.Text <> "" Then
                If txtyear.Text = "" Then
                    MsgBox("Please specify the year", MsgBoxStyle.Information + MsgBoxStyle.OkOnly, "System Message")
                    manDate = ""
                Else
                    manDate = "As of " & cboMonth.Text & ", " & txtyear.Text
                End If
            ElseIf txtyear.Text <> "" Then
                manDate = "As of " & txtyear.Text
            End If
        End If


        report = AppDomain.CurrentDomain.BaseDirectory + "Reports\rptManPowerList.rpt"
        oRpt.Load(report)

        oRpt.SetParameterValue("title", "Manpower List Update Report")
        oRpt.SetParameterValue("office", office)
        oRpt.SetParameterValue("date", manDate)
        oRpt.SetParameterValue("manType", type)

        rptViewer.ReportSource = oRpt
        rptViewer.Zoom(90)
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
       
    End Sub
End Class
