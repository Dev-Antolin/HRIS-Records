Imports Connections
Imports DBConnect
Imports Microsoft.VisualBasic
Imports System.Data

Partial Class recMANAGERinfo_Profile_PersonalInfo
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim a, b As Integer
        Dim inner As Integer
        Dim outer As Integer
        Dim innter As String
        For a = 18 To 35
            drop75.Items.Add(a)
        Next
        For b = 40 To 90
            drop77.Items.Add(b)
        Next
        For outer = 4 To 6
            For inner = 0 To 11
                Math.Round(inner, 2)
                innter = outer & "." & inner
                drop76.Items.Add(innter)
            Next
        Next
        For a = 3 To 20
            Dim perinfo As TextBox = CType(textbox3.FindControl("textbox" & a), TextBox)
            perinfo.ReadOnly = True
        Next
        For a = 21 To 27
            Dim employment As TextBox = CType(textbox21.FindControl("textbox" & a), TextBox)
            employment.ReadOnly = True
        Next
        For a = 28 To 46
            Dim famback As TextBox = CType(textbox28.FindControl("textbox" & a), TextBox)
            famback.ReadOnly = True
        Next
        For a = 47 To 68
            Dim techbackground As TextBox = CType(textbox47.FindControl("textbox" & a), TextBox)
            techbackground.ReadOnly = True
        Next
        textbox69.ReadOnly = True
        For a = 70 To 73
            Dim notification As TextBox = CType(textbox70.FindControl("textbox" & a), TextBox)
            notification.ReadOnly = True
        Next
        For a = 74 To 78
            Dim dropdown As DropDownList = CType(drop74.FindControl("drop" & a), DropDownList)
            dropdown.Enabled = False
        Next
        For a = 1 To 9
            Dim seminar As TextBox = CType(txt1.FindControl("txt" & a), TextBox)
            seminar.ReadOnly = True
        Next
        For a = 1 To 32
            Dim workexp As TextBox = CType(txtwe1.FindControl("txtwe" & a), TextBox)
            workexp.ReadOnly = True
        Next
    End Sub

    Protected Sub textbox1_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles textbox1.TextChanged
        If textbox1.Text = "" Then
            MsgBox("Input Employee first!")
            Exit Sub
        Else
            Dim con As New DBConnect()
            Dim sql As String = "call retrieveEmpRecordss(" & textbox1.Text & ")"
            con.connectDB(Sql, "EmployeeID")

            If con.dset Is Nothing Then
                MsgBox("ID NO. " & textbox1.Text & " was not found")
            Else
                Dim i, s As Integer
                con.retrieveData(textbox1, 0, 0, 0)
                con.retrieveData(textbox2, 0, 0, 1)
                For i = 3 To 20
                    Dim personalinfo As TextBox = CType(textbox3.FindControl("textbox" & i), TextBox)
                    con.retrieveData(personalinfo, 0, 0, i - 1)
                Next
                For i = 21 To 27
                    Dim employement As TextBox = CType(textbox21.FindControl("textbox" & i), TextBox)
                    con.retrieveData(employement, 0, 0, i - 1)
                Next
                For i = 28 To 46
                    Dim family As TextBox = CType(textbox28.FindControl("textbox" & i), TextBox)
                    family.ReadOnly = True
                    con.retrieveData(family, 0, 0, i - 1)
                Next
                For i = 47 To 68
                    Dim technical As TextBox = CType(textbox47.FindControl("textbox" & i), TextBox)
                    con.retrieveData(technical, 0, 0, i - 1)
                Next
                con.retrieveData(textbox69, 0, 0, 68)
                For i = 70 To 73
                    Dim notification As TextBox = CType(textbox70.FindControl("textbox" & i), TextBox)
                    con.retrieveData(notification, 0, 0, i - 1)
                Next
                For i = 74 To 78
                    Dim dropdata As DropDownList = CType(drop74.FindControl("drop" & i), DropDownList)
                    dropdata.SelectedValue = con.dset.Tables(0).Rows(0).Item(i - 1).ToString
                Next
                ''View Children Information
                dgridChildren.DataSource = con.dset.Tables(1)
                dgridChildren.DataBind()

                ''View Siblings Information
                dgridChildren0.DataSource = con.dset.Tables(3)
                dgridChildren0.DataBind()

                ''SEMINARS ---------------------------------------------------------------------
                If con.dset.Tables(2).Rows.Count = "1" Then
                    For i = 1 To 3
                        Dim seminars As TextBox = CType(txt1.FindControl("txt" & i - 1), TextBox)
                        con.retrieveData(seminars, 2, 0, i - 1)
                    Next
                ElseIf con.dset.Tables(2).Rows.Count = "2" Then
                    For i = 1 To 3
                        Dim seminars As TextBox = CType(txt1.FindControl("txt" & i - 1), TextBox)
                        'If seminars.ID > "txt3" Then
                        '    con.retrieveData(seminars, 2, 1, i - 4)
                        'Else
                        '    con.retrieveData(seminars, 2, 0, i - 1)
                        'End If
                    Next
                ElseIf con.dset.Tables(2).Rows.Count = "3" Then
                    For i = 1 To 9
                        Dim seminars As TextBox = CType(txt1.FindControl("txt" & i), TextBox)
                        If seminars.ID > "txt6" Then
                            con.retrieveData(seminars, 2, 2, i - 7)
                        ElseIf seminars.ID > "txt3" Then
                            con.retrieveData(seminars, 2, 1, i - 4)
                        Else
                            con.retrieveData(seminars, 2, 0, i - 1)
                        End If
                    Next
                Else
                    For i = 1 To 9
                        Dim seminars As TextBox = CType(txt1.FindControl("txt" & i), TextBox)
                        seminars.Text = ""
                    Next
                End If
                ''WORK EXPERIENCE---------------------------------------------------------------
                If con.dset.Tables(5).Rows.Count = "1" Then
                    For i = 1 To 8
                        Dim workexperience As TextBox = CType(txtwe1.FindControl("txtwe" & i), TextBox)
                        con.retrieveData(workexperience, 5, 0, i)
                    Next
                ElseIf con.dset.Tables(5).Rows.Count = "2" Then
                    For i = 1 To 16
                        Dim workexperience2 As TextBox = CType(txtwe1.FindControl("txtwe" & i), TextBox)
                        If workexperience2.ID > "txtwe8" Then
                            con.retrieveData(workexperience2, 5, 1, i)
                        Else
                            con.retrieveData(workexperience2, 5, 0, i)
                        End If
                    Next
                ElseIf con.dset.Tables(5).Rows.Count = "3" Then
                    For i = 1 To 24
                        Dim workexperience3 As TextBox = CType(txtwe1.FindControl("txtwe" & i), TextBox)
                        If workexperience3.ID > "txtwe16" Then
                            con.retrieveData(workexperience3, 5, 2, i)
                        ElseIf workexperience3.ID > "txtwe8" Then
                            con.retrieveData(workexperience3, 5, 1, i)
                        Else
                            con.retrieveData(workexperience3, 5, 0, i)
                        End If
                    Next
                ElseIf con.dset.Tables(5).Rows.Count = "4" Then
                    For i = 1 To 32
                        Dim workexperience3 As TextBox = CType(txtwe1.FindControl("txtwe" & i), TextBox)
                        If workexperience3.ID > "txtwe24" Then
                            con.retrieveData(workexperience3, 5, 3, i)
                        ElseIf workexperience3.ID > "txtwe16" Then
                            con.retrieveData(workexperience3, 5, 2, i)
                        ElseIf workexperience3.ID > "txtwe8" Then
                            con.retrieveData(workexperience3, 5, 1, i)
                        Else
                            con.retrieveData(workexperience3, 5, 0, i)
                        End If
                    Next
                Else
                    For i = 1 To 32
                        Dim noworkexp As TextBox = CType(txtwe1.FindControl("txtwe" & i), TextBox)
                        noworkexp.ReadOnly = True
                        noworkexp.Text = ""
                    Next
                End If

                'If con.dset.Tables(6).Rows(0).Item(0).ToString = "Typing" Then
                '    chktyping.Checked = True
                'End If
                If con.dset.Tables(6).Rows.Count = 0 Then
                    chktyping.Checked = False
                    chktyping0.Checked = False
                    chktyping1.Checked = False
                    chksteno.Checked = False
                    chkartwork.Checked = False
                Else

                    For i = 0 To con.dset.Tables(6).Rows.Count - 1
                        For s = i To i
                            Select Case con.dset.Tables(6).Rows(i).Item(0).ToString
                                Case Is = "Typing"
                                    chktyping.Checked = True
                                Case Is = "Steno"
                                    chksteno.Checked = True
                                Case Is = "Art Work"
                                    chkartwork.Checked = True
                                Case Is = "IT/Computer"
                                    chktyping0.Checked = True
                            End Select
                        Next

                    Next
                End If

                For i = 0 To con.dset.Tables(4).Rows.Count - 1
                    If i > 0 Then
                        chkgov.Checked = True
                    End If
                    If i = 0 Then
                        con.retrieveData(txtgov1, 4, 0, 0)
                        con.retrieveData(txtgov2, 4, 0, 1)
                        con.retrieveData(txtgov3, 4, 0, 2)
                    ElseIf i = 1 Then
                        con.retrieveData(txtgov4, 4, 1, 0)
                        con.retrieveData(txtgov5, 4, 1, 1)
                        con.retrieveData(txtgov6, 4, 1, 2)
                        Dim t1 As TextBox = CType(txtmachines0.FindControl("txtmachines0"), TextBox)
                        't1.Text = con.dset.Tables(4).Rows(0).Item(3).ToString
                        Dim t2 As TextBox = CType(txtmachines0.FindControl("txtmachines0"), TextBox)
                        't2.Text = t1.Text + " and " + con.dset.Tables(4).Rows(1).Item(3).ToString
                        txtmachines0.Text = t2.Text
                    End If
                Next
                If con.dset.Tables(4).Rows.Count = 0 Then
                    For i = 1 To 6
                        Dim gov As TextBox = CType(txtgov1.FindControl("txtgov" & i), TextBox)
                        gov.Text = ""
                    Next
                    txtmachines0.Text = ""
                    chkgov.Checked = False
                End If


                ''References -----------------------------------------------------------------
                If con.dset.Tables(7).Rows.Count = "1" Then
                    For i = 1 To 4
                        Dim reference As TextBox = CType(txtref1.FindControl("txtref" & i), TextBox)
                        con.retrieveData(reference, 7, 0, i - 1)
                    Next
                ElseIf con.dset.Tables(7).Rows.Count = "2" Then
                    For i = 1 To 8
                        Dim reference As TextBox = CType(txtref1.FindControl("txtref" & i), TextBox)
                        If reference.ID > "txtref4" Then
                            con.retrieveData(reference, 7, 1, i - 5)
                        Else
                            con.retrieveData(reference, 7, 0, i - 1)
                        End If
                    Next
                ElseIf con.dset.Tables(7).Rows.Count = "3" Then
                    For i = 1 To 12
                        Dim reference As TextBox = CType(txtref1.FindControl("txtref" & i), TextBox)
                        If reference.ID > "txtref8" Then
                            con.retrieveData(reference, 7, 2, i - 9)
                        ElseIf reference.ID > "txtref4" Then
                            con.retrieveData(reference, 7, 1, i - 5)
                        Else
                            con.retrieveData(reference, 7, 0, i - 1)
                        End If
                    Next
                End If


            End If
        End If

    End Sub
End Class
