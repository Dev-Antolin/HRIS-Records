<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/ManagerMasterPage.master"
    AutoEventWireup="false" CodeFile="manEmployeeStatus.aspx.vb" Inherits="recMANAGERinfo_Profile_manEmployeeStatus"
    Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="width: 195px; height: 374px;">
        <div style="height: 102px">
            <ul style="list-style: none;">
                <li class="label"><a class="name">Workforce Administration</a></li></ul>
            <br />
            <ul style="list-style: none;">
                <li class="effects2"><a href="PersonalInfo.aspx">
                    <asp:Label ID="Label3" runat="server" Text="> Personal Information" Height="16px"
                        Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="imgpersonalline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a href="ClearanceApproval.aspx">
                        <asp:Label ID="Label4" runat="server" Text="> Clerance Approval" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Image1" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                </li>
            </ul>
        </div>
        <div style="height: 225px">
            <ul style="list-style: none;">
                <li class="label"><a class="name">Reports</a></li></ul>
            <br />
            <ul style="list-style: none;">
                <li class="effects2"><a href="manManpowerList.aspx">
                    <asp:Label ID="manpower" runat="server" Text="> Manpower Lists" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Imgmanpowerline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a style="color: red; font-size: small;">
                        <asp:Label ID="newregular" runat="server" Text="> Employee Status" Height="16px"
                            Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="imgnewline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a href="Ratio.aspx">
                        <asp:Label ID="resigned" runat="server" Text="> Ratio" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Imgresignedline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                </li>
            </ul>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <table style="width: 100%;">
            <tr>
                <td style="width: 15px">
                </td>
                <td style="width: 26px">
                    <asp:Label ID="Label5" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="List"></asp:Label>
                </td>
                <td style="width: 153px">
                    <asp:DropDownList ID="cboList" runat="server" Font-Names="Arial" Height="20px" Width="136px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Operation</asp:ListItem>
                        <asp:ListItem>Support</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 92px">
                    <asp:Label ID="Label6" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Region/Division"></asp:Label>
                </td>
                <td style="width: 152px">
                    <asp:DropDownList ID="cboDivision" runat="server" Font-Names="Arial" Height="20px"
                        Width="136px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Cebu Central</asp:ListItem>
                        <asp:ListItem>Cebu North</asp:ListItem>
                        <asp:ListItem>Cebu South</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 43px">
                    <asp:Label ID="Label7" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Sort by"></asp:Label>
                </td>
                <td style="width: 145px">
                    <asp:DropDownList ID="cboSort" runat="server" Font-Names="Arial" Height="20px" Width="136px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Contractual</asp:ListItem>
                        <asp:ListItem>Regular</asp:ListItem>
                        <asp:ListItem>Probationary</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;
                </td>
                <td>
                    <asp:ImageButton ID="cmdPreview" runat="server" Height="25px" ImageUrl="~/images/Buttons/Preview.gif"
                        Width="75px" />
                </td>
            </tr>
        </table>
        <br />
    </div>
    <div>
        <table style="width: 100%;">
            <tr>
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td>
                    <asp:Panel ID="panelDisplay" runat="server" Height="357px" Width="753px">
                        <asp:Image ID="imgstatus" runat="server" Height="357px" Width="753px" Visible="False" />
                    </asp:Panel>
                </td>
                <td>
                </td>
            </tr>
        </table>
        <br />
        <table style="width: 100%;">
            <tr>
                <td style="width: 685px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
                <td>
                    <asp:ImageButton ID="cmdPrint" runat="server" Height="25px" ImageUrl="~/images/Buttons/print.gif"
                        Visible="False" Width="75px" />
                </td>
            </tr>
        </table>
        <br />
    </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="contentlabel">
    <table style="width: 100%; height: 1px">
        <tr>
            <td style="width: 15px">
                &nbsp;
            </td>
            <td style="width: 602px">
                <asp:Label ID="lblheader" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="DodgerBlue" Text="Manager &gt; Records &gt; Profile &gt; Reports ">
                </asp:Label>
                <asp:Label ID="lblheader2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Black" Text="&gt; Employee Status" Font-Underline="True">
                </asp:Label>
            </td>
            <td style="text-align: right">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Gray" Text="View/Print Access"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
