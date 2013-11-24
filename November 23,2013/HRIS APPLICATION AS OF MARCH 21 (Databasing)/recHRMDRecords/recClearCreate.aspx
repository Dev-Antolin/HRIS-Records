<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/HRMasterPage.master"
    AutoEventWireup="false" CodeFile="recClearCreate.aspx.vb" Inherits="recHRMDinfo_recClearCreate"
    Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="width: 195px; height: 374px;">
        <div style="height: 172px">
            <ul style="list-style: none;">
                <li class="label"><a class="name">Resignation Clearance</a></li></ul>
            <br />
            <ul style="list-style: none;">
                <li class="effects2"><a style="color: red; font-size: small;">
                    <asp:Label ID="trainingmod" runat="server" Text="> Create Clearance" Height="16px"
                        Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Imgmanpowerline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a href="recClearanceStatus1.aspx">
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
        <table style="width: 100%; height: 106px;">
            <tr>
                <td style="width: 15px">
                </td>
                <td style="width: 114px">
                    <asp:Label ID="Label4" runat="server" Text="Resource ID" Font-Size="12px" Font-Names="Arial"
                        ForeColor="Black"></asp:Label>
                </td>
                <td style="width: 207px">
                    <asp:TextBox ID="txtresourceID" runat="server" Font-Names="Arial" Height="16px" Width="171px"></asp:TextBox>
                    <asp:ImageButton ID="cmdBrowse" runat="server" Height="16px" ImageUrl="~/images/searchlens.jpg"
                        Width="20px" />
                </td>
                <td style="width: 7px">
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
                <td style="width: 7px">
                    &nbsp;
                </td>
                <td style="width: 146px">
                    <asp:Label ID="Label165" runat="server" Text="Date Hired" Font-Size="12px" Font-Names="Arial"
                        ForeColor="Black"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDateHired" runat="server" Font-Names="Arial" Height="16px" Width="200px"
                        ReadOnly="True"></asp:TextBox>
                    <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txtDateHired"
                        Enabled="true">
                    </asp:CalendarExtender>
                </td>
            </tr>
            <tr>
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 114px">
                    <asp:Label ID="Label5" runat="server" Text="Designation" Font-Size="12px" Font-Names="Arial"
                        ForeColor="Black"></asp:Label>
                </td>
                <td style="width: 207px">
                    <asp:TextBox ID="txtdesignation" runat="server" Font-Names="Arial" Height="16px"
                        Width="200px"></asp:TextBox>
                </td>
                <td style="width: 7px">
                    &nbsp;
                </td>
                <td style="width: 146px">
                    <asp:Label ID="Label166" runat="server" Text="Last Date of Employment" Font-Size="12px"
                        Font-Names="Arial" ForeColor="Black"></asp:Label>
                </td>
                <td>
                    <asp:TextBox runat="server" Font-Names="Arial" Font-Size="12px" Height="16px" Width="200px"
                        ID="txtLastDate" ReadOnly="True"></asp:TextBox>
                    <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtLastDate"
                        Enabled="true">
                    </asp:CalendarExtender>
                </td>
            </tr>
            <tr>
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 114px">
                    <asp:Label ID="Label163" runat="server" Text="Department/Branch" Font-Size="12px"
                        Font-Names="Arial" ForeColor="Black"></asp:Label>
                </td>
                <td style="width: 207px">
                    <asp:TextBox ID="txtbranch" runat="server" Font-Names="Arial" Height="16px" Width="200px"></asp:TextBox>
                </td>
                <td style="width: 7px">
                    &nbsp;
                </td>
                <td style="width: 146px">
                    <asp:Label ID="Label167" runat="server" Text="Division/Region" Font-Size="12px" Font-Names="Arial"
                        ForeColor="Black"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtdivReg" runat="server" Font-Names="Arial" Height="16px" Width="200px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <table style="width: 100%;">
            <tr>
                <td style="width: 24px">
                    &nbsp;
                </td>
                <td style="width: 76px">
                    &nbsp;
                </td>
                <td style="width: 189px">
                    &nbsp;
                </td>
                <td style="width: 179px">
                    &nbsp;
                </td>
                <td style="width: 61px">
                    <asp:ImageButton ID="cmdNew" runat="server" Height="25px" ImageUrl="~/images/Buttons/new.gif"
                        Width="75px" />
                </td>
                <td style="width: 71px">
                    <asp:ImageButton ID="cmdSave" runat="server" Height="25px" ImageUrl="~/images/Buttons/Save.gif"
                        Width="75px" />
                </td>
                <td style="width: 65px">
                    <asp:ImageButton ID="cmdCancel" runat="server" Height="25px" ImageUrl="~/images/Buttons/cancel.gif"
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
            <td style="width: 579px">
                <asp:Label ID="lblheader" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="DodgerBlue" Text="HRMD &gt; Records &gt; Resignation Clerance ">
                </asp:Label>
                <asp:Label ID="lblheader2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Black" Text="&gt; Create Clearance" Font-Underline="True">
                </asp:Label>
            </td>
            <td style="text-align: right">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Gray" Text="View Access"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
