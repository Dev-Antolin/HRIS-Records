
<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/ManagerMasterPage.master"
    AutoEventWireup="false" CodeFile="manEvaluationStatus.aspx.vb" Inherits="recMANAGERinfo_Evaluation_manReceiveEval"
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
                    <a href="manReceiveEval.aspx">
                        <asp:Label ID="Label4" runat="server" Text="> Receive Evaluation" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Image1" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a style="color: red; font-size: small;">
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
        <table style="width: 100%;">
            <tr>
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 748px">
                    <asp:Panel ID="panelGrid" runat="server" BackColor="#666666" BorderColor="Black"
                        BorderStyle="Solid" BorderWidth="2px" Height="221px" Width="734px">
                        <asp:GridView ID="dgridEval" runat="server" AutoGenerateColumns="False" BackColor="White"
                            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black"
                            GridLines="Vertical" Height="221px" Width="734px">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:BoundField HeaderText="Resource ID" />
                                <asp:BoundField HeaderText="Name" />
                                <asp:BoundField HeaderText="Division/Region" />
                                <asp:BoundField HeaderText="Department Area" />
                                <asp:BoundField HeaderText="Branch" />
                                <asp:BoundField HeaderText="Status" />
                                <asp:BoundField HeaderText="See Details" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Height="14px" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        </asp:GridView>
                    </asp:Panel>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
        <br />
        <asp:Panel ID="panelClearance" runat="server" Height="178px">
            <table style="width: 100%;">
                <tr>
                    <td style="width: 96px">
                        &nbsp;
                    </td>
                    <td style="width: 128px">
                        <asp:Label ID="Label163" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                            Text="Resource ID"></asp:Label>
                    </td>
                    <td style="width: 177px">
                        <asp:TextBox ID="txtResourceID" runat="server" Font-Names="Arial" Font-Size="12px"
                            Height="16px" Width="164px"></asp:TextBox>
                        <asp:FilteredTextBoxExtender ID="ftbeResource" runat="server" TargetControlID="txtResourceID"
                            FilterType="Custom, Numbers" ValidChars="-">
                        </asp:FilteredTextBoxExtender>
                    </td>
                    <td style="width: 98px">
                        <asp:Label ID="Label168" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                            Text="Evaluation Date"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEvalDate" runat="server" Font-Names="Arial" Font-Size="12px"
                            Height="16px" Width="164px" ReadOnly="True"></asp:TextBox>
                        <asp:CalendarExtender ID="ceEval" runat="server" TargetControlID="txtEvalDate">
                        </asp:CalendarExtender>
                    </td>
                </tr>
                <tr>
                    <td style="width: 96px">
                        &nbsp;
                    </td>
                    <td style="width: 128px">
                        <asp:Label ID="Label164" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                            Text="Name of Ratee"></asp:Label>
                    </td>
                    <td style="width: 177px">
                        <asp:TextBox ID="txtRatee" runat="server" Font-Names="Arial" Font-Size="12px" Height="16px"
                            Width="164px"></asp:TextBox>
                    </td>
                    <td style="width: 98px">
                        <asp:Label ID="Label169" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                            Text="Status"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtStatus" runat="server" Font-Names="Arial" Font-Size="12px" Height="16px"
                            Width="164px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 96px">
                        &nbsp;
                    </td>
                    <td style="width: 128px">
                        <asp:Label ID="Label165" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                            Text="Division/Region"></asp:Label>
                    </td>
                    <td style="width: 177px">
                        <asp:TextBox ID="txtDivision" runat="server" Font-Names="Arial" Font-Size="12px"
                            Height="16px" Width="164px"></asp:TextBox>
                    </td>
                    <td style="width: 98px">
                        <asp:Label ID="Label170" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                            Text="Area"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtArea" runat="server" Font-Names="Arial" Font-Size="12px" Height="16px"
                            Width="164px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 96px">
                        &nbsp;
                    </td>
                    <td style="width: 128px">
                        <asp:Label ID="Label166" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                            Text="Department/Branch"></asp:Label>
                    </td>
                    <td style="width: 177px">
                        <asp:TextBox ID="txtBranch" runat="server" Font-Names="Arial" Font-Size="12px" Height="16px"
                            Width="164px"></asp:TextBox>
                    </td>
                    <td style="width: 98px">
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label171" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                            Text="Period Covered"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 96px">
                        &nbsp;
                    </td>
                    <td style="width: 128px">
                        <asp:Label ID="Label167" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                            Text="Reason for Evaluation"></asp:Label>
                    </td>
                    <td style="width: 177px">
                        <asp:DropDownList ID="cboReason" runat="server" Height="20px" Width="168px">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>Performance</asp:ListItem>
                            <asp:ListItem>Merit</asp:ListItem>
                            <asp:ListItem>End of Probation</asp:ListItem>
                            <asp:ListItem>Promotion</asp:ListItem>
                            <asp:ListItem>Others</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="width: 98px">
                        <asp:Label ID="Label172" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                            Text="From"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtFrom" runat="server" Font-Names="Arial" Font-Size="12px" Height="16px"
                            Width="68px" ReadOnly="True"></asp:TextBox>
                        <asp:CalendarExtender ID="ceFrm" runat="server" TargetControlID="txtFrom">
                        </asp:CalendarExtender>
                        &nbsp;<asp:Label ID="Label173" runat="server" Font-Names="Arial" Font-Size="12px"
                            ForeColor="Black" Text="To"></asp:Label>
                        &nbsp;<asp:TextBox ID="txtTo" runat="server" Font-Names="Arial" Font-Size="12px"
                            Height="16px" Width="68px" ReadOnly="True"></asp:TextBox>
                        <asp:CalendarExtender ID="ceTo" runat="server" TargetControlID="txtTo">
                        </asp:CalendarExtender>
                    </td>
                </tr>
            </table>
            <br />
            <table style="width: 100%;">
                <tr>
                    <td style="width: 508px">
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        <asp:ImageButton ID="cmdClosed" runat="server" Height="25px" ImageUrl="~/images/Buttons/closed.gif"
                            Width="75px" />
                        <asp:ImageButton ID="cmdPrint" runat="server" Height="25px" ImageUrl="~/images/Buttons/print.gif"
                            Width="75px" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="contentlabel">
    <table style="width: 100%; height: 1px">
        <tr>
            <td style="width: 15px">
                &nbsp;
            </td>
            <td style="width: 598px">
                <asp:Label ID="lblheader" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="DodgerBlue" Text="Manager &gt; Records &gt; Evaluation ">
                </asp:Label>
                <asp:Label ID="lblheader2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Black" Text="&gt; Evaluation Status" Font-Underline="True">
                </asp:Label>
            </td>
            <td style="text-align: right">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Gray" Text="Read/Write Access"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
