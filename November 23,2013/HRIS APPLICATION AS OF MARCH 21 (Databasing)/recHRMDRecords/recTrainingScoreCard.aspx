<%--<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/HRMasterPage.master"
    AutoEventWireup="false" CodeFile="recTrainingScoreCard.aspx.vb" Inherits="recHRMDinfo_Trainings_recTrainingScoreCard"
    Title="Untitled Page" %>
    
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="width: 195px; height: 374px;">
        <div style="height: 172px">
            <ul style="list-style: none;">
                <li class="label"><a class="name">Employee Training</a></li></ul>
            <br />
            <ul style="list-style: none;">
                <li class="effects2"><a href="recTrainings.aspx">
                    <asp:Label ID="trainingmod" runat="server" Text="> Trainings" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Imgmanpowerline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a href="recTrainingModules.aspx">
                        <asp:Label ID="newregular" runat="server" Text="> Trainings Modules" Height="16px"
                            Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="imgnewline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <asp:Label ID="resigned" runat="server" Text="> Training Request" Height="16px" Width="177px"
                        CssClass="def"></asp:Label><br />
                    <asp:Image ImageAlign="Right" ID="Imgresignedline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a href="recRecRequest.aspx" style="margin-left: 25px">
                        <asp:Label ID="newhired" runat="server" Text="> Receive Request" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="imgnewhiredline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="156px" /><br />
                </li>
            </ul>
        </div>
        <div>
            <ul style="list-style: none;">
                <li class="label"><a class="name">Reports</a></li></ul>
            <br />
            <ul style="list-style: none;">
                <li class="effects2"><a style="color: red; font-size: small;">
                    <asp:Label ID="status" runat="server" Text="> Training Scorecard" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Imgempstatusline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                </li>
            </ul>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 100%; height: 25px;">
        <tr>
            <td style="width: 15px; height: 17px;">
            </td>
            <td style="width: 54px; height: 17px;">
                <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                    Text="Group by"></asp:Label>
            </td>
            <td style="width: 150px; height: 17px;">
                <asp:DropDownList ID="cmdGroupBy" runat="server" Font-Names="Arial" Font-Size="12px"
                    Height="20px" Width="135px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Area</asp:ListItem>
                    <asp:ListItem>Division</asp:ListItem>
                    <asp:ListItem>Region</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 95px; height: 17px;">
                <asp:Label ID="Label7" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                    Text="Region/Division"></asp:Label>
            </td>
            <td style="width: 146px; height: 17px;">
                <asp:DropDownList ID="cmbTrainReg" runat="server" Font-Names="Arial" Font-Size="12px"
                    Height="20px" Width="135px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Cebu Central</asp:ListItem>
                    <asp:ListItem>Cebu South</asp:ListItem>
                    <asp:ListItem>Cebu North</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="height: 17px">
                <asp:ImageButton ID="cmdSearch" runat="server" Height="25px" ImageUrl="~/images/Buttons/search.gif"
                    Width="75px" />
            </td>
        </tr>
    </table>
    <table style="width: 100%; height: 335px;">
        <tr>
            <td style="width: 15px">
                &nbsp;
            </td>
            <td style="width: 610px">
                &nbsp;
            </td>
            <td style="width: 28px">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 15px">
            </td>
            <td style="width: 610px">
                <asp:Panel ID="panelDisplay" runat="server" Height="312px" Width="707px">
                    <asp:Image ID="img" runat="server" Height="312px" Width="707px" Visible="False" />
                </asp:Panel>
            </td>
            <td style="width: 28px">
                &nbsp;
            </td>
        </tr>
    </table>
    <table style="width: 100%;">
        <tr>
            <td style="width: 29px">
                &nbsp;
            </td>
            <td style="width: 112px">
                &nbsp;
            </td>
            <td style="width: 80px">
                &nbsp;
            </td>
            <td style="width: 91px">
                &nbsp;
            </td>
            <td style="width: 326px">
                &nbsp;
            </td>
            <td>
                <asp:ImageButton ID="cmdPrint" runat="server" Height="25px" ImageUrl="~/images/Buttons/print.gif"
                    Visible="False" Width="75px" />
            </td>
            <td style="width: 7px">
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="contentlabel">
    <table style="width: 100%; height: 1px">
        <tr>
            <td style="width: 15px">
                &nbsp;
            </td>
            <td style="width: 581px">
                <asp:Label ID="lblheader" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="DodgerBlue" Text="HRMD &gt; Records &gt; Trainings &gt; Employee Training ">
                </asp:Label>
                <asp:Label ID="lblheader2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Black" Text="&gt; Training Scorecard" Font-Underline="True">
                </asp:Label>
            </td>
            <td style="text-align: right">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Gray" Text="Print/View Access"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
--%>