<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/HRMasterPage.master"
    AutoEventWireup="false" CodeFile="UndertakingUpload.aspx.vb" Inherits="recHRMDinfo_Documents_UndertakingUpload"
    Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="width: 195px; height: 374px;">
        <div style="height: 172px">
            <ul style="list-style: none;">
                <li class="label"><a class="name">HRMD Documents</a></li></ul>
            <br />
            <ul style="list-style: none;">
                <li class="effects2"><a href="Attachments.aspx">
                    <asp:Label ID="trainingmod" runat="server" Text="> Attachments" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Imgmanpowerline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a href="Discipline.aspx">
                        <asp:Label ID="newregular" runat="server" Text="> Discipline" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="imgnewline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <asp:Label ID="resigned" runat="server" Text="> Undertakings" Height="16px" Width="177px"
                        CssClass="def"></asp:Label><br />
                    <asp:Image ImageAlign="Right" ID="Imgresignedline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a href="UndertakingSearch.aspx" style="margin-left: 25px">
                        <asp:Label ID="newhired" runat="server" Text="> Search" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="imgnewhiredline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="156px" /><br />
                    <a style="color: red; font-size: small; margin-left: 25px">
                        <asp:Label ID="lblunderUp" runat="server" Text="> Upload" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Image1" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="156px" /><br />
                    <asp:Label ID="lblApeR" runat="server" Text="> APE Results" Height="16px" Width="177px"
                        CssClass="def"></asp:Label><br />
                    <asp:Image ImageAlign="Right" ID="Image2" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a href="APESearch.aspx" style="margin-left: 25px">
                        <asp:Label ID="lblApeSe" runat="server" Text="> Search" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Image3" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="156px" /><br />
                    <a href="APEUpload.aspx" style="margin-left: 25px">
                        <asp:Label ID="lblapeUp" runat="server" Text="> Upload" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Image4" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="156px" /><br />
                    <asp:Label ID="lblempHis" runat="server" Text="> Employment History" Height="16px"
                        Width="177px" CssClass="def"></asp:Label><br />
                    <asp:Image ImageAlign="Right" ID="Image5" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a href="HistoryInternal.aspx" style="margin-left: 25px">
                        <asp:Label ID="lblHIn" runat="server" Text="> Internal" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Image6" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="156px" /><br />
                    <a href="HistoryExternal.aspx" style="margin-left: 25px">
                        <asp:Label ID="lblHEx" runat="server" Text="> External" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Image7" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="156px" /><br />
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
                <td style="width: 82px">
                    <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Resource ID"></asp:Label>
                </td>
                <td style="width: 237px">
                    <asp:TextBox ID="txtresource" runat="server" Font-Names="Arial" Height="16px" Width="195px"></asp:TextBox>
                    <asp:ImageButton ID="cmdBrowse" runat="server" Height="16px" ImageUrl="~/images/searchlens.jpg"
                        Width="20px" />
                </td>
                <td style="width: 50px">
                    <asp:Label ID="Label169" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtname" runat="server" Font-Names="Arial" Height="16px" Width="230px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 82px">
                    <asp:Label ID="Label168" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Date"></asp:Label>
                </td>
                <td style="width: 237px">
                    <asp:TextBox runat="server" Font-Names="Arial" Font-Size="12px" Height="16px" Width="218px"
                        ID="txtdate" ReadOnly="false"></asp:TextBox>
                    <asp:CalendarExtender ID="calextend" runat="server" TargetControlID="txtdate" Enabled="true">
                    </asp:CalendarExtender>
                </td>
                <td style="width: 50px">
                    <asp:Label ID="Label170" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Type"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="cbotype" runat="server" Height="20px" Width="234px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Security</asp:ListItem>
                    <asp:ListItem>Joint/Vault</asp:ListItem>
                    <asp:ListItem>Deed</asp:ListItem>
                    <asp:ListItem>Appliances Appraiser</asp:ListItem>
                    <asp:ListItem>Employee Confidentially</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 82px">
                    &nbsp;
                </td>
                <td style="width: 237px">
                    &nbsp;
                </td>
                <td style="width: 50px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 82px">
                    &nbsp;
                </td>
                <td style="width: 237px">
                    &nbsp;
                </td>
                <td style="width: 50px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 82px">
                    &nbsp;
                </td>
                <td colspan="3">
                    <asp:Label ID="Label171" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Filename"></asp:Label>
                    &nbsp;<asp:FileUpload ID="fUpUnder" runat="server" Font-Names="Arial" Font-Size="12px"
                        Height="19px" Width="394px" />
                </td>
            </tr>
        </table>
        <table style="width: 100%;">
            <tr>
                <td style="width: 95px; height: 15px">
                </td>
                <td style="height: 15px; width: 468px; text-align: center">
                    <asp:Label ID="lblnotice" runat="server" Font-Names="Arial" Font-Size="12px" Text=" "></asp:Label>
                    <asp:ImageButton ID="cmdUpload" runat="server" Height="25px" ImageUrl="~/images/buttons/upload.gif"
                        Width="75px" />
                </td>
                <td style="height: 15px">
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
            <td style="width: 609px">
                <asp:Label ID="lblheader" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="DodgerBlue" Text="HRMD &gt; Records &gt; Documents &gt; HRMD Documents ">
                </asp:Label>
                <asp:Label ID="lblheader2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Black" Text="&gt; Undertakings" Font-Underline="True">
                </asp:Label>
            </td>
            <td style="text-align: right">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Gray" Text="View Access"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
