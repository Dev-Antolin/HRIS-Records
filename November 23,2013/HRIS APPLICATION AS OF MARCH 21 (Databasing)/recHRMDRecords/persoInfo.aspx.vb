Imports Microsoft.VisualBasic
Imports Connections
Imports System.Data
Imports DBConnect

Partial Class recHRMDinfo_persoInfo
    Inherits System.Web.UI.Page
    Public chkemp As Integer = 101
    Public chkman As Integer = 102
    Public chkhr As Integer = 103
    Public chkleg As Integer = 104
    Protected Sub cmdsave_click(ByVal sender As Object, ByVal e As System.EventArgs) Handles cmdSave.Click
        Dim con As New DBConnect()
        Dim sql As String = ""
        con.connectDB(sql, "")

        MsgBox("Save Successfully!!!")
    End Sub


    Protected Sub chkEmployee_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkEmployee.CheckedChanged
        If Me.chkEmployee.Checked Then
            Me.chkrecords.Checked = True
            Me.chkPayroll.Checked = True
            Me.chkdiscipline.Checked = True
            Me.chkErecruitment.Checked = False
            Me.chkadministration.Checked = False
            Me.chkManager.Checked = False
            Me.chkHRMD.Checked = False
            Me.chkLegal.Checked = False
            Me.dgvforms.DataSource = Nothing

        Else
            Me.chkrecords.Checked = False
            Me.chkPayroll.Checked = False
            Me.chkdiscipline.Checked = False
            Me.pnlforms.Visible = False

        End If
    End Sub

    Protected Sub chkManager_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkManager.CheckedChanged
        If chkManager.Checked = True Then
            Me.chkrecords.Checked = True
            Me.chkPayroll.Checked = True
            Me.chkdiscipline.Checked = True
            Me.chkErecruitment.Checked = True
            Me.chkadministration.Checked = False
            Me.chkEmployee.Checked = False
            Me.chkHRMD.Checked = False
            Me.chkLegal.Checked = False
            Me.dgvforms.DataSource = Nothing


        Else
            Me.chkrecords.Checked = False
            Me.chkPayroll.Checked = False
            Me.chkdiscipline.Checked = False
            Me.chkErecruitment.Checked = False
            Me.pnlforms.Visible = False

        End If
    End Sub

    Protected Sub chkHRMD_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkHRMD.CheckedChanged
        If Me.chkHRMD.Checked = True Then
            Me.chkrecords.Checked = True
            Me.chkPayroll.Checked = False
            Me.chkdiscipline.Checked = False
            Me.chkErecruitment.Checked = False
            Me.chkadministration.Checked = True
            Me.chkEmployee.Checked = False
            Me.chkManager.Checked = False
            Me.chkLegal.Checked = False
        Else
            Me.chkrecords.Checked = False
            Me.chkadministration.Checked = False
            Me.pnlforms.Visible = False
        End If
    End Sub

    Protected Sub chkLegal_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkLegal.CheckedChanged
        If chkLegal.Checked = True Then
            Me.chkrecords.Checked = False
            Me.chkPayroll.Checked = False
            Me.chkdiscipline.Checked = True
            Me.chkErecruitment.Checked = False
            Me.chkadministration.Checked = False
            Me.chkEmployee.Checked = False
            Me.chkManager.Checked = False
            Me.chkHRMD.Checked = False
        Else
            Me.chkdiscipline.Checked = False
            Me.pnlforms.Visible = False
        End If
    End Sub

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

        Dim i As Integer
        For i = 3 To 20
            Dim dispersonalinfo As TextBox = CType(textbox3.FindControl("textbox" & i), TextBox)
            dispersonalinfo.ReadOnly = True
        Next
        For i = 21 To 27
            Dim disemployement As TextBox = CType(textbox21.FindControl("textbox" & i), TextBox)
            disemployement.ReadOnly = True
        Next
        For i = 28 To 46
            Dim disfamily As TextBox = CType(textbox28.FindControl("textbox" & i), TextBox)
            disfamily.ReadOnly = True
        Next
        For i = 47 To 68
            Dim distechnical As TextBox = CType(textbox47.FindControl("textbox" & i), TextBox)
            distechnical.ReadOnly = True
        Next
        For i = 70 To 73
            Dim disnotification As TextBox = CType(textbox70.FindControl("textbox" & i), TextBox)
            disnotification.ReadOnly = True
        Next
        For i = 74 To 78
            Dim disdropdata As DropDownList = CType(drop74.FindControl("drop" & i), DropDownList)
            disdropdata.Enabled = True
        Next
        For i = 1 To 9
            Dim texts As TextBox = CType(txt1.FindControl("txt" & i), TextBox)
            texts.ReadOnly = True
        Next
        For i = 1 To 32
            Dim noworkexp As TextBox = CType(txtwe1.FindControl("txtwe" & i), TextBox)
            noworkexp.ReadOnly = True
        Next
        For i = 1 To 12
            Dim reference As TextBox = CType(txtref1.FindControl("txtref" & i), TextBox)
            reference.ReadOnly = True
        Next
        For i = 1 To 12
            Dim comreference As TextBox = CType(txtcref1.FindControl("txtcref" & i), TextBox)
            comreference.ReadOnly = True
        Next
        For i = 0 To dgridChildren.Rows.Count - 1
            For a = 1 To 2
                Dim children As TextBox = CType(dgridChildren.Rows(i).FindControl("txtchild" & a), TextBox)
                children.ReadOnly = True
            Next
        Next
        For i = 0 To dgridChildren0.Rows.Count - 1
            For a = 1 To 8
                Dim siblings As TextBox = CType(dgridChildren0.Rows(i).FindControl("txtsiblings" & a), TextBox)
                siblings.ReadOnly = True
            Next
        Next
    End Sub

    Protected Sub chkotherhouse_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkotherhouse.CheckedChanged
        If chkotherhouse.Checked = True Then
            txtothershouse.ReadOnly = True
        Else
            txtothershouse.Text = ""
            txtothershouse.ReadOnly = True
        End If
    End Sub


    Protected Sub chkYesCrime_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkYesCrime.CheckedChanged
        If chkYesCrime.Checked = True Then
            txtIfYesCrime.ReadOnly = True
        Else
            txtIfYesCrime.Text = ""
            txtIfYesCrime.ReadOnly = True
        End If
    End Sub

    Protected Sub chkYesDisease_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkYesDisease.CheckedChanged
        If chkYesDisease.Checked = True Then
            txtIfYesDisease.ReadOnly = True
        Else
            txtIfYesDisease.Text = ""
            txtIfYesDisease.ReadOnly = True
        End If
    End Sub

    Protected Sub chkYesDisability_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkYesDisability.CheckedChanged
        If chkYesDisability.Checked = True Then
            txtIfYesDisability.ReadOnly = True
        Else
            txtIfYesDisability.Text = ""
            txtIfYesDisability.ReadOnly = True
        End If
    End Sub

    Protected Sub txtIDno_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles textbox1.TextChanged
        If textbox1.Text = "" Then
            MsgBox("Input Employee first!")
            Exit Sub
        Else
            Dim con As New DBConnect()
            Dim sql As String = "call retrieveEmpRecordss(" & textbox1.Text & ")"
            con.connectDB(sql, "EmployeeID")

            If con.dset Is Nothing Then
                MsgBox("ID NO. " & textbox1.Text & " was not found")
            Else
                Dim i As Integer
                con.retrieveData(textbox1, 0, 0, 0)
                con.retrieveData(textbox2, 0, 0, 17)
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
                Dim a As Integer
                For a = 0 To dgridChildren.Rows.Count - 1
                    For i = 1 To 2
                        Dim name As TextBox = CType(dgridChildren.Rows(a).FindControl("txtchild" & i), TextBox)
                        name.Text = con.dset.Tables(1).Rows(a).Item(i - 1).ToString
                        name.ReadOnly = True
                    Next
                Next

                ''View Siblings Information
                dgridChildren0.DataSource = con.dset.Tables(3)
                dgridChildren0.DataBind()
                For i = 0 To dgridChildren0.Rows.Count - 1
                    For a = 1 To 8
                        Dim siblings As TextBox = CType(dgridChildren0.Rows(i).FindControl("txtsiblings" & a), TextBox)
                        siblings.Text = con.dset.Tables(3).Rows(i).Item(a - 1).ToString
                        siblings.ReadOnly = True
                    Next
                Next

                ''SEMINARS ---------------------------------------------------------------------
                If con.dset.Tables(2).Rows.Count = "1" Then
                    For i = 1 To 3
                        Dim text As TextBox = CType(txt1.FindControl("txt" & i), TextBox)
                        con.retrieveData(text, 2, 0, i - 1)
                    Next
                ElseIf con.dset.Tables(2).Rows.Count = "2" Then
                    For i = 1 To 3
                        Dim text As TextBox = CType(txt1.FindControl("txt" & i - 1), TextBox)
                        If text.ID > "txt3" Then
                            con.retrieveData(text, 2, 1, i - 4)
                        Else
                            con.retrieveData(text, 2, 0, i - 1)
                        End If
                    Next
                ElseIf con.dset.Tables(2).Rows.Count = "3" Then
                    For i = 1 To 9
                        Dim text As TextBox = CType(txt1.FindControl("txt" & i), TextBox)
                        If text.ID > "txt6" Then
                            con.retrieveData(text, 2, 2, i - 7)
                        ElseIf text.ID > "txt3" Then
                            con.retrieveData(text, 2, 1, i - 4)
                        Else
                            con.retrieveData(text, 2, 0, i - 1)
                        End If
                    Next
                Else
                    For i = 1 To 9
                        Dim texts As TextBox = CType(txt1.FindControl("txt" & i), TextBox)
                        texts.Text = ""
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
                        noworkexp.Text = ""
                    Next
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
                ''Community References -------------------------------------------------------------------------
                If con.dset.Tables(8).Rows.Count = "1" Then
                    For i = 1 To 4
                        Dim reference As TextBox = CType(txtcref1.FindControl("txtcref" & i), TextBox)
                        con.retrieveData(reference, 8, 0, i - 1)
                    Next
                ElseIf con.dset.Tables(8).Rows.Count = "2" Then
                    For i = 1 To 8
                        Dim reference As TextBox = CType(txtref1.FindControl("txtcref" & i), TextBox)
                        If reference.ID > "txtcref4" Then
                            con.retrieveData(reference, 8, 1, i - 5)
                        Else
                            con.retrieveData(reference, 8, 0, i - 1)
                        End If
                    Next
                ElseIf con.dset.Tables(8).Rows.Count = "3" Then
                    For i = 1 To 12
                        Dim reference As TextBox = CType(txtcref1.FindControl("txtcref" & i), TextBox)
                        If reference.ID = "txtcref12" Then
                            con.retrieveData(reference, 8, 2, 3)
                        ElseIf reference.ID = "txtcref11" Then
                            con.retrieveData(reference, 8, 2, 2)
                        ElseIf reference.ID = "txtcref10" Then
                            con.retrieveData(reference, 8, 2, 1)
                        ElseIf reference.ID = "txtcref9" Then
                            con.retrieveData(reference, 8, 2, i - 9)
                        ElseIf reference.ID > "txtcref4" Then
                            con.retrieveData(reference, 8, 1, i - 5)
                        Else
                            con.retrieveData(reference, 8, 0, i - 1)
                        End If
                    Next
                End If


            End If
        End If
    End Sub


    Protected Sub cmdEdit_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles cmdEdit.Click
        If textbox1.Text = "" Then
            MsgBox("Input Employee first!")
            textbox1.ReadOnly = True
            textbox1.Focus()
            Exit Sub
        Else
            Dim con As New DBConnect()
            Dim sql As String = "call retrieveEmpRecord(" & textbox1.Text & ")"
            con.connectDB(sql, "EmployeeID")

            If con.dset Is Nothing Then
                MsgBox("ID NO. " & textbox1.Text & " was not found")
            Else
                Dim i As Integer
                For i = 3 To 20
                    Dim dispersonalinfo As TextBox = CType(textbox3.FindControl("textbox" & i), TextBox)
                    dispersonalinfo.ReadOnly = False
                Next
                For i = 21 To 27
                    Dim disemployement As TextBox = CType(textbox21.FindControl("textbox" & i), TextBox)
                    disemployement.ReadOnly = False
                Next
                For i = 28 To 46
                    Dim disfamily As TextBox = CType(textbox28.FindControl("textbox" & i), TextBox)
                    disfamily.ReadOnly = False
                Next
                For i = 47 To 68
                    Dim distechnical As TextBox = CType(textbox47.FindControl("textbox" & i), TextBox)
                    distechnical.ReadOnly = False
                Next
                For i = 70 To 73
                    Dim disnotification As TextBox = CType(textbox70.FindControl("textbox" & i), TextBox)
                    disnotification.ReadOnly = False
                Next
                For i = 74 To 78
                    Dim disdropdata As DropDownList = CType(drop74.FindControl("drop" & i), DropDownList)
                    disdropdata.Enabled = True
                Next
                For i = 1 To 9
                    Dim texts As TextBox = CType(txt1.FindControl("txt" & i), TextBox)
                    texts.ReadOnly = False
                Next
                For i = 1 To 32
                    Dim noworkexp As TextBox = CType(txtwe1.FindControl("txtwe" & i), TextBox)
                    noworkexp.ReadOnly = False
                Next
                For i = 1 To 12
                    Dim reference As TextBox = CType(txtref1.FindControl("txtref" & i), TextBox)
                    reference.ReadOnly = False
                Next
                For i = 1 To 12
                    Dim comreference As TextBox = CType(txtcref1.FindControl("txtcref" & i), TextBox)
                    comreference.ReadOnly = False
                Next
                For a = 0 To dgridChildren.Rows.Count - 1
                    For i = 1 To 2
                        Dim children As TextBox = CType(dgridChildren.Rows(a).FindControl("txtchild" & i), TextBox)
                        children.ReadOnly = False
                    Next
                Next
                For a = 0 To dgridChildren0.Rows.Count - 1
                    For i = 1 To 8
                        Dim siblings As TextBox = CType(dgridChildren0.Rows(a).FindControl("txtsiblings" & i), TextBox)
                        siblings.ReadOnly = False
                    Next
                Next


            End If

        End If
    End Sub

    Protected Sub linkrec_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles linkrec.Click
        Dim chkrec As Integer = 101

        Dim con As New DBConnect
        If chkEmployee.Checked = True Then
            Dim sql As String = "call retrieveforms('" & chkemp & "', '" & chkrec & "')"
            con.connectDB(sql, "FormName")
        ElseIf chkManager.Checked = True Then
            Dim sql As String = "call retrieveforms('" & chkman & "', '" & chkrec & "')"
            con.connectDB(sql, "FormName")
        ElseIf chkHRMD.Checked = True Then
            Dim sql As String = "call retrieveforms('" & chkhr & "', '" & chkrec & "')"
            con.connectDB(sql, "FormName")
        ElseIf chkLegal.Checked = True Then
            Dim sql As String = "call retrieveforms('" & chkleg & "', '" & chkrec & "')"
            con.connectDB(sql, "FormName")
        End If

        dgvforms.DataSource = con.dset
        dgvforms.DataBind()
        pnlforms.Visible = True


    End Sub

    Protected Sub linkpayroll_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles linkpayroll.Click
        Dim chkpay As Integer = 102

        Dim con As New DBConnect
        If chkEmployee.Checked = True Then
            Dim sql As String = "call retrieveforms('" & chkemp & "', '" & chkpay & "')"
            con.connectDB(sql, "FormName")
        ElseIf chkManager.Checked = True Then
            Dim sql As String = "call retrieveforms('" & chkman & "', '" & chkpay & "')"
            con.connectDB(sql, "FormName")
        ElseIf chkHRMD.Checked = True Then
            Dim sql As String = "call retrieveforms('" & chkhr & "', '" & chkpay & "')"
            con.connectDB(sql, "FormName")
        ElseIf chkLegal.Checked = True Then
            Dim sql As String = "call retrieveforms('" & chkleg & "', '" & chkpay & "')"
            con.connectDB(sql, "FormName")
        End If

        dgvforms.DataSource = con.dset
        dgvforms.DataBind()
        pnlforms.Visible = True

    End Sub

    Protected Sub linkdiscipline_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles linkdiscipline.Click
        Dim chkdis As Integer = 103

        Dim con As New DBConnect
        If chkEmployee.Checked = True Then
            Dim sql As String = "call retrieveforms('" & chkemp & "', '" & chkdis & "')"
            con.connectDB(sql, "FormName")
        ElseIf chkManager.Checked = True Then
            Dim sql As String = "call retrieveforms('" & chkman & "', '" & chkdis & "')"
            con.connectDB(sql, "FormName")
        ElseIf chkHRMD.Checked = True Then
            Dim sql As String = "call retrieveforms('" & chkhr & "', '" & chkdis & "')"
            con.connectDB(sql, "FormName")
        ElseIf chkLegal.Checked = True Then
            Dim sql As String = "call retrieveforms('" & chkleg & "', '" & chkdis & "')"
            con.connectDB(sql, "FormName")
        End If

        dgvforms.DataSource = con.dset
        dgvforms.DataBind()
        pnlforms.Visible = True

    End Sub

    Protected Sub linkerec_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles linkerec.Click
        Dim chkerec As Integer = 104

        Dim con As New DBConnect
        If chkEmployee.Checked = True Then
            Dim sql As String = "call retrieveforms('" & chkemp & "', '" & chkerec & "')"
            con.connectDB(sql, "FormName")
        ElseIf chkManager.Checked = True Then
            Dim sql As String = "call retrieveforms('" & chkman & "', '" & chkerec & "')"
            con.connectDB(sql, "FormName")
        ElseIf chkHRMD.Checked = True Then
            Dim sql As String = "call retrieveforms('" & chkhr & "', '" & chkerec & "')"
            con.connectDB(sql, "FormName")
        ElseIf chkLegal.Checked = True Then
            Dim sql As String = "call retrieveforms('" & chkleg & "', '" & chkerec & "')"
            con.connectDB(sql, "FormName")
        End If

        dgvforms.DataSource = con.dset
        dgvforms.DataBind()
        pnlforms.Visible = True

    End Sub

    Protected Sub cmdNew_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles cmdNew.Click
        textbox2.Text = ""
        textbox1.Text = ""
        textbox1.ReadOnly = True
        Dim i As Integer
        For i = 3 To 20
            Dim newpersonalinfo As TextBox = CType(textbox3.FindControl("textbox" & i), TextBox)
            newpersonalinfo.Text = ""
        Next
        For i = 21 To 27
            Dim newemployement As TextBox = CType(textbox21.FindControl("textbox" & i), TextBox)
            newemployement.Text = ""
        Next
        For i = 28 To 46
            Dim newfamily As TextBox = CType(textbox28.FindControl("textbox" & i), TextBox)
            newfamily.Text = ""
        Next
        For i = 47 To 68
            Dim newtechnical As TextBox = CType(textbox47.FindControl("textbox" & i), TextBox)
            newtechnical.Text = ""
        Next
        For i = 70 To 73
            Dim newnotification As TextBox = CType(textbox70.FindControl("textbox" & i), TextBox)
            newnotification.Text = ""
        Next
        For i = 74 To 78
            Dim newdropdata As DropDownList = CType(drop74.FindControl("drop" & i), DropDownList)
            newdropdata.Text = ""
        Next
        For i = 1 To 9
            Dim texts As TextBox = CType(txt1.FindControl("txt" & i), TextBox)
            texts.Text = ""
        Next
        For i = 1 To 32
            Dim noworkexp As TextBox = CType(txtwe1.FindControl("txtwe" & i), TextBox)
            noworkexp.Text = ""
        Next
        For i = 1 To 12
            Dim reference As TextBox = CType(txtref1.FindControl("txtref" & i), TextBox)
            reference.Text = ""
        Next
        For i = 1 To 12
            Dim comreference As TextBox = CType(txtcref1.FindControl("txtcref" & i), TextBox)
            comreference.Text = ""
        Next
        For a = 0 To dgridChildren.Rows.Count - 1
            For i = 1 To 2
                Dim children As TextBox = CType(dgridChildren.Rows(a).FindControl("txtchild" & i), TextBox)
                children.Text = ""
            Next
        Next
        For a = 0 To dgridChildren0.Rows.Count - 1
            For i = 1 To 8
                Dim siblings As TextBox = CType(dgridChildren0.Rows(a).FindControl("txtsiblings" & i), TextBox)
                siblings.Text = ""
            Next
        Next

    End Sub

    Protected Sub dgridChildren_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles dgridChildren.RowCommand
        Dim dgridChildren As GridView = CType(sender, GridView)
        Select Case e.CommandName
            Case ("SingleClick")
                MsgBox("Test")
        End Select
    End Sub


    Protected Sub chktyping1_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles chktyping1.CheckedChanged
        If chktyping1.Checked = True Then
            txtothers.ReadOnly = True
        Else
            txtothers.Text = ""
            txtothers.ReadOnly = True
        End If
    End Sub

    Protected Sub cmdBrowse_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles cmdBrowse.Click

    End Sub
End Class
