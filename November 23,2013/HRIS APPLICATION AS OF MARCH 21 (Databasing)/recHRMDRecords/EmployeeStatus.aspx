<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/HRMasterPage.master"
    AutoEventWireup="false" CodeFile="EmployeeStatus.aspx.vb" Inherits="recHRMDinfo_Profile_EmployeeStatus"
    Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="width: 195px; height: 374px;">
        <div style="height: 68px">
            <ul style="list-style: none;">
                <li class="label"><a class="name">Employee Data</a></li></ul>
            <br />
            <ul style="list-style: none;">
                <li class="effects2"><a href="persoInfo.aspx">
                    <asp:Label ID="Label2" runat="server" Text="> Personal Information" Height="16px"
                        Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="imgpersonalline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                </li>
            </ul>
        </div>
        <div style="height: 225px">
            <ul style="list-style: none;">
                <li class="label"><a class="name">Reports</a></li></ul>
            <br />
            <ul style="list-style: none;">
                <li class="effects2"><a href="ManpowerLists.aspx">
                    <asp:Label ID="manpower" runat="server" Text="> Manpower Lists" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Imgmanpowerline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a href="NewlyRegularized.aspx">
                        <asp:Label ID="newregular" runat="server" Text="> Newly Regularized" Height="16px"
                            Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="imgnewline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a href="Resigned.aspx">
                        <asp:Label ID="resigned" runat="server" Text="> Resigned" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Imgresignedline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a href="NewlyHired.aspx">
                        <asp:Label ID="newhired" runat="server" Text="> Newly Hired" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="imgnewhiredline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a href="Longevity.aspx">
                        <asp:Label ID="longevity" runat="server" Text="> Longevity" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Imglongevityline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a href="ActiveEmployees.aspx">
                        <asp:Label ID="active" runat="server" Text="> Active Employees" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="imgactiveline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                </li>
            </ul>
        </div>
        <div>
            <ul style="list-style: none;">
                <li class="label"><a class="name">Alerts</a></li></ul>
            <br />
            <ul style="list-style: none;">
                <li class="effects2"><a style="color: red; font-size: small;">
                    <asp:Label ID="status" runat="server" Text="> Employee Status" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Imgempstatusline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                </li>
            </ul>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentlabel" runat="Server">
    <table style="width: 100%; height: 1px">
        <tr>
            <td style="width: 15px">
                &nbsp;
            </td>
            <td style="width: 595px">
                <asp:Label ID="lblheader" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="DodgerBlue" Text="HRMD &gt; Records &gt; Profile &gt; Alerts "> </asp:Label>
                <asp:Label ID="lblheader2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" Font-Underline="True" ForeColor="Black" Text="&gt; Employee Status"> </asp:Label>
            </td>
            <td style="text-align: right">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Gray" Text="Print/View Access"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <table style="width: 100%;">
            <tr>
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 34px">
                    &nbsp;
                    <asp:Label ID="Label162" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="List"></asp:Label>
                </td>
                <td style="width: 128px">
                    <asp:DropDownList ID="cboCategory" runat="server" Font-Names="Arial" Height="20px"
                        Width="119px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Operation</asp:ListItem>
                        <asp:ListItem>Support</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 95px">
                    <asp:Label ID="Label164" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Region/Division"></asp:Label>
                </td>
                <td style="width: 132px">
                    <asp:DropDownList ID="cboRegion" runat="server" Font-Names="Arial" Height="20px"
                        Width="119px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Cebu Central</asp:ListItem>
                        <asp:ListItem>Cebu South</asp:ListItem>
                        <asp:ListItem>Cebu North</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 43px">
                    <asp:Label ID="Label165" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Sort by"></asp:Label>
                </td>
                <td style="width: 132px">
                    &nbsp;
                    <asp:DropDownList ID="cboSort" runat="server" Font-Names="Arial" Height="20px" Width="119px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>All</asp:ListItem>
                        <asp:ListItem>Contractual</asp:ListItem>
                        <asp:ListItem>Probationary</asp:ListItem>
                        <asp:ListItem>Regular</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:ImageButton ID="cmdPreview" runat="server" Height="25px" ImageUrl="~/images/Buttons/Preview.gif"
                        Width="75px" />
                </td>
            </tr>
            <tr>
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 34px">
                    &nbsp;
                </td>
                <td style="width: 128px">
                    &nbsp;
                </td>
                <td style="width: 95px">
                    &nbsp;
                </td>
                <td style="width: 132px">
                    &nbsp;
                </td>
                <td style="width: 43px">
                    &nbsp;
                </td>
                <td style="width: 132px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
        <br />
        <table style="width: 100%;">
            <tr>
                <td style="width: 1px">
                    &nbsp;
                </td>
                <td style="width: 735px">
                    <asp:Panel ID="panelDisplay" runat="server" Height="340px" Width="743px">
                        <asp:Image ID="img" runat="server" Height="340px" Style="margin-left: 8px; margin-right: 8px;"
                            Width="743px" Visible="False" />
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
                <td style="width: 157px">
                    &nbsp;
                </td>
                <td style="width: 609px">
                    &nbsp;
                </td>
                <td style="width: 12px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
                <td style="width: 83px">
                    <asp:ImageButton ID="cmdPrint" runat="server" Height="25px" ImageUrl="~/images/Buttons/print.gif"
                        Visible="False" Width="75px" />
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
