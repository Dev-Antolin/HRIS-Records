<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/ManagerMasterPage.master"
    AutoEventWireup="false" CodeFile="ClearanceApproval.aspx.vb" Inherits="recMANAGERinfo_Profile_ClearancApproval"
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
                    <a style="color: red; font-size: small;">
                        <asp:Label ID="Label4" runat="server" Text="> Clearance Approval" Height="16px" Width="177px"></asp:Label></a><br />
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
                    <a href="manEmployeeStatus.aspx">
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
                    &nbsp;
                </td>
                <td style="width: 710px">
                    <asp:Panel ID="panelGrid" runat="server" BackColor="#666666" BorderColor="Black"
                        BorderStyle="Solid" BorderWidth="2px" Height="192px" Width="734px">
                        <asp:GridView runat="server" AutoGenerateColumns="False" CellPadding="3" GridLines="Vertical"
                            BackColor="White" BorderColor="#999999" BorderWidth="1px" BorderStyle="Solid" OnRowCommand="dgmovement_RowCommand"
                            ForeColor="Black" Height="94px" Width="734px" ID="dgridApproval" DataKeyNames="employeeid">
                            <AlternatingRowStyle BackColor="#CCCCCC"></AlternatingRowStyle>
                            <Columns>
                                <asp:BoundField HeaderText="Resource ID" DataField="employeeid"></asp:BoundField>
                                <asp:BoundField HeaderText="Name" DataField="Fullname"></asp:BoundField>
                                <asp:BoundField HeaderText="Designation" DataField="fullname"></asp:BoundField>
                                <asp:BoundField HeaderText="Accountability"></asp:BoundField>
                                <asp:BoundField HeaderText="Date Hired" DataField="DateHired"></asp:BoundField>
                                <asp:BoundField HeaderText="Status" DataField="clearancestatus"></asp:BoundField>
                                <asp:BoundField HeaderText="Days Remaining"></asp:BoundField>
                                <asp:CommandField HeaderText="Details" SelectText="See Details" 
                                    ShowSelectButton="True" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC"></FooterStyle>
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Height="14px">
                            </HeaderStyle>
                            <PagerStyle HorizontalAlign="Center" BackColor="#999999" ForeColor="Black"></PagerStyle>
                            <%--<SelectedRowStyle BackColor="skyblue" Font-Bold="True" ForeColor="White"></SelectedRowStyle>--%>
                        </asp:GridView>
                    </asp:Panel>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
        <br />
        <br />
        <div>
            <asp:Panel ID="panelClearance" runat="server" Height="178px">
                <table style="width: 100%;">
                    <tr>
                        <td style="width: 64px">
                            &nbsp;
                        </td>
                        <td style="width: 113px">
                            <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                Text="Clearance No."></asp:Label>
                            &nbsp;
                        </td>
                        <td style="width: 178px">
                            <asp:TextBox ID="txtClearanceNo" runat="server" Font-Names="Arial" Font-Size="12px"
                                Height="16px" Width="164px"></asp:TextBox>
                            <asp:FilteredTextBoxExtender ID="ftbeClearance" runat="server" TargetControlID="txtClearanceNo"
                                FilterType="Numbers">
                            </asp:FilteredTextBoxExtender>
                        </td>
                        <td style="width: 7px">
                            &nbsp;
                        </td>
                        <td style="width: 144px">
                            <asp:Label ID="Label167" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                Text="Date Hired"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtDateHired" runat="server" Font-Names="Arial" Font-Size="12px"
                                Height="16px" Width="164px" ReadOnly="True"></asp:TextBox>
                            <asp:CalendarExtender ID="ceHired" runat="server" TargetControlID="txtDateHired">
                            </asp:CalendarExtender>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 64px">
                        </td>
                        <td style="width: 113px">
                            <asp:Label ID="Label162" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                Text="Resource ID"></asp:Label>
                        </td>
                        <td style="width: 178px">
                            <asp:TextBox ID="txtResourceID" runat="server" Font-Names="Arial" Font-Size="12px"
                                Height="16px" Width="164px"></asp:TextBox>
                            <asp:FilteredTextBoxExtender ID="ftbResource" runat="server" TargetControlID="txtResourceID"
                                FilterType="Custom, Numbers" ValidChars="-">
                            </asp:FilteredTextBoxExtender>
                        </td>
                        <td style="width: 7px">
                        </td>
                        <td style="width: 144px">
                            <asp:Label ID="Label168" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                Text="Last Date of Employment"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtLastDate" runat="server" Font-Names="Arial" Font-Size="12px"
                                Height="16px" Width="164px" ReadOnly="True"></asp:TextBox>
                            <asp:CalendarExtender ID="csLastDate" runat="server" TargetControlID="txtLastDate">
                            </asp:CalendarExtender>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 64px">
                        </td>
                        <td style="width: 113px">
                            <asp:Label ID="Label163" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                Text="Name"></asp:Label>
                        </td>
                        <td style="width: 178px">
                            <asp:TextBox ID="txtName" runat="server" Font-Names="Arial" Font-Size="12px" Height="16px"
                                Width="164px"></asp:TextBox>
                        </td>
                        <td style="width: 7px">
                        </td>
                        <td style="width: 144px">
                            <asp:Label ID="Label169" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                Text="Division/Region"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtDivision" runat="server" Font-Names="Arial" Font-Size="12px"
                                Height="16px" Width="164px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 64px">
                        </td>
                        <td style="width: 113px">
                            <asp:Label ID="Label164" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                Text="Designation"></asp:Label>
                        </td>
                        <td style="width: 178px">
                            <asp:TextBox ID="txtDesignation" runat="server" Font-Names="Arial" Font-Size="12px"
                                Height="16px" Width="164px"></asp:TextBox>
                        </td>
                        <td style="width: 7px">
                        </td>
                        <td style="width: 144px">
                            <asp:Label ID="Label170" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                Text="Date Approved"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtDateApproved" runat="server" Font-Names="Arial" Font-Size="12px"
                                Height="16px" Width="164px" ReadOnly="True"></asp:TextBox>
                            <asp:CalendarExtender ID="ceApproved" runat="server" TargetControlID="txtDateApproved">
                            </asp:CalendarExtender>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 64px">
                        </td>
                        <td style="width: 113px">
                            <asp:Label ID="Label165" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                Text="Department/Branch"></asp:Label>
                        </td>
                        <td style="width: 178px">
                            <asp:TextBox ID="txtBranch" runat="server" Font-Names="Arial" Font-Size="12px" Height="16px"
                                Width="164px"></asp:TextBox>
                        </td>
                        <td style="width: 7px">
                        </td>
                        <td style="width: 144px">
                            <asp:Label ID="Label171" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                Text="Status"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtStatus" runat="server" Font-Names="Arial" Font-Size="12px" Height="16px"
                                Width="164px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 64px">
                        </td>
                        <td style="width: 113px">
                            <asp:Label ID="Label166" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                Text="Accountability"></asp:Label>
                        </td>
                        <td style="width: 178px">
                            <asp:TextBox ID="txtAccountability" runat="server" Font-Names="Arial" Font-Size="12px"
                                Height="16px" Width="164px"></asp:TextBox>
                            <asp:FilteredTextBoxExtender ID="ftbeacc" runat="server" TargetControlID="txtAccountability"
                                FilterType="Custom, Numbers" ValidChars=".,">
                            </asp:FilteredTextBoxExtender>
                        </td>
                        <td style="width: 7px">
                        </td>
                        <td style="width: 144px">
                            <asp:Label ID="Label172" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                Text="Cleared by"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtClearedBy" runat="server" Font-Names="Arial" Font-Size="12px"
                                Height="16px" Width="164px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <br />
                <table style="width: 100%;">
                    <tr>
                        <td style="width: 516px">
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <asp:ImageButton ID="cmdSubmit" runat="server" Height="25px" ImageUrl="~/images/Buttons/submit.gif"
                                Width="75px" />
                            <asp:ImageButton ID="cmdApprove" runat="server" Height="25px" ImageUrl="~/images/buttons/Approve.gif"
                                Width="95px" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="contentlabel">
    <table style="width: 100%; height: 1px">
        <tr>
            <td style="width: 15px">
                &nbsp;
            </td>
            <td style="width: 590px">
                <asp:Label ID="lblheader" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="DodgerBlue" Text="Manager &gt; Records &gt; Profile &gt; Workforce Administration ">
                </asp:Label>
                <asp:Label ID="lblheader2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Black" Text="&gt; Clearance Approval" Font-Underline="True">
                </asp:Label>
            </td>
            <td style="text-align: right">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Gray" Text="Read/Write Access"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
