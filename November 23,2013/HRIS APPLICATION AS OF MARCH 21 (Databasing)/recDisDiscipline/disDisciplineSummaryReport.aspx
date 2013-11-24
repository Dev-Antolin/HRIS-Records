<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/DisciplineMasterPage.master"
    AutoEventWireup="false" CodeFile="disDisciplineSummaryReport.aspx.vb" Inherits="DisDiscipline_disCaseApplication"
    Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="width: 195px; height: 334px;">
        <ul style="list-style: none;">
            <li class="label"><a class="name">Workforce Administration</a></li></ul>
        <br />
        <ul style="list-style: none;">
            <li style="margin-left: 20px; cursor: pointer;" class="effects2"><a href="disCaseApplication.aspx">
                <asp:Label ID="lblcaseapp" runat="server" Text="> Case Application" Height="16px"
                    Width="177px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="imgcaseappline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" /><br />
                <a href="disReceiveApplication.aspx">
                    <asp:Label ID="lblrecapp" runat="server" Text="> Receive Application" Height="16px"
                        Width="177px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="Imgrecappline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" /><br />
                <a href="disCaseStatus.aspx">
                    <asp:Label ID="lblcasestat" runat="server" Text="> Case Status" Height="16px" Width="177px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="imgcasestatline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" /><br />
                <a href="disCodeofDiscipline.aspx">
                    <asp:Label ID="lblcodedis" runat="server" Text="> Code of Discipline" Height="16px"
                        Width="177px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="Imgcodedisline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" /><br />
            </li>
        </ul>
        <ul style="list-style: none; margin-top: 120px;">
            <li class="label"><a class="name">Reports</a></li></ul>
        <br />
        <ul style="list-style: none;">
            <li class="effects2"><a style="color: red; font-size: small;">
                <asp:Label ID="dissum" runat="server" Text="> Discipline Summary" Height="16px" Width="177px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="imgdissumline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" /><br />
                <a href="disDisciplineScorecardReport.aspx">
                    <asp:Label ID="disscore" runat="server" Text="> Discipline Scorecard" Height="16px"
                        Width="177px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="Imgdisscoreline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" /><br />
                <a href="disDisciplineCaseFile.aspx">
                    <asp:Label ID="empfile" runat="server" Text="> Employee Case File" Height="16px"
                        Width="177px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="imgempfileline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" /><br />
            </li>
        </ul>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 100%;">
        <tr>
            <td style="width: 56px">
                &nbsp;
            </td>
            <td style="width: 53px">
                <asp:Label ID="lblsort" runat="server" Font-Names="Arial" Font-Size="Small" Text="Sort by"
                    ForeColor="Black"></asp:Label>
            </td>
            <td style="width: 140px">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="23px" Width="150px">
                    <asp:ListItem>Employee</asp:ListItem>
                    <asp:ListItem>Area</asp:ListItem>
                    <asp:ListItem>Region</asp:ListItem>
                    <asp:ListItem>Department</asp:ListItem>
                    <asp:ListItem>Branch</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 28px">
                <asp:ImageButton ID="imgsearch" runat="server" Height="20px" ImageUrl="~/images/searchlens.jpg" />
            </td>
            <td style="width: 36px">
                <asp:Label ID="lblfrom" runat="server" Font-Names="Arial" Font-Size="Small" Text="From"
                    ForeColor="Black"></asp:Label>
            </td>
            <td style="width: 130px">
                <asp:CalendarExtender ID="cal1" runat="server" TargetControlID="txtfrom" PopupPosition="BottomLeft">
                </asp:CalendarExtender>
                <asp:TextBox ID="txtfrom" runat="server" Width="115px"></asp:TextBox>
            </td>
            <td style="width: 21px">
                <asp:Label ID="lblto" runat="server" Font-Names="Arial" Font-Size="Small" Text="To"
                    ForeColor="Black"></asp:Label>
            </td>
            <td style="width: 134px">
                <asp:CalendarExtender ID="cal2" runat="server" TargetControlID="txtto" PopupPosition="BottomLeft">
                </asp:CalendarExtender>
                <asp:TextBox ID="txtto" runat="server" Width="115px"></asp:TextBox>
            </td>
            <td align="left">
                <asp:ImageButton ID="cmdpreview" runat="server" Height="25px" ImageUrl="~/images/Buttons/Preview.gif"
                    Width="75px" />
            </td>
        </tr>
    </table>
    <br />
    <table id="report" width="100%">
        <tr>
            <td style="width: 23px">
            </td>
            <td style="width: 641px">
                <asp:Panel ID="pnlreport" runat="server" Height="318px" Visible="False" Width="726px">
                    <asp:Image ID="Image15" runat="server" Height="313px" ImageUrl="~/images/dissumreport.jpg"
                        Width="722px" />
                </asp:Panel>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="width: 23px">
            </td>
            <td style="width: 641px">
            </td>
            <td>
            </td>
        </tr>
    </table>
    <table style="width: 100%">
        <tr>
            <td style="height: 28px">
            </td>
            <td style="height: 28px">
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 743px">
                <asp:ImageButton ID="cmdprint" runat="server" Height="25px" ImageUrl="~/images/Buttons/print.gif"
                    Width="75px" Visible="false" />
            </td>
            <td>
            </td>
        </tr>
    </table>
</asp:Content>
