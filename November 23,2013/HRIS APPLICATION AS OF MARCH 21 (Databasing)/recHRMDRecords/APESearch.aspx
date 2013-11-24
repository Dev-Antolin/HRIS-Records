<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/HRMasterPage.master"
    AutoEventWireup="false" CodeFile="APESearch.aspx.vb" Inherits="recHRMDinfo_Documents_APESearch"
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
                    <a style="margin-left: 25px" href="UndertakingUpload.aspx">
                        <asp:Label ID="lblunderUp" runat="server" Text="> Upload" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Image1" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="156px" /><br />
                    <asp:Label ID="lblApeR" runat="server" Text="> APE Results" Height="16px" Width="177px"
                        CssClass="def"></asp:Label><br />
                    <asp:Image ImageAlign="Right" ID="Image2" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a style="color: red; font-size: small; margin-left: 25px">
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
                <td style="width: 76px">
                    <asp:Label ID="Label171" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Resource ID"></asp:Label>
                </td>
                <td style="width: 251px">
                    <asp:TextBox ID="txtresource" runat="server" Font-Names="Arial" Height="16px" Width="195px"></asp:TextBox>
                    <asp:ImageButton ID="cmdBrowse" runat="server" Height="16px" ImageUrl="~/images/searchlens.jpg"
                        Width="20px" />
                </td>
                <td style="width: 38px">
                    <asp:Label ID="Label5" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Year"></asp:Label>
                </td>
                <td style="width: 129px">
                    &nbsp;<asp:DropDownList runat="server" Font-Names="Arial" Height="20px" Width="120px"
                        ID="cboYear">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>2012</asp:ListItem>
                        <asp:ListItem>2011</asp:ListItem>
                        <asp:ListItem>2010</asp:ListItem>
                        <asp:ListItem>2009</asp:ListItem>
                        <asp:ListItem>2008</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;
                </td>
                <td>
                    <asp:ImageButton ID="cmdView" runat="server" Height="25px" ImageUrl="~/images/Buttons/view.gif"
                        Width="75px" />
                </td>
            </tr>
        </table>
        <table style="width: 100%; height: 28px;">
            <tr>
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 76px">
                    <asp:Label ID="Label169" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Name"></asp:Label>
                </td>
                <td style="width: 251px">
                    <asp:TextBox ID="txtdate" runat="server" Font-Names="Arial" Height="16px" Width="216px"></asp:TextBox>
                </td>
                <td style="width: 38px">
                    <asp:Label ID="Label170" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Type"></asp:Label>
                </td>
                <td style="width: 225px">
                    <asp:DropDownList runat="server" Font-Names="Arial" Height="20px" Width="205px" ID="cboType">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Drug Test</asp:ListItem>
                        <asp:ListItem>FECA</asp:ListItem>
                        <asp:ListItem>Physical Examination</asp:ListItem>
                        <asp:ListItem>Urine Exam</asp:ListItem>
                        <asp:ListItem>Blood Test</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 76px">
                    &nbsp;
                </td>
                <td style="width: 251px">
                    &nbsp;
                </td>
                <td style="width: 38px">
                    &nbsp;
                </td>
                <td style="width: 225px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
        <table style="width: 100%; height: 322px;">
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
                    <asp:Panel ID="panelDisplay" runat="server" Height="298px" Width="708px">
                        <asp:Image ID="Image29" runat="server" Height="298px" Width="708px" Visible="False" />
                    </asp:Panel>
                </td>
                <td style="width: 28px">
                    &nbsp;
                </td>
            </tr>
        </table>
        <table style="width: 100%;">
            <tr>
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 112px">
                    <asp:ImageButton ID="cmdPreview" runat="server" Height="25px" ImageUrl="~/images/Buttons/prevArrow.gif"
                        Width="75px" Visible="False" />
                </td>
                <td style="width: 146px">
                    &nbsp;
                </td>
                <td style="width: 27px">
                    &nbsp;
                </td>
                <td style="width: 293px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
                <td style="width: 7px">
                    <asp:ImageButton ID="cmdNext" runat="server" Height="25px" ImageUrl="~/images/Buttons/nextArrow.gif"
                        Width="75px" Visible="False" />
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
            <td style="width: 569px">
                <asp:Label ID="lblheader" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="DodgerBlue" Text="HRMD &gt; Records &gt; Documents &gt; HRMD Documents ">
                </asp:Label>
                <asp:Label ID="lblheader2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Black" Text="&gt; APE Results" Font-Underline="True">
                </asp:Label>
            </td>
            <td style="text-align: right">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Gray" Text="View Access"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
