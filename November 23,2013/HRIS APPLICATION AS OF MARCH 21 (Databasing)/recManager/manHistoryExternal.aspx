<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/ManagerMasterPage.master"
    AutoEventWireup="false" CodeFile="manHistoryExternal.aspx.vb" Inherits="recMANAGERinfo_Documents_manDiscipline"
    Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="width: 195px; height: 374px;">
        <div style="height: 201px">
            <ul style="list-style: none;">
                <li class="label"><a class="name">Manager Documents</a></li></ul>
            <br />
            <ul style="list-style: none;">
                <li class="effects2"><a href="Attachments.aspx">
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
                    <a style="color: red; font-size: small; margin-left: 25px">
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
        <table style="width: 100%; height: 41px;">
            <tr>
                <td style="width: 14px">
                    &nbsp;
                </td>
                <td style="width: 75px">
                    <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Resource ID"></asp:Label>
                </td>
                <td style="width: 216px">
                    <asp:TextBox ID="txtresource" runat="server" Font-Names="Arial" Height="16px" Width="173px"></asp:TextBox>
                    <asp:ImageButton ID="cmdBrowse" runat="server" Height="16px" ImageUrl="~/images/searchlens.jpg"
                        Width="20px" />
                </td>
                <td style="width: 43px">
                    <asp:Label ID="Label171" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Name"></asp:Label>
                </td>
                <td style="width: 246px">
                    &nbsp;
                    <asp:TextBox ID="txtName0" runat="server" Font-Names="Arial" Height="16px" Width="230px"></asp:TextBox>
                </td>
                <td>
                    <asp:ImageButton ID="cmdSearch" runat="server" Height="25px" ImageUrl="~/images/Buttons/search.gif"
                        Width="75px" />
                </td>
            </tr>
        </table>
        <br />
        <table style="width: 100%;">
            <tr>
                <td style="width: 17px">
                    &nbsp;
                </td>
                <td style="width: 714px">
                    <asp:Panel ID="panelDisplay" runat="server" Height="269px" Width="659px">
                        <asp:Image ID="Image32" runat="server" Height="269px" Width="659px" Style="margin-right: 0px" />
                    </asp:Panel>
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
            <td style="width: 637px">
                <asp:Label ID="lblheader" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="DodgerBlue" Text="Manager &gt; Documents &gt; Manager Documents &gt; Employment History ">
                </asp:Label>
                <asp:Label ID="lblheader2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Black" Text="&gt; External" Font-Underline="True">
                </asp:Label>
            </td>
            <td style="text-align: right">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Gray" Text="View Access"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
