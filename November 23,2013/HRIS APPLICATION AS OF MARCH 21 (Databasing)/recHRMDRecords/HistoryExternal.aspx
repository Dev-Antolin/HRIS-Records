<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/HRMasterPage.master"
    AutoEventWireup="false" CodeFile="HistoryExternal.aspx.vb" Inherits="recHRMDinfo_Documents_HistoryExternal"
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
                    <a href="APESearch.aspx" style="margin-left: 25px">
                        <asp:Label ID="lblApeSe" runat="server" Text="> Search" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Image3" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="156px" /><br />
                    <a style="margin-left: 25px" href="APEUpload.aspx">
                        <asp:Label ID="lblapeUp" runat="server" Text="> Upload" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Image4" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="156px" /><br />
                    <asp:Label ID="lblempHis" runat="server" Text="> Employment History" Height="16px"
                        Width="177px" CssClass="def"></asp:Label><br />
                    <asp:Image ImageAlign="Right" ID="Image5" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a style="margin-left: 25px" href="HistoryInternal.aspx">
                        <asp:Label ID="lblHIn" runat="server" Text="> Internal" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Image6" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="156px" /><br />
                    <a style="color: red; font-size: small; margin-left: 25px">
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
                <td style="width: 244px">
                    &nbsp;
                    <asp:TextBox ID="txtName0" runat="server" Font-Names="Arial" Height="16px" Width="230px"></asp:TextBox>
                </td>
                <td>
                    <asp:ImageButton ID="cmdUpload" runat="server" Height="25px" ImageUrl="~/images/buttons/upload.gif"
                        Width="75px" />
                </td>
            </tr>
        </table>
        <table style="width: 100%; height: 133px;">
            <tr>
                <td style="width: 15px">
                </td>
                <td style="width: 610px">
                    <asp:Panel ID="Panel2" runat="server" BackColor="#666666" BorderColor="Black" BorderStyle="Solid"
                        BorderWidth="2px" Height="105px" Width="657px">
                        <asp:GridView ID="dgridChildren0" runat="server" AutoGenerateColumns="False" BackColor="White"
                            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black"
                            GridLines="Vertical" Height="104px" Width="657px">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:BoundField HeaderText="Company" />
                                <asp:BoundField HeaderText="Description" />
                                <asp:BoundField HeaderText="View" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Height="14px" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        </asp:GridView>
                    </asp:Panel>
                </td>
                <td style="width: 28px">
                    &nbsp;
                </td>
            </tr>
        </table>
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
            <td style="width: 595px">
                <asp:Label ID="lblheader" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="DodgerBlue" Text="HRMD &gt; Records &gt; Documents &gt; HRMD Documents &gt; Employment History ">
                </asp:Label>
                <asp:Label ID="lblheader2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Black" Text="&gt; External" Font-Underline="True">
                </asp:Label>
            </td>
            <td style="text-align: right">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Gray" Text="View Access"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
