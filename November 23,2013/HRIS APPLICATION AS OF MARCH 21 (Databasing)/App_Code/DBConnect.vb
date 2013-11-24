Imports Microsoft.VisualBasic
Imports Connections
Imports System.Data


Public Class DBConnect

    Public cls As New dataEntry
    Public db As New MYDBConnection
    Public resultSet As Integer
    Public dset As New DataSet
    Public constr As String

    Public Sub connectDB(ByVal sSql As String, ByVal sField As String)

        Try
            cls.ReadINI()
            constr = "Data Source =" + cls.linkServer + ";Persist Security Info=False;Initial Catalog=" + cls.LINKDB + ";User ID =" + cls.LINKUSER + ";Password =" + cls.LINKPASS + ";pooling=false"
            db.SetConnectionString(constr)
            resultSet = db.Execute_SQLQuery(sSql)

            'If resultSet = -1 Then
            '    MsgBox(db.GetError)
            'End If

            dset = db.Execute_SQL_DataSet(sSql, sField)

        Catch ex As Exception
            MsgBox(ex.ToString())
        End Try
        
    End Sub

    Public Sub retrieveData(ByVal txtHandler As TextBox, ByVal dTables As Integer, ByVal dRows As Integer, ByVal dItems As Integer)
        Try
            txtHandler.Text = dset.Tables(dTables).Rows(dRows).Item(dItems).ToString
        Catch ex As Exception
            MsgBox("Naa gyud ang error nganhe!")
        End Try

    End Sub
End Class
