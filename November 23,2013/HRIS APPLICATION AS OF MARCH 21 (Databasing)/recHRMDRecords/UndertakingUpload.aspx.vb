Imports CrystalDecisions.CrystalReports.Engine
Imports System.Data
Imports MySql.Data.MySqlClient
Imports Microsoft.VisualBasic
Imports Connections
Imports dataEntry

Partial Class recHRMDinfo_Documents_UndertakingUpload
    Inherits System.Web.UI.Page
    Public cls As New dataEntry
    Public db As New MYDBConnection
    Public constr As String

    Protected Sub cmdUpload_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles cmdUpload.Click


        If txtdate.Text <> "" And txtresource.Text <> "" And cbotype.SelectedValue <> "" Then

            If fUpUnder.HasFile Then
                Try
                    Dim img As Byte() = New Byte(fUpUnder.PostedFile.ContentLength - 1) {}
                    img = fUpUnder.FileBytes

                    InsertingImg(img)

                Catch ex As Exception
                    MsgBox(ex.ToString)
                End Try
            Else
                MsgBox("Please Input and Browse File")
                Exit Sub
            End If
        Else
            MsgBox("Please Input Date, ResourceID and Type!")
            Exit Sub
        End If

    End Sub

    Public Sub InsertingImg(ByVal img As Byte())
        Try
            cls.ReadINI()
            constr = "Data Source =" + cls.linkServer + ";Persist Security Info=False;Initial Catalog=" + cls.LINKDB + ";User ID =" + cls.LINKUSER + ";Password =" + cls.LINKPASS + ";pooling=false"
            db.SetConnectionString(constr)

            Using conn As New MySqlConnection(constr)

                Using cmd As MySqlCommand = conn.CreateCommand()
                    cmd.CommandText = "insert into recundertakings (UtCode, Description, Syscreated, Syscreator, Sysmodified, Sysmodifier, UnderTakingsUpload) values ('" & txtresource.Text & "', '" & cbotype.SelectedValue & "', '" & Format(Convert.ToDateTime(txtdate.Text), "yyyy-MM-dd") & "', '7110', '" & Format(Convert.ToDateTime(txtdate.Text), "yyyy-MM-dd") & "', '7110', ?Img);"
                    cmd.Parameters.Add("?Img", MySqlDbType.Blob).Value = img
                    'cmd.Parameters("@Img").Value = img
                    conn.Open()
                    cmd.ExecuteNonQuery()
                End Using

            End Using
        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub
End Class
