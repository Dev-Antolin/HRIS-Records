<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/ManagerMasterPage.master"
    AutoEventWireup="false" CodeFile="manMovementStat3.aspx.vb" Inherits="recMANAGERinfo_Documents_manDiscipline"
    Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="width: 195px; height: 374px;">
        <div style="height: 102px">
            <ul style="list-style: none;">
                <li class="label"><a class="name">Movements</a></li></ul>
            <br />
            <ul style="list-style: none;">
                <li class="effects2"><a href="manMovementApp.aspx">
                    <asp:Label ID="Label3" runat="server" Text="> Movement Application" Height="16px"
                        Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="imgpersonalline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a href="manRecMovement.aspx">
                        <asp:Label ID="Label4" runat="server" Text="> Receive Movement" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Image1" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a style="color: red; font-size: small;">
                        <asp:Label ID="Label2" runat="server" Text="> Movement Status" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Image2" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                </li>
            </ul>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <table style="width: 100%; margin-bottom: 0px; height: 175px;">
            <tr>
                <td style="width: 50px">
                    &nbsp;
                </td>
                <td style="width: 192px">
                    <asp:Label ID="Label169" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Resource ID"></asp:Label>
                </td>
                <td style="width: 194px">
                    <asp:TextBox ID="txtresource" runat="server" Font-Names="Arial" Height="16px" Width="158px"></asp:TextBox>
                    <asp:ImageButton ID="cmdBrowse" runat="server" Height="16px" ImageUrl="~/images/searchlens.jpg"
                        Width="20px" />
                </td>
                <td style="width: 14px">
                    &nbsp;
                </td>
                <td align="right" style="width: 176px">
                    <asp:Label ID="Label180" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Date Hired"></asp:Label>
                </td>
                <td style="width: 329px">
                    &nbsp;
                    <asp:TextBox ID="txtdateHired" runat="server" Font-Names="Arial" Height="16px" Width="180px"
                        ReadOnly="True"></asp:TextBox>
                    <asp:CalendarExtender ID="calexhired" runat="server" TargetControlID="txtdateHired"
                        Enabled="true">
                    </asp:CalendarExtender>
                </td>
                <td style="width: 143px">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 50px; height: 22px;">
                    &nbsp;
                </td>
                <td style="width: 192px; height: 22px;">
                    &nbsp;
                </td>
                <td style="width: 194px; height: 22px;">
                    <asp:TextBox ID="txtname" runat="server" Font-Names="Arial" Height="16px" Width="180px"></asp:TextBox>
                </td>
                <td style="width: 14px; height: 22px;">
                    &nbsp;
                </td>
                <td align="right" style="width: 176px; height: 22px;">
                    <asp:Label ID="Label181" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Date Requested"></asp:Label>
                </td>
                <td style="width: 329px; height: 22px;">
                    &nbsp;
                    <asp:TextBox ID="txtdateRequested" runat="server" Font-Names="Arial" Height="16px"
                        Width="180px" ReadOnly="True"></asp:TextBox>
                    <asp:CalendarExtender ID="calextender" runat="server" TargetControlID="txtdateRequested"
                        Enabled="true">
                    </asp:CalendarExtender>
                </td>
                <td style="width: 143px; height: 22px;">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 50px">
                    &nbsp;
                </td>
                <td style="width: 192px">
                    <asp:Label ID="Label170" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Reason of Movement"></asp:Label>
                </td>
                <td style="width: 194px">
                    <asp:DropDownList runat="server" Font-Names="Arial" Height="20px" Width="184px" ID="cboReason">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Promotion</asp:ListItem>
                        <asp:ListItem>Demotion</asp:ListItem>
                        <asp:ListItem>Terminated</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 14px">
                    &nbsp;
                </td>
                <td align="right" style="width: 176px">
                    <asp:Label ID="Label187" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Effective Date of Movement"></asp:Label>
                </td>
                <td style="width: 329px">
                    &nbsp;
                    <asp:TextBox ID="txtEffectivity" runat="server" Font-Names="Arial" Height="16px"
                        Width="180px" ReadOnly="True"></asp:TextBox>
                    <asp:CalendarExtender ID="calxtend" runat="server" TargetControlID="txtEffectivity"
                        Enabled="true">
                    </asp:CalendarExtender>
                </td>
                <td style="width: 143px">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 50px">
                    &nbsp;
                </td>
                <td style="width: 192px">
                    &nbsp;
                </td>
                <td style="width: 194px">
                    &nbsp;
                </td>
                <td style="width: 14px">
                    &nbsp;
                </td>
                <td align="right" style="width: 176px">
                    &nbsp;
                </td>
                <td style="width: 329px">
                    &nbsp;
                </td>
                <td style="width: 143px">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 50px; height: 22px;">
                    &nbsp;
                </td>
                <td style="width: 192px; height: 22px;">
                    <asp:Label ID="Label171" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Division/Region"></asp:Label>
                </td>
                <td style="width: 194px; height: 22px;">
                    <asp:TextBox ID="txtDivision" runat="server" Font-Names="Arial" Height="16px" Width="180px"></asp:TextBox>
                </td>
                <td style="width: 14px; height: 22px;">
                    <asp:Label ID="Label177" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="To"></asp:Label>
                </td>
                <td style="width: 176px; height: 22px;">
                    <asp:TextBox ID="txtToDivision" runat="server" Font-Names="Arial" Height="16px" Width="140px"></asp:TextBox>
                </td>
                <td style="width: 329px; height: 22px;">
                    &nbsp;
                </td>
                <td style="width: 143px; height: 22px;">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 50px; height: 22px;">
                    &nbsp;
                </td>
                <td style="width: 192px; height: 22px;">
                    <asp:Label ID="Label172" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Department/Branch"></asp:Label>
                </td>
                <td style="width: 194px; height: 22px;">
                    <asp:TextBox ID="txtDepartment" runat="server" Font-Names="Arial" Height="16px" Width="180px"></asp:TextBox>
                </td>
                <td style="width: 14px; height: 22px;">
                    <asp:Label ID="Label178" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="To"></asp:Label>
                </td>
                <td style="width: 176px; height: 22px;">
                    <asp:TextBox ID="txtToDepartment" runat="server" Font-Names="Arial" Height="16px"
                        Width="140px"></asp:TextBox>
                </td>
                <td style="width: 329px; height: 22px;">
                    &nbsp;
                </td>
                <td style="width: 143px; height: 22px;">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 50px; height: 22px;">
                    &nbsp;
                </td>
                <td style="width: 192px; height: 22px;">
                    <asp:Label ID="Label173" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Designation"></asp:Label>
                </td>
                <td style="width: 194px; height: 22px;">
                    <asp:TextBox ID="txtDesignation" runat="server" Font-Names="Arial" Height="16px"
                        Width="180px"></asp:TextBox>
                </td>
                <td style="width: 14px; height: 22px;">
                    <asp:Label ID="Label179" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="To"></asp:Label>
                </td>
                <td style="width: 176px; height: 22px;">
                    <asp:TextBox ID="txtToDesignation" runat="server" Font-Names="Arial" Height="16px"
                        Width="140px"></asp:TextBox>
                </td>
                <td style="width: 329px; height: 22px;">
                    &nbsp;
                </td>
                <td style="width: 143px; height: 22px;">
                    &nbsp;
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
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
        <table style="width: 100%;">
            <tr>
                <td style="width: 15px; height: 22px">
                </td>
                <td style="width: 130px; height: 22px">
                    <asp:Label ID="Label188" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Originating RM"></asp:Label>
                </td>
                <td style="width: 276px; height: 22px">
                    <asp:TextBox ID="txtOrRM" runat="server" Font-Names="Arial" Height="16px" Width="180px"></asp:TextBox>
                </td>
                <td style="width: 88px; height: 22px">
                    &nbsp;
                </td>
                <td style="width: 177px; height: 22px">
                    &nbsp;
                </td>
                <td style="height: 22px">
                </td>
            </tr>
            <tr>
                <td style="width: 15px; height: 22px">
                </td>
                <td style="width: 130px; height: 22px">
                    <asp:Label ID="Label189" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="HR"></asp:Label>
                </td>
                <td style="width: 276px; height: 22px">
                    <asp:TextBox ID="txtHR" runat="server" Font-Names="Arial" Height="16px" Width="180px"></asp:TextBox>
                </td>
                <td style="width: 88px; height: 22px">
                    &nbsp;
                </td>
                <td style="width: 177px; height: 22px">
                    &nbsp;
                </td>
                <td style="height: 22px">
                </td>
            </tr>
        </table>
        <br />
        <table style="width: 100%;">
            <tr>
                <td>
                    &nbsp;
                </td>
                <td style="width: 53px">
                    &nbsp;
                </td>
                <td style="width: 334px">
                    &nbsp;
                </td>
                <td style="width: 61px">
                    &nbsp;
                </td>
                <td style="width: 93px">
                    &nbsp;
                </td>
                <td style="width: 65px">
                    &nbsp;
                </td>
                <td>
                    <asp:ImageButton ID="cmdPrint" runat="server" Height="25px" ImageUrl="~/images/Buttons/print.gif"
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
            <td style="width: 585px">
                <asp:Label ID="lblheader" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="DodgerBlue" Text="Manager &gt; Records &gt; Movements ">
                </asp:Label>
                <asp:Label ID="lblheader2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Black" Text="&gt; Movement Status" Font-Underline="True">
                </asp:Label>
            </td>
            <td style="text-align: right">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Gray" Text="Read/Write Access"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
