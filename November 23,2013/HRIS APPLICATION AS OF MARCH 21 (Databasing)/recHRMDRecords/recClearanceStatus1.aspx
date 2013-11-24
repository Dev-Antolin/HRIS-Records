<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/HRMasterPage.master"
    AutoEventWireup="false" CodeFile="recClearanceStatus1.aspx.vb" Inherits="recHRMDinfo_recClearanceStatus1"
    Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="width: 195px; height: 374px;">
        <div style="height: 172px">
            <ul style="list-style: none;">
                <li class="label"><a class="name">Resignation Clearance</a></li></ul>
            <br />
            <ul style="list-style: none;">
                <li class="effects2"><a href="recClearCreate.aspx">
                    <asp:Label ID="trainingmod" runat="server" Text="> Create Clearance" Height="16px"
                        Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Imgmanpowerline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a style="color: red; font-size: small;">
                        <asp:Label ID="Label2" runat="server" Text="> Clearance Status" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Image1" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a href="recClearanceCert.aspx">
                        <asp:Label ID="newregular" runat="server" Text="> Clearance Certificate" Height="16px"
                            Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="imgnewline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                </li>
            </ul>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <table style="width: 100%; height: 80px;" cellspacing="2px">
            <tr>
                <td style="width: 15px">
                </td>
                <td style="width: 114px">
                    <asp:Label ID="Label4" runat="server" Text="Resource ID" Font-Size="12px" Font-Names="Arial"
                        ForeColor="Black"></asp:Label>
                </td>
                <td style="width: 207px">
                    <asp:TextBox ID="txtresourceID" runat="server" Font-Names="Arial" Height="16px" Width="176px"></asp:TextBox>
                    <asp:ImageButton ID="cmdBrowse" runat="server" Height="16px" ImageUrl="~/images/searchlens.jpg"
                        Width="20px" />
                </td>
                <td style="width: 32px">
                    &nbsp;
                </td>
                <td style="width: 146px">
                    <asp:Label ID="Label164" runat="server" Text="Clearance No." Font-Size="12px" Font-Names="Arial"
                        ForeColor="Black"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtClearanceNo" runat="server" Font-Names="Arial" Height="16px"
                        Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 114px">
                    <asp:Label ID="Label162" runat="server" Text="Name" Font-Size="12px" Font-Names="Arial"
                        ForeColor="Black"></asp:Label>
                </td>
                <td style="width: 207px">
                    <asp:TextBox ID="txtname" runat="server" Font-Names="Arial" Height="16px" Width="200px"></asp:TextBox>
                </td>
                <td style="width: 32px">
                    &nbsp;
                </td>
                <td style="width: 146px">
                    <asp:Label ID="Label165" runat="server" Text="Date Hired" Font-Size="12px" Font-Names="Arial"
                        ForeColor="Black"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDateHired" runat="server" Font-Names="Arial" Height="16px" Width="200px"
                        ReadOnly="True"></asp:TextBox>
                    <asp:CalendarExtender ID="calExDateHired" runat="server" TargetControlID="txtDateHired">
                    </asp:CalendarExtender>
                </td>
            </tr>
            <tr>
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 114px">
                    <asp:Label ID="Label168" runat="server" Text="Department/Branch" Font-Size="12px"
                        Font-Names="Arial" ForeColor="Black"></asp:Label>
                </td>
                <td style="width: 207px">
                    <asp:TextBox ID="txtbranch" runat="server" Font-Names="Arial" Height="16px" Width="200px"></asp:TextBox>
                </td>
                <td style="width: 32px">
                    &nbsp;
                </td>
                <td style="width: 146px">
                    <asp:Label ID="Label167" runat="server" Text="Division/Region" Font-Size="12px" Font-Names="Arial"
                        ForeColor="Black"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtdivReg0" runat="server" Font-Names="Arial" Height="16px" Width="200px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table style="width: 100%;">
            <tr>
                <td style="text-align: center">
                    <hr style="border: 1px solid #000000; font-family: Arial; background-color: #000000;
                        width: 780; float: inherit" />
                </td>
            </tr>
        </table>
        <br />
        <table style="width: 100%; height: 337px;">
            <tr style="text-align: center">
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 17px">
                    &nbsp;
                </td>
                <td style="width: 198px">
                    &nbsp;
                </td>
                <td style="width: 149px">
                    <asp:Label ID="Label172" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="12px"
                        ForeColor="Black" Text="Accountability"></asp:Label>
                </td>
                <td style="width: 202px">
                    <asp:Label ID="Label171" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="12px"
                        ForeColor="Black" Text="Cleared by"></asp:Label>
                </td>
                <td style="width: 97px">
                    <asp:Label ID="Label170" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="12px"
                        ForeColor="Black" Text="Date"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label169" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="12px"
                        ForeColor="Black" Text="Status"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 17px">
                    <asp:Label ID="Label173" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="1."></asp:Label>
                </td>
                <td style="width: 198px">
                    <asp:Label ID="Label183" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Employees Division/Region"></asp:Label>
                </td>
                <td style="width: 149px">
                    &nbsp;
                </td>
                <td style="width: 202px">
                    &nbsp;
                </td>
                <td style="width: 97px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr style="height: 25px">
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 17px">
                    &nbsp;
                </td>
                <td style="width: 198px">
                    <asp:Label ID="Label184" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="a.     Immediate Superior"></asp:Label>
                </td>
                <td style="width: 149px">
                    <asp:TextBox ID="txtaImmediate" runat="server" Font-Names="Arial" Height="16px" Width="150px"></asp:TextBox>
                </td>
                <td style="width: 202px">
                    <asp:TextBox ID="txtcImmediate" runat="server" Font-Names="Arial" Height="16px" Width="200px"></asp:TextBox>
                </td>
                <td style="width: 97px">
                    <asp:TextBox ID="txtdImmediate" runat="server" Font-Names="Arial" Height="16px" Width="100px"
                        ReadOnly="True"></asp:TextBox>
                    <asp:CalendarExtender ID="txtDate_CalendarExtender" runat="server" TargetControlID="txtdImmediate">
                    </asp:CalendarExtender>
                </td>
                <td>
                    <asp:TextBox ID="txtsImmediate" runat="server" Font-Names="Arial" Height="16px" Width="100px"></asp:TextBox>
                </td>
            </tr>
            <tr style="height: 25px">
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 17px">
                    &nbsp;
                </td>
                <td style="width: 198px">
                    <asp:Label ID="Label185" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="b.     Division/Regional Manager"></asp:Label>
                </td>
                <td style="width: 149px">
                    <asp:TextBox ID="txtaDivision" runat="server" Font-Names="Arial" Height="16px" Width="150px"></asp:TextBox>
                </td>
                <td style="width: 202px">
                    <asp:TextBox ID="txtcDivision" runat="server" Font-Names="Arial" Height="16px" Width="200px"></asp:TextBox>
                </td>
                <td style="width: 97px">
                    <asp:TextBox ID="txtdDivision" runat="server" Font-Names="Arial" Height="16px" Width="100px"
                        ReadOnly="True"></asp:TextBox>
                    <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtdDivision">
                    </asp:CalendarExtender>
                </td>
                <td>
                    <asp:TextBox ID="txtsDivision" runat="server" Font-Names="Arial" Height="16px" Width="100px"></asp:TextBox>
                </td>
            </tr>
            <tr style="height: 25px">
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 17px">
                    <asp:Label ID="Label174" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="2."></asp:Label>
                </td>
                <td style="width: 198px">
                    <asp:Label ID="Label186" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Accounting Division (Colon)"></asp:Label>
                </td>
                <td style="width: 149px">
                    <asp:TextBox ID="txtaAccount" runat="server" Font-Names="Arial" Height="16px" Width="150px"></asp:TextBox>
                </td>
                <td style="width: 202px">
                    <asp:TextBox ID="txtcAccounting" runat="server" Font-Names="Arial" Height="16px"
                        Width="200px"></asp:TextBox>
                </td>
                <td style="width: 97px">
                    <asp:TextBox ID="txtdAccounting" runat="server" Font-Names="Arial" Height="16px"
                        Width="100px" ReadOnly="True"></asp:TextBox>
                    <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txtdAccounting">
                    </asp:CalendarExtender>
                </td>
                <td>
                    <asp:TextBox ID="txtsAccounting" runat="server" Font-Names="Arial" Height="16px"
                        Width="100px"></asp:TextBox>
                </td>
            </tr>
            <tr style="height: 25px">
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 17px">
                    <asp:Label ID="Label175" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="3."></asp:Label>
                </td>
                <td style="width: 198px">
                    <asp:Label ID="Label187" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="ALL"></asp:Label>
                </td>
                <td style="width: 149px">
                    <asp:TextBox ID="txtaAll" runat="server" Font-Names="Arial" Height="16px" Width="150px"></asp:TextBox>
                </td>
                <td style="width: 202px">
                    <asp:TextBox ID="txtcAll" runat="server" Font-Names="Arial" Height="16px" Width="200px"></asp:TextBox>
                </td>
                <td style="width: 97px">
                    <asp:TextBox ID="txtdAll" runat="server" Font-Names="Arial" Height="16px" Width="100px"
                        ReadOnly="True"></asp:TextBox>
                    <asp:CalendarExtender ID="CalendarExtender3" runat="server" TargetControlID="txtdAll">
                    </asp:CalendarExtender>
                </td>
                <td>
                    <asp:TextBox ID="txtsALL" runat="server" Font-Names="Arial" Height="16px" Width="100px"></asp:TextBox>
                </td>
            </tr>
            <tr style="height: 25px">
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 17px">
                    <asp:Label ID="Label176" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="4."></asp:Label>
                </td>
                <td style="width: 198px">
                    <asp:Label ID="Label188" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="CAD"></asp:Label>
                </td>
                <td style="width: 149px">
                    <asp:TextBox ID="txtaCAD" runat="server" Font-Names="Arial" Height="16px" Width="150px"></asp:TextBox>
                </td>
                <td style="width: 202px">
                    <asp:TextBox ID="txtcCAD" runat="server" Font-Names="Arial" Height="16px" Width="200px"></asp:TextBox>
                </td>
                <td style="width: 97px">
                    <asp:TextBox ID="txtdCAD" runat="server" Font-Names="Arial" Height="16px" Width="100px"
                        ReadOnly="True"></asp:TextBox>
                    <asp:CalendarExtender ID="CalendarExtender4" runat="server" TargetControlID="txtdCAD">
                    </asp:CalendarExtender>
                </td>
                <td>
                    <asp:TextBox ID="txtsCAD" runat="server" Font-Names="Arial" Height="16px" Width="100px"></asp:TextBox>
                </td>
            </tr>
            <tr style="height: 25px">
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 17px">
                    <asp:Label ID="Label177" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="5."></asp:Label>
                </td>
                <td style="width: 198px">
                    <asp:Label ID="Label189" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="FD"></asp:Label>
                </td>
                <td style="width: 149px">
                    <asp:TextBox ID="txtaFD" runat="server" Font-Names="Arial" Height="16px" Width="150px"></asp:TextBox>
                </td>
                <td style="width: 202px">
                    <asp:TextBox ID="txtcFD" runat="server" Font-Names="Arial" Height="16px" Width="200px"></asp:TextBox>
                </td>
                <td style="width: 97px">
                    <asp:TextBox ID="txtdFD" runat="server" Font-Names="Arial" Height="16px" Width="100px"
                        ReadOnly="True"></asp:TextBox>
                    <asp:CalendarExtender ID="CalendarExtender5" runat="server" TargetControlID="txtdFD">
                    </asp:CalendarExtender>
                </td>
                <td>
                    <asp:TextBox ID="txtsFD" runat="server" Font-Names="Arial" Height="16px" Width="100px"></asp:TextBox>
                </td>
            </tr>
            <tr style="height: 25px">
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 17px">
                    <asp:Label ID="Label178" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="6."></asp:Label>
                </td>
                <td style="width: 198px">
                    <asp:Label ID="Label190" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="FSD"></asp:Label>
                </td>
                <td style="width: 149px">
                    <asp:TextBox ID="txtaFSD" runat="server" Font-Names="Arial" Height="16px" Width="150px"></asp:TextBox>
                </td>
                <td style="width: 202px">
                    <asp:TextBox ID="txtcFSD" runat="server" Font-Names="Arial" Height="16px" Width="200px"></asp:TextBox>
                </td>
                <td style="width: 97px">
                    <asp:TextBox ID="txtdFSD" runat="server" Font-Names="Arial" Height="16px" Width="100px"
                        ReadOnly="True"></asp:TextBox>
                    <asp:CalendarExtender ID="CalendarExtender6" runat="server" TargetControlID="txtdFSD">
                    </asp:CalendarExtender>
                </td>
                <td>
                    <asp:TextBox ID="txtsFSD" runat="server" Font-Names="Arial" Height="16px" Width="100px"></asp:TextBox>
                </td>
            </tr>
            <tr style="height: 25px">
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 17px">
                    <asp:Label ID="Label179" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="7."></asp:Label>
                </td>
                <td style="width: 198px">
                    <asp:Label ID="Label191" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="IAD"></asp:Label>
                </td>
                <td style="width: 149px">
                    <asp:TextBox ID="txtaIAD" runat="server" Font-Names="Arial" Height="16px" Width="150px"></asp:TextBox>
                </td>
                <td style="width: 202px">
                    <asp:TextBox ID="txtcIAD" runat="server" Font-Names="Arial" Height="16px" Width="200px"></asp:TextBox>
                </td>
                <td style="width: 97px">
                    <asp:TextBox ID="txtdIAD" runat="server" Font-Names="Arial" Height="16px" Width="100px"
                        ReadOnly="True"></asp:TextBox>
                    <asp:CalendarExtender ID="CalendarExtender7" runat="server" TargetControlID="txtdIAD">
                    </asp:CalendarExtender>
                </td>
                <td>
                    <asp:TextBox ID="txtsIAD" runat="server" Font-Names="Arial" Height="16px" Width="100px"></asp:TextBox>
                </td>
            </tr>
            <tr style="height: 25px">
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 17px">
                    <asp:Label ID="Label180" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="8."></asp:Label>
                </td>
                <td style="width: 198px">
                    <asp:Label ID="Label192" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="MIS"></asp:Label>
                </td>
                <td style="width: 149px">
                    <asp:TextBox ID="txtaMIS" runat="server" Font-Names="Arial" Height="16px" Width="150px"></asp:TextBox>
                </td>
                <td style="width: 202px">
                    <asp:TextBox ID="txtcMIS" runat="server" Font-Names="Arial" Height="16px" Width="200px"></asp:TextBox>
                </td>
                <td style="width: 97px">
                    <asp:TextBox ID="txtdMIS" runat="server" Font-Names="Arial" Height="16px" Width="100px"
                        ReadOnly="True"></asp:TextBox>
                    <asp:CalendarExtender ID="CalendarExtender8" runat="server" TargetControlID="txtdMIS">
                    </asp:CalendarExtender>
                </td>
                <td>
                    <asp:TextBox ID="txtsMIS" runat="server" Font-Names="Arial" Height="16px" Width="100px"></asp:TextBox>
                </td>
            </tr>
            <tr style="height: 25px">
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 17px">
                    <asp:Label ID="Label181" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="9."></asp:Label>
                </td>
                <td style="width: 198px">
                    <asp:Label ID="Label193" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="MMD"></asp:Label>
                </td>
                <td style="width: 149px">
                    <asp:TextBox ID="txtaMMD" runat="server" Font-Names="Arial" Height="16px" Width="150px"></asp:TextBox>
                </td>
                <td style="width: 202px">
                    <asp:TextBox ID="txtcMMD" runat="server" Font-Names="Arial" Height="16px" Width="200px"></asp:TextBox>
                </td>
                <td style="width: 97px">
                    <asp:TextBox ID="txtdMMD" runat="server" Font-Names="Arial" Height="16px" Width="100px"
                        ReadOnly="True"></asp:TextBox>
                    <asp:CalendarExtender ID="CalendarExtender9" runat="server" TargetControlID="txtdMMD">
                    </asp:CalendarExtender>
                </td>
                <td>
                    <asp:TextBox ID="txtsMMD" runat="server" Font-Names="Arial" Height="16px" Width="100px"></asp:TextBox>
                </td>
            </tr>
            <tr style="height: 25px">
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 17px">
                    <asp:Label ID="Label182" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="10."></asp:Label>
                </td>
                <td style="width: 198px">
                    <asp:Label ID="Label194" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="SPD"></asp:Label>
                </td>
                <td style="width: 149px">
                    <asp:TextBox ID="txtaSPD" runat="server" Font-Names="Arial" Height="16px" Width="150px"></asp:TextBox>
                </td>
                <td style="width: 202px">
                    <asp:TextBox ID="txtcSPD" runat="server" Font-Names="Arial" Height="16px" Width="200px"></asp:TextBox>
                </td>
                <td style="width: 97px">
                    <asp:TextBox ID="txtdSPD" runat="server" Font-Names="Arial" Height="16px" Width="100px"
                        ReadOnly="True"></asp:TextBox>
                    <asp:CalendarExtender ID="CalendarExtender10" runat="server" TargetControlID="txtdSPD">
                    </asp:CalendarExtender>
                </td>
                <td>
                    <asp:TextBox ID="txtsAccounting0" runat="server" Font-Names="Arial" Height="16px"
                        Width="100px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table style="width: 100%;">
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
                <td style="width: 364px">
                    &nbsp;
                </td>
                <td style="width: 179px">
                    &nbsp;
                </td>
                <td style="width: 61px">
                    &nbsp;
                </td>
                <td style="width: 71px">
                    &nbsp;
                </td>
                <td style="width: 65px">
                    &nbsp;
                </td>
                <td>
                    <asp:ImageButton ID="cmdNext" runat="server" Height="25px" ImageUrl="~/images/Buttons/Next.gif"
                        Width="75px" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="contentlabel">
    <table style="width: 100%; height: 1px">
        <tr>
            <td style="width: 15px">
                &nbsp;
            </td>
            <td style="width: 593px">
                <asp:Label ID="lblheader" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="DodgerBlue" Text="HRMD &gt; Records &gt; Resignation Clearance ">
                </asp:Label>
                <asp:Label ID="lblheader2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Black" Text="&gt; Clearance Status" Font-Underline="True">
                </asp:Label>
            </td>
            <td style="text-align: right">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Gray" Text="View Access"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
