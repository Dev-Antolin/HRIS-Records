<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/ManagerMasterPage.master"
    AutoEventWireup="false" CodeFile="manReceiveEval1.aspx.vb" Inherits="recMANAGERinfo_Evaluation_manReceiveEval1"
    Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="width: 195px; height: 374px;">
        <div style="height: 102px">
            <ul style="list-style: none;">
                <li class="label"><a class="name">Evaluation</a></li></ul>
            <br />
            <ul style="list-style: none;">
                <li class="effects2"><a href="manPerformanceEval.aspx">
                    <asp:Label ID="Label3" runat="server" Text="> Create Evaluation" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="imgpersonalline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a style="color: red; font-size: small;">
                        <asp:Label ID="Label4" runat="server" Text="> Receive Evaluation" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Image1" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a href="manEvaluationStatus.aspx">
                        <asp:Label ID="Label2" runat="server" Text="> Evaluation Status" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Image2" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                </li>
            </ul>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div>
            <table style="width: 100%; height: 400px;">
                <tr>
                    <td style="width: 15px">
                        &nbsp;
                    </td>
                    <td>
                        <asp:Panel ID="panelDisplay" runat="server" Height="409px" Width="753px">
                            <asp:Image ID="imgEval" runat="server" Height="409px" Width="753px" />
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
                        <asp:ImageButton ID="cmdNext" runat="server" Height="25px" ImageUrl="~/images/Buttons/Next.gif"
                            Width="75px" />
                    </td>
                </tr>
            </table>
            <br />
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="contentlabel">
    <table style="width: 100%; height: 1px">
        <tr>
            <td style="width: 15px">
                &nbsp;
            </td>
            <td style="width: 607px">
                <asp:Label ID="lblheader" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="DodgerBlue" Text="Manager &gt; Records &gt; Evaluation ">
                </asp:Label>
                <asp:Label ID="lblheader2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Black" Text="&gt; Receive Evaluation" Font-Underline="True">
                </asp:Label>
            </td>
            <td style="text-align: right">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Gray" Text="Read/Write Access"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
