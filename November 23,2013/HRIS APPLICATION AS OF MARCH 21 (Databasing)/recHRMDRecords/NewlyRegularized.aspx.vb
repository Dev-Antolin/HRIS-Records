Imports CrystalDecisions.CrystalReports.Engine
Imports System.Data
Imports MySql.Data.MySqlClient
Imports Microsoft.VisualBasic
Imports Connections
Imports dataEntry
Partial Class recHRMDinfo_Profile_NewlyRegularized
    Inherits System.Web.UI.Page

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
        If cboCategory.Text = "" Then
            Response.Write("<script language=javascript>")
            Response.Write("alert('" & "Please Choose a Category!!" & "')")
            Response.Write("</script>")
            Response.Write("<script language=javascript>")
            Response.Write("window.location = 'NewlyRegularized.aspx'")
            Response.Write("</script>")
            Exit Sub
        End If
        rptViewer.Visible = True
        Dim dsHReports As New dsReport
        Dim oRpt As ReportDocument
        Dim report As String = ""
        Dim office, manDate, sql As String
        Dim dt As New DataTable

        oRpt = New ReportDocument
        dt = dsHReports.Tables("dtNewlyRegular")

        If cboCategory.Text = "" Then
            manDate = ""
            office = ""
        Else
            If cboCategory.Text = "All" Then
                office = "Operation / Support, VisMin"
                manDate = "As of" & cboMonth.Text.ToString & txtyear.Text
            Else
                office = cboCategory.Text.ToString
                manDate = "As of " & cboMonth.Text.ToString & txtyear.Text
            End If
        End If

        If cboCategory.Text = "All" Then
            report = AppDomain.CurrentDomain.BaseDirectory + "Reports\rptNewlyRegularized.rpt"

            sql = "Select (CONCAT(per.LastName,', ', per.FirstName, ' ',LEFT(per.MiddleName,1),'. ')) as Fullname, " & _
                            "date_format(per.DateHired,'%m-%d-%Y') as DateHired, date_format(date_add(per.DateHired, INTERVAL 1 year), '%m-%d-%Y') as DateRegular, off.CodeName as Division, off.Type as Type, recemp.Department as Department " & _
                            "From recpersonalinformation per INNER JOIN recemployeeemployement recemp ON per.EmployeeID = recemp.EmployeeID " & _
                            "INNER JOIN reccompanyoffices off ON off.CostCenter = recemp.CostCenter where recemp.status = 'Regular' "
        Else
            report = AppDomain.CurrentDomain.BaseDirectory + "Reports\rptNewlyReg.rpt"

            sql = "Select (CONCAT(per.LastName,', ', per.FirstName, ' ',LEFT(per.MiddleName,1),'. ')) as Fullname, " & _
                                "date_format(per.DateHired,'%m-%d-%Y') as DateHired, date_format(date_add(per.DateHired, INTERVAL 1 year), '%m-%d-%Y') as DateRegular, off.CodeName as Division, " & _
                                "recemp.Department as Department From recpersonalinformation per INNER JOIN recemployeeemployement " & _
                                "recemp ON per.EmployeeID = recemp.EmployeeID INNER JOIN reccompanyoffices off ON off.CostCenter = recemp.CostCenter " & _
                                "where recemp.status = 'Regular' and off.type = '" & cboCategory.Text.ToString & "' "
        End If
        oRpt.Load(report)
        dt = Execute_DataSet(sql).Tables(0)
        oRpt.SetDataSource(CType(dt, DataTable))

        oRpt.SetParameterValue("title", "Newly Regularized Employee Report")
        oRpt.SetParameterValue("office", office)
        oRpt.SetParameterValue("date", manDate)

        If cboCategory.Text <> "All" Then
            If cboCategory.Text = "Support" Then
                oRpt.SetParameterValue("regDiv", "Division")
            Else
                oRpt.SetParameterValue("regDiv", "Region")
            End If
        End If

        rptViewer.ReportSource = oRpt
        rptViewer.Zoom(90)
        'Call Page_Load(sender, e)
    End Sub
End Class
