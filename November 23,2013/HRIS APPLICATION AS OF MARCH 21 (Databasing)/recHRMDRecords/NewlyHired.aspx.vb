Imports CrystalDecisions.CrystalReports.Engine
Imports System.Data
Imports MySql.Data.MySqlClient
Imports Microsoft.VisualBasic
Imports Connections
Imports dataEntry

Partial Class recHRMDinfo_Profile_NewlyHired
    Inherits System.Web.UI.Page

    Dim datehired As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
    End Sub

    Public Shared Function Execute_DataSet(ByVal as_sql As String) As DataSet
        Dim cls As New dataEntry
        cls.ReadINI()
        Dim db As New MYDBConnection
        Dim constr As String = "Data Source =" + cls.linkServer + ";Persist Security Info=False;Initial Catalog=" + cls.LINKDB + ";User ID =" + cls.LINKUSER + ";Password =" + cls.LINKPASS + ";pooling=false"

        db.SetConnectionString(constr)

        Dim ds As New DataSet
        Dim mysqladaptr As MySqlDataAdapter

        Try
            mysqladaptr = New MySqlDataAdapter(as_sql, constr)
            mysqladaptr.Fill(ds, "dataset")
            Execute_DataSet = ds
            mysqladaptr.Dispose()

        Catch ex As Exception
            Throw ex
        Finally

        End Try

    End Function

    Protected Sub cmdPreview_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles cmdPreview.Click
        rptViewer.Visible = True
        Dim oRpt As ReportDocument
        Dim report As String = ""
        Dim office, manDate, sql As String
        Dim dt As New DataTable

        oRpt = New ReportDocument

        If cboCategory.Text = "" Then
            manDate = ""
            office = ""
        Else
            If cboMonth.Text = "" Or txtyear.Text = "" Then
                Response.Write("<script language=javascript>")
                Response.Write("alert('" & "Please specify the month and the year!" & "')")
                Response.Write("</script>")
                Response.Write("<script language=javascript>")
                Response.Write("window.location = 'NewlyHired.aspx'")
                Response.Write("</script>")
                manDate = ""
                Exit Sub
            Else
                manDate = "As of " & cboMonth.Text & " " & txtyear.Text
            End If
        End If

        ConvMonth(cboMonth.Text.ToString)

        report = AppDomain.CurrentDomain.BaseDirectory + "Reports\rptNewlyHired.rpt"

        If cboCategory.Text = "Operation" Then
            sql = "Select distinct convert(per.EmployeeID, char(50)) as ID, per.LastName as LastName, per.FirstName as FirstName, LEFT(per.MiddleName,1) as MI, " & _
                        "per.Gender as Gender, branch.BranchName as Branch, off.CodeName as Region, off.Type as Type " & _
                        "From hris.recpersonalinformation per Inner Join hris.recemployeeemployement emp " & _
                        "ON emp.EmployeeID = per.EmployeeID Inner Join hris.reccompanyoffices off " & _
                        "ON emp.CostCenter = off.CostCenter Inner Join hris.recbranchoffices branch " & _
                        "ON branch.SubCode = off.CostCenter where off.type = '" & cboCategory.Text.ToString & "' and year(per.DateHired) = '" & txtyear.Text & "' and month(per.DateHired)= '" & datehired & "' group by per.EmployeeID"
        Else
            sql = "Select distinct convert(per.EmployeeID, char(50)) as ID, per.LastName as LastName, per.FirstName as FirstName, LEFT(per.MiddleName,1) as MI, " & _
                        "per.Gender as Gender, emp.Department as Branch, off.CodeName as Region, off.Type as Type " & _
                        "From hris.recpersonalinformation per Inner Join hris.recemployeeemployement emp " & _
                        "ON emp.EmployeeID = per.EmployeeID Inner Join hris.reccompanyoffices off " & _
                        "ON emp.CostCenter = off.CostCenter Inner Join hris.recbranchoffices branch " & _
                        "ON branch.SubCode = off.CostCenter where off.type = '" & cboCategory.Text.ToString & "' and year(per.DateHired) = '" & txtyear.Text & "' and month(per.DateHired)= '" & datehired & "' group by per.EmployeeID"
        End If
        oRpt.Load(report)
        dt = Execute_DataSet(sql).Tables(0)
        oRpt.SetDataSource(CType(dt, DataTable))

        oRpt.SetParameterValue("title", "Newly Regularized Employee Report")
        oRpt.SetParameterValue("office", cboCategory.Text.ToString)
        oRpt.SetParameterValue("date", manDate)

        If cboCategory.Text = "Support" Then
            oRpt.SetParameterValue("regDiv", "Division")
            oRpt.SetParameterValue("Branch", "Department")
        Else
            oRpt.SetParameterValue("regDiv", "Region")
            oRpt.SetParameterValue("Branch", "Branch")
        End If

        rptViewer.ReportSource = oRpt
        rptViewer.Zoom(90)
        'If cboCategory.Text = "" Then
        '    Response.Write("<script language=javascript>")
        '    Response.Write("alert('" & "Please Choose a Category!!" & "')")
        '    Response.Write("</script>")
        '    Response.Write("<script language=javascript>")
        '    Response.Write("window.location = 'NewlyHired.aspx'")
        '    Response.Write("</script>")
        '    Exit Sub
        'End If

        'Call Page_Load(sender, e)
    End Sub

    Public Sub ConvMonth(ByVal month As String)

        If month = "January" Then
            datehired = "01"
        End If
        If month = "February" Then
            datehired = "02"
        End If
        If month = "March" Then
            datehired = "03"
        End If
        If month = "April" Then
            datehired = "04"
        End If
        If month = "May" Then
            datehired = "05"
        End If
        If month = "June" Then
            datehired = "06"
        End If
        If month = "July" Then
            datehired = "07"
        End If
        If month = "August" Then
            datehired = "08"
        End If
        If month = "September" Then
            datehired = "09"
        End If
        If month = "October" Then
            datehired = "10"
        End If
        If month = "November" Then
            datehired = "11"
        End If
        If month = "December" Then
            datehired = "12"
        End If
    End Sub
End Class
