<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/HRMasterPage.master"
    AutoEventWireup="false" CodeFile="recClearanceCert2.aspx.vb" Inherits="recHRMDinfo_Clearance_recClearanceCert2"
    Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div>
        <table style="width: 100%; margin-right: 4px;">
            <tr>
                <td style="background-color: #CC0000" colspan="2">
                    <a class="name" style="height: 18px; width: 160px">Resignation Clearance</a>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="height: 10px;">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <ul style="list-style: none;">
                        <li id="Li2"><a id="A2" runat="server" href="recClearCreate.aspx" onmouseout="this.className='def'"
                            onmouseover="this.className='mOver'" style="font-size: 12px; font-family: Arial;
                            height: 18px; width: 150px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&gt; Create Clearance</a></li></ul>
                    <br />
                    <asp:Image ID="Image3" runat="server" Height="3px" ImageAlign="Right" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="height: 5px">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <ul style="list-style: none;">
                        <li id="Li1"><a id="A1" runat="server" href="recClearanceStatus1.aspx" onmouseout="this.className='def'"
                            onmouseover="this.className='mOver'" style="font-size: 12px; font-family: Arial;
                            height: 18px; width: 150px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&gt; Clearance Status</a></li></ul>
                    <br />
                    <asp:Image ID="Image1" runat="server" Height="3px" ImageAlign="Right" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="height: 5px">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <ul style="list-style: none;">
                        <li id="effectsCurrent">
                            <asp:Label ID="Label161" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Red"
                                CssClass="def" Text="&nbsp;&nbsp;&nbsp;&nbsp; Clearance Certificate" Font-Bold="True"></asp:Label>
                        </li>
                    </ul>
                    <br />
                    <asp:Image ID="Image16" runat="server" Height="3px" ImageAlign="Right" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="height: 5px">
                </td>
            </tr>
            <tr>
                <td style="width: 10px">
                    &nbsp;
                </td>
                <td style="width: 99px">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="height: 5px">
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <table style="width: 100%;">
            <tr>
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 743px">
                    <asp:Panel ID="panelDisplay" runat="server" Height="424px" Width="752px">
                        <asp:Image ID="Image15" runat="server" Height="424px" Width="752px" />
                    </asp:Panel>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
        <table style="width: 100%;">
            <tr>
                <td>
                    &nbsp;
                </td>
                <td style="width: 688px">
                    &nbsp;
                </td>
                <td>
                    <asp:ImageButton ID="cmdPrint" runat="server" Height="25px" ImageUrl="~/images/Buttons/print.gif"
                        Width="75px" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td style="width: 688px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td style="width: 688px">
                    &nbsp;
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
            <td style="width: 582px">
                <asp:Label ID="lblheader" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="DodgerBlue" Text="HRMD &gt; Records &gt; Resignation Clearance ">
                </asp:Label>
                <asp:Label ID="lblheader2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Black" Text="&gt; Clearance Certificate" Font-Underline="True">
                </asp:Label>
            </td>
            <td style="text-align: right">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Gray" Text="View/Print Access"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
