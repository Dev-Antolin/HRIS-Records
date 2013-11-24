<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/HRMasterPage.master"
    AutoEventWireup="false" CodeFile="Attachments.aspx.vb" Inherits="recHRMDinfo_Documents_Attachments"
    Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="width: 195px; height: 374px;">
        <div style="height: 201px">
            <ul style="list-style: none;">
                <li class="label"><a class="name">Manager Documents</a></li></ul>
            <br />
            <ul style="list-style: none;">
                <li class="effects2"><a style="color: red; font-size: small;">
                    <asp:Label ID="lblattachment" runat="server" Text="> Attachment" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Image4" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a href="manDiscipline.aspx">
                        <asp:Label ID="trainingmod" runat="server" Text="> Discipline" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Imgmanpowerline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a href="manUndertakings.aspx">
                        <asp:Label ID="newregular" runat="server" Text="> Undertakings" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="imgnewline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a href="manAPEresult.aspx">
                        <asp:Label ID="Label3" runat="server" Text="> APE Results" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Image2" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <asp:Label ID="resigned" runat="server" Text="> Employment History" Height="16px"
                        Width="177px" CssClass="def"></asp:Label><br />
                    <asp:Image ImageAlign="Right" ID="Imgresignedline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a href="manHistoryInternal.aspx" style="margin-left: 25px">
                        <asp:Label ID="newhired" runat="server" Text="> Internal" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="imgnewhiredline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="156px" /><br />
                    <a href="manHistoryExternal.aspx" style="margin-left: 25px">
                        <asp:Label ID="lblHexternal" runat="server" Text="> External" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Image1" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="156px" /><br />
                    <a href="manJobDesc.aspx">
                        <asp:Label ID="lbljobDesc" runat="server" Text="> Job Description" Height="16px"
                            Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Image3" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
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
                    &nbsp;
                </td>
                <td style="width: 242px">
                    <asp:Label ID="lblattach" runat="server" Font-Bold="False" Font-Names="Arial" Font-Size="12px"
                        ForeColor="Black" Text="Attachment"></asp:Label>
                    &nbsp;
                    <asp:DropDownList ID="cboAttach" runat="server" Font-Names="Arial" Font-Size="12px"
                        Height="20px" Width="163px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Application Letter</asp:ListItem>
                        <asp:ListItem>Diploma</asp:ListItem>
                        <asp:ListItem>Resume</asp:ListItem>
                        <asp:ListItem>TOR</asp:ListItem>
                        <asp:ListItem>Other Certificates</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:ImageButton ID="cmdPreview" runat="server" Height="25px" ImageUrl="~/images/Buttons/Preview.gif"
                        Width="75px" />
                </td>
            </tr>
        </table>
        <table style="width: 100%;">
            <tr>
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 17px">
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
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 15px; height: 32px;">
                </td>
                <td colspan="4" rowspan="5">
                    <asp:Panel ID="panelDisplay" runat="server" Height="363px" Width="718px">
                        <asp:Image ID="imgsample" runat="server" Height="363px" Width="718px" Visible="False" />
                    </asp:Panel>
                </td>
                <td style="height: 32px">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 15px; height: 32px;">
                </td>
                <td style="height: 32px">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 15px; height: 32px;">
                </td>
                <td style="height: 32px">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 15px; height: 32px;">
                </td>
                <td style="height: 32px">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 15px; height: 32px;">
                </td>
                <td style="height: 32px">
                    &nbsp;
                </td>
            </tr>
        </table>
        <table style="width: 100%;">
            <tr>
                <td style="width: 652px">
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
    </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="contentlabel">
    <table style="width: 100%; height: 1px">
        <tr>
            <td style="width: 15px">
                &nbsp;
            </td>
            <td style="width: 595px">
                <asp:Label ID="lblheader" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="DodgerBlue" Text="HRMD &gt; Records &gt; Documents &gt; HRMD Documents ">
                </asp:Label>
                <asp:Label ID="lblheader2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Black" Text="&gt; Attachments" Font-Underline="True">
                </asp:Label>
            </td>
            <td style="text-align: right">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Gray" Text="View/Print Access"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
