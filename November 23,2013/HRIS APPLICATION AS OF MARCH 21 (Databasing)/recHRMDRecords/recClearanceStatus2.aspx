<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/HRMasterPage.master"
    AutoEventWireup="false" CodeFile="recClearanceStatus2.aspx.vb" Inherits="recHRMDinfo_recClearanceStatus2"
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
        <table style="width: 100%; height: 337px;">
            <tr style="height: 19px; text-align: center">
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 17px">
                    &nbsp;
                </td>
                <td style="width: 182px">
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
            <tr style="height: 19px">
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 17px">
                    <asp:Label ID="Label173" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="11."></asp:Label>
                </td>
                <td style="width: 182px">
                    <asp:Label ID="Label183" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="HRMD"></asp:Label>
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
                <td style="width: 182px">
                    <asp:Label ID="Label184" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="a.     Retirement Pay"></asp:Label>
                </td>
                <td style="width: 149px">
                    <asp:TextBox ID="txtaRetirement" runat="server" Font-Names="Arial" Height="16px"
                        Width="150px"></asp:TextBox>
                </td>
                <td style="width: 202px">
                    <asp:TextBox ID="txtcRetirement" runat="server" Font-Names="Arial" Height="16px"
                        Width="200px"></asp:TextBox>
                </td>
                <td style="width: 97px">
                    <asp:TextBox ID="txtdRetirement" runat="server" Font-Names="Arial" Height="16px"
                        Width="100px" ReadOnly="True"></asp:TextBox>
                    <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtdRetirement">
                    </asp:CalendarExtender>
                </td>
                <td>
                    <asp:TextBox ID="txtsRetirement" runat="server" Font-Names="Arial" Height="16px"
                        Width="100px"></asp:TextBox>
                </td>
            </tr>
            <tr style="height: 25px">
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 17px">
                    &nbsp;
                </td>
                <td style="width: 182px">
                    <asp:Label ID="Label185" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="b.     13th Month Pay"></asp:Label>
                </td>
                <td style="width: 149px">
                    <asp:TextBox ID="txta13th" runat="server" Font-Names="Arial" Height="16px" Width="150px"></asp:TextBox>
                </td>
                <td style="width: 202px">
                    <asp:TextBox ID="txtc13th" runat="server" Font-Names="Arial" Height="16px" Width="200px"></asp:TextBox>
                </td>
                <td style="width: 97px">
                    <asp:TextBox ID="txtd13th" runat="server" Font-Names="Arial" Height="16px" Width="100px"
                        ReadOnly="True"></asp:TextBox>
                    <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txtd13th">
                    </asp:CalendarExtender>
                </td>
                <td>
                    <asp:TextBox ID="txts13th" runat="server" Font-Names="Arial" Height="16px" Width="100px"></asp:TextBox>
                </td>
            </tr>
            <tr style="height: 25px">
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 17px">
                    &nbsp;
                </td>
                <td style="width: 182px">
                    <asp:Label ID="Label186" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="c.     Company Uniform"></asp:Label>
                </td>
                <td style="width: 149px">
                    <asp:TextBox ID="txtaUniform" runat="server" Font-Names="Arial" Height="16px" Width="150px"></asp:TextBox>
                </td>
                <td style="width: 202px">
                    <asp:TextBox ID="txtcUniform" runat="server" Font-Names="Arial" Height="16px" Width="200px"></asp:TextBox>
                </td>
                <td style="width: 97px">
                    <asp:TextBox ID="txtdUniform" runat="server" Font-Names="Arial" Height="16px" Width="100px"
                        ReadOnly="True"></asp:TextBox>
                    <asp:CalendarExtender ID="CalendarExtender3" runat="server" TargetControlID="txtdUniform">
                    </asp:CalendarExtender>
                </td>
                <td>
                    <asp:TextBox ID="txtsUniform" runat="server" Font-Names="Arial" Height="16px" Width="100px"></asp:TextBox>
                </td>
            </tr>
            <tr style="height: 25px">
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 17px">
                    &nbsp;
                </td>
                <td style="width: 182px">
                    <asp:Label ID="Label187" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="d.     Company ID/Sling"></asp:Label>
                </td>
                <td style="width: 149px">
                    <asp:TextBox ID="txtaID" runat="server" Font-Names="Arial" Height="16px" Width="150px"></asp:TextBox>
                </td>
                <td style="width: 202px">
                    <asp:TextBox ID="txtcID" runat="server" Font-Names="Arial" Height="16px" Width="200px"></asp:TextBox>
                </td>
                <td style="width: 97px">
                    <asp:TextBox ID="txtdID" runat="server" Font-Names="Arial" Height="16px" Width="100px"
                        ReadOnly="True"></asp:TextBox>
                    <asp:CalendarExtender ID="CalendarExtender4" runat="server" TargetControlID="txtdID">
                    </asp:CalendarExtender>
                </td>
                <td>
                    <asp:TextBox ID="txtsID" runat="server" Font-Names="Arial" Height="16px" Width="100px"></asp:TextBox>
                </td>
            </tr>
            <tr style="height: 25px">
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 17px">
                    &nbsp;
                </td>
                <td style="width: 182px">
                    <asp:Label ID="Label188" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="e.     HMO/ATM Card"></asp:Label>
                </td>
                <td style="width: 149px">
                    <asp:TextBox ID="txtaHMO" runat="server" Font-Names="Arial" Height="16px" Width="150px"></asp:TextBox>
                </td>
                <td style="width: 202px">
                    <asp:TextBox ID="txtcHMO" runat="server" Font-Names="Arial" Height="16px" Width="200px"></asp:TextBox>
                </td>
                <td style="width: 97px">
                    <asp:TextBox ID="txtdHMO" runat="server" Font-Names="Arial" Height="16px" Width="100px"
                        ReadOnly="True"></asp:TextBox>
                    <asp:CalendarExtender ID="CalendarExtender5" runat="server" TargetControlID="txtdHMO">
                    </asp:CalendarExtender>
                </td>
                <td>
                    <asp:TextBox ID="txtsHMO" runat="server" Font-Names="Arial" Height="16px" Width="100px"></asp:TextBox>
                </td>
            </tr>
            <tr style="height: 25px">
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 17px">
                    &nbsp;
                </td>
                <td style="width: 182px">
                    <asp:Label ID="Label189" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="f.     OPEC"></asp:Label>
                </td>
                <td style="width: 149px">
                    <asp:TextBox ID="txtaOPEC" runat="server" Font-Names="Arial" Height="16px" Width="150px"></asp:TextBox>
                </td>
                <td style="width: 202px">
                    <asp:TextBox ID="txtcOPEC" runat="server" Font-Names="Arial" Height="16px" Width="200px"></asp:TextBox>
                </td>
                <td style="width: 97px">
                    <asp:TextBox ID="txtdOPEC" runat="server" Font-Names="Arial" Height="16px" Width="100px"
                        ReadOnly="True"></asp:TextBox>
                    <asp:CalendarExtender ID="CalendarExtender6" runat="server" TargetControlID="txtdOPEC">
                    </asp:CalendarExtender>
                </td>
                <td>
                    <asp:TextBox ID="txtsOPEC" runat="server" Font-Names="Arial" Height="16px" Width="100px"></asp:TextBox>
                </td>
            </tr>
            <tr style="height: 25px">
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 17px">
                    &nbsp;
                </td>
                <td style="width: 182px">
                    <asp:Label ID="Label190" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="g.     Training Fee"></asp:Label>
                </td>
                <td style="width: 149px">
                    <asp:TextBox ID="txtaFee" runat="server" Font-Names="Arial" Height="16px" Width="150px"></asp:TextBox>
                </td>
                <td style="width: 202px">
                    <asp:TextBox ID="txtcTraining" runat="server" Font-Names="Arial" Height="16px" Width="200px"></asp:TextBox>
                </td>
                <td style="width: 97px">
                    <asp:TextBox ID="txtdFee" runat="server" Font-Names="Arial" Height="16px" Width="100px"
                        ReadOnly="True"></asp:TextBox>
                    <asp:CalendarExtender ID="CalendarExtender7" runat="server" TargetControlID="txtdFee">
                    </asp:CalendarExtender>
                </td>
                <td>
                    <asp:TextBox ID="txtsFee" runat="server" Font-Names="Arial" Height="16px" Width="100px"></asp:TextBox>
                </td>
            </tr>
            <tr style="height: 25px">
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 17px">
                    &nbsp;
                </td>
                <td style="width: 182px">
                    <asp:Label ID="Label191" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="h.     Charged Accounts"></asp:Label>
                </td>
                <td style="width: 149px">
                    <asp:TextBox ID="txtaCharge" runat="server" Font-Names="Arial" Height="16px" Width="150px"></asp:TextBox>
                </td>
                <td style="width: 202px">
                    <asp:TextBox ID="txtcCharge" runat="server" Font-Names="Arial" Height="16px" Width="200px"></asp:TextBox>
                </td>
                <td style="width: 97px">
                    <asp:TextBox ID="txtdCharge" runat="server" Font-Names="Arial" Height="16px" Width="100px"
                        ReadOnly="True"></asp:TextBox>
                    <asp:CalendarExtender ID="CalendarExtender8" runat="server" TargetControlID="txtdCharge">
                    </asp:CalendarExtender>
                </td>
                <td>
                    <asp:TextBox ID="txtsCharge" runat="server" Font-Names="Arial" Height="16px" Width="100px"></asp:TextBox>
                </td>
            </tr>
            <tr style="height: 25px">
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 17px">
                    &nbsp;
                </td>
                <td style="width: 182px">
                    <asp:Label ID="Label192" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="i.       Others"></asp:Label>
                </td>
                <td style="width: 149px">
                    <asp:TextBox ID="txtaOthers" runat="server" Font-Names="Arial" Height="16px" Width="150px"></asp:TextBox>
                </td>
                <td style="width: 202px">
                    <asp:TextBox ID="txtcOthers" runat="server" Font-Names="Arial" Height="16px" Width="200px"></asp:TextBox>
                </td>
                <td style="width: 97px">
                    <asp:TextBox ID="txtdOthers" runat="server" Font-Names="Arial" Height="16px" Width="100px"
                        ReadOnly="True"></asp:TextBox>
                    <asp:CalendarExtender ID="CalendarExtender9" runat="server" TargetControlID="txtdOthers">
                    </asp:CalendarExtender>
                </td>
                <td>
                    <asp:TextBox ID="txtsOthers" runat="server" Font-Names="Arial" Height="16px" Width="100px"></asp:TextBox>
                </td>
            </tr>
            <tr style="height: 25px">
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 17px">
                    <asp:Label ID="Label181" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="12."></asp:Label>
                </td>
                <td style="width: 182px">
                    <asp:Label ID="Label193" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="FILMA LENDING"></asp:Label>
                </td>
                <td style="width: 149px">
                    <asp:TextBox ID="txtaFilm" runat="server" Font-Names="Arial" Height="16px" Width="150px"></asp:TextBox>
                </td>
                <td style="width: 202px">
                    <asp:TextBox ID="txtcFilm" runat="server" Font-Names="Arial" Height="16px" Width="200px"></asp:TextBox>
                </td>
                <td style="width: 97px">
                    <asp:TextBox ID="txtdFilm" runat="server" Font-Names="Arial" Height="16px" Width="100px"
                        ReadOnly="True"></asp:TextBox>
                    <asp:CalendarExtender ID="CalendarExtender10" runat="server" TargetControlID="txtdFilm">
                    </asp:CalendarExtender>
                </td>
                <td>
                    <asp:TextBox ID="txtsFilm" runat="server" Font-Names="Arial" Height="16px" Width="100px"></asp:TextBox>
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
                    <asp:ImageButton ID="cmdBack" runat="server" Height="25px" ImageUrl="~/images/Buttons/back.gif"
                        Width="75px" />
                </td>
                <td style="width: 65px">
                    <asp:ImageButton ID="cmdNext" runat="server" Height="25px" ImageUrl="~/images/Buttons/Next.gif"
                        Width="75px" />
                </td>
                <td>
                    &nbsp;
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
            <td style="width: 592px">
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
