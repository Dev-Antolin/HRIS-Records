Imports Microsoft.VisualBasic
Imports Connections
Imports System.Data



Public Class dataEntry
    Public Const ini_Name As String = "App_Data\my.ini"
    Public LINKDB As String
    Public LINKUSER As String
    Public LINKPASS As String
    Public linkServer As String
    Public filepath As String

    Public Sub ReadINI()
        Dim str_Path As String = AppDomain.CurrentDomain.BaseDirectory + ini_Name
        Dim rdr As New INIHandler

        'SETTINGS-------------------------------------------------------------------------
        LINKDB = rdr.ReadINI("SERVER SETTINGS", "DB", False, str_Path)
        LINKUSER = rdr.ReadINI("SERVER SETTINGS", "USER", False, str_Path)
        LINKPASS = rdr.ReadINI("SERVER SETTINGS", "PASS", False, str_Path)
        linkServer = rdr.ReadINI("SERVER SETTINGS", "SERVER", False, str_Path)
        filepath = rdr.ReadINI("SERVER SETTINGS", "SERVER", False, str_Path)
        '------------------------------------------------------------------------------------

    End Sub
End Class
