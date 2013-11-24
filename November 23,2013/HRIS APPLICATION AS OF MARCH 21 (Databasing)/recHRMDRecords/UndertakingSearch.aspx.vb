Imports CrystalDecisions.CrystalReports.Engine
Imports System.Data
Imports MySql.Data.MySqlClient
Imports Microsoft.VisualBasic
Imports Connections
Imports dataEntry
Imports System.IO.FileStream
Imports System.IO
Imports System.Drawing


Partial Class recHRMDinfo_Documents_UndertakingSearch
    Inherits System.Web.UI.Page

    Protected Sub cmdSearch_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles cmdSearch.Click
        Dim con As New DBConnect
        Dim sql As String = "select Syscreated as 'Date', Description as 'Description' from recundertakings where UtCode = '" + txtresource.Text + "';"
        con.connectDB(sql, "employeeid")

        dgridChildren0.DataSource = con.dset
        dgridChildren0.DataBind()

        Dim sql2 As String = "select UndertakingsUpload from recundertakings where UtCode = '" + txtresource.Text + "';"
        con.connectDB(sql2, "Utcode")

        Dim pic As Byte() = CType(con.dset.Tables(0).Rows(0).Item(0), Byte())
        Dim imgName As String = Now.Ticks
        Dim imgStream As Stream = New MemoryStream(pic)
        Dim bmPic As Bitmap = New Bitmap(imgStream)
        Dim im As System.Drawing.Image = bmPic.GetThumbnailImage(180, 180, Nothing, IntPtr.Zero)
        im.Save(Server.MapPath("~\temPic\").ToString() + imgName + ".bmp")

        Image32.ImageUrl = ("~\temPic\").ToString() + imgName + ".bmp"

    End Sub

    Protected Sub cmdBrowse_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles cmdBrowse.Click
        'Dim con As New DBConnect
        'Dim sql As String = "select EmployeeId from recpersonalinformation;"
        'con.connectDB(sql, "employeeid")

        'dgrideval.DataSource = con.dset
        'dgrideval.DataBind()
    End Sub
End Class
