<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/HRMasterPage.master"
    AutoEventWireup="false" CodeFile="recTrainings.aspx.vb" Inherits="recHRMDinfo_recTrainings"
    Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="width: 195px; height: 374px;">
        <div style="height: 172px">
            <ul style="list-style: none;">
                <li class="label"><a class="name">Employee Training</a></li></ul>
            <br />
            <ul style="list-style: none;">
                <li class="effects2"><a style="color: red; font-size: small;">
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
                <li class="effects2"><a href="recTrainingScoreCard.aspx">
                    <asp:Label ID="status" runat="server" Text="> Training Scorecard" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Imgempstatusline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                </li>
            </ul>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 100%; height: 73px;">
        <tr>
            <td style="width: 15px">
                &nbsp;
            </td>
            <td style="width: 54px">
                <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                    Text="Group by"></asp:Label>
            </td>
            <td style="width: 216px">
                <asp:DropDownList ID="cmdGroupBy" runat="server" Font-Names="Arial" Font-Size="12px"
                    Height="20px" Width="195px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Support</asp:ListItem>
                    <asp:ListItem>Operation</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 95px">
                <asp:Label ID="Label7" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                    Text="Region/Division"></asp:Label>
            </td>
            <td style="width: 219px">
                <asp:DropDownList ID="cmbTrainReg" runat="server" Font-Names="Arial" Font-Size="12px"
                    Height="20px" Width="195px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>MIS</asp:ListItem>
                    <asp:ListItem>FSD</asp:ListItem>
                    <asp:ListItem>Cebu South</asp:ListItem>
                    <asp:ListItem>Cebu North</asp:ListItem>
                    <asp:ListItem>Cebu Central</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:ImageButton ID="cmdSearch" runat="server" Height="25px" ImageUrl="~/images/Buttons/search.gif"
                    Width="75px" />
            </td>
        </tr>
        <tr>
            <td style="width: 15px">
                &nbsp;
            </td>
            <td>
                <asp:Label ID="Label5" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                    Text="From"></asp:Label>
            </td>
            <td style="width: 216px">
                <asp:TextBox ID="txtFrm" runat="server" Font-Names="Arial" Font-Size="12px" Height="16px"
                    Width="84px" ReadOnly="false"></asp:TextBox>
                <asp:CalendarExtender ID="xtend" runat="server" TargetControlID="txtFrm" Enabled="true">
                </asp:CalendarExtender>
                <asp:Label ID="Label6" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                    Text="To"></asp:Label>
                <asp:TextBox ID="txtTo" runat="server" Font-Names="Arial" Font-Size="12px" Height="16px"
                    Width="84px" ReadOnly="false"></asp:TextBox>
                <asp:CalendarExtender ID="calxtend2" runat="server" TargetControlID="txtTo" Enabled="true">
                </asp:CalendarExtender>
            </td>
            <td style="width: 95px">
                <asp:Label ID="Label8" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                    Text="Trainings"></asp:Label>
            </td>
            <td style="width: 219px">
                <asp:DropDownList ID="cmdGroupBy1" runat="server" Font-Names="Arial" Font-Size="12px"
                    Height="20px" Width="195px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>JGT</asp:ListItem>
                    <asp:ListItem>WACSS</asp:ListItem>
                    <asp:ListItem>JWAS</asp:ListItem>
                    <asp:ListItem>ECSS</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:ImageButton ID="cmdAdd" runat="server" Height="25px" ImageUrl="~/images/Buttons/add.gif"
                    Width="75px" />
            </td>
        </tr>
        <tr>
            <td style="width: 15px">
                &nbsp;
            </td>
            <td style="width: 54px">
                &nbsp;
            </td>
            <td style="width: 216px">
                &nbsp;
            </td>
            <td style="width: 95px">
                &nbsp;
            </td>
            <td style="width: 219px">
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
    <br />
    <br />
    <table style="width: 100%; height: 167px;">
        <tr>
            <td style="width: 15px">
                &nbsp;
            </td>
            <td style="width: 610px">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="12px"
                    ForeColor="Black" Text="List of Trainings"></asp:Label>
            </td>
            <td style="width: 28px">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 15px">
            </td>
            <td style="width: 610px">
                <asp:Panel ID="Panel2" runat="server" BackColor="#666666" BorderColor="Black" BorderStyle="Solid"
                    BorderWidth="2px" Height="175px" Width="657px">
                    <asp:GridView ID="dgridChildren0" runat="server" AutoGenerateColumns="False" BackColor="White"
                        BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black"
                        GridLines="Vertical" Height="176px" Width="657px">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:BoundField DataField="Date" HeaderText="Date" ReadOnly="True" />
                            <asp:BoundField DataField="Employee Name" HeaderText="Employee Name" 
                                ReadOnly="True" />
                            <asp:BoundField DataField="Area/Department" HeaderText="Area/Department" 
                                ReadOnly="True" />
                            <asp:BoundField DataField="Branch" HeaderText="Branch" ReadOnly="True" />
                            <asp:BoundField DataField="Course" HeaderText="Course" ReadOnly="True" />
                            <asp:BoundField DataField="Remarks" HeaderText="Remarks" ReadOnly="True" />
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
    <br />
    <br />
    <table style="width: 100%;">
        <tr>
            <td style="width: 53px">
                &nbsp;
            </td>
            <td style="width: 625px">
                <asp:Panel ID="panelAdd" runat="server" BorderStyle="None" Height="303px" Width="386px"
                    BackColor="#F1EFEF">
                    <table style="width: 96%; height: 255px;">
                        <tr>
                            <td style="width: 24px">
                                &nbsp;
                            </td>
                            <td style="width: 83px">
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
                            <td style="width: 24px">
                                &nbsp;
                            </td>
                            <td style="width: 83px">
                                <asp:Label ID="Label162" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                    Text="Date Attended" Visible="False"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtdateAttended" runat="server" Height="16px" Font-Names="Arial"
                                    Font-Size="12px" Width="122px" Visible="False"></asp:TextBox>
                                <asp:CalendarExtender ID="calPopUp" runat="server" TargetControlID="txtdateAttended">
                                </asp:CalendarExtender>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 24px">
                                &nbsp;
                            </td>
                            <td style="width: 83px">
                                &nbsp;
                            </td>
                            <td>
                                <asp:RadioButtonList ID="optCourses" runat="server" Font-Names="Arial" Font-Size="12px"
                                    ForeColor="Black" Visible="False">
                                    <asp:ListItem> ML Courses</asp:ListItem>
                                    <asp:ListItem> Other Courses</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 24px">
                                &nbsp;
                            </td>
                            <td style="width: 83px">
                                <asp:Label ID="Label163" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                    Text="Course ID" Visible="False"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtCourse" runat="server" Height="16px" Font-Names="Arial" Font-Size="12px"
                                    Width="122px" Visible="False"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 24px">
                                &nbsp;
                            </td>
                            <td style="width: 83px">
                                <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                    Text="Type"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtType" runat="server" Height="16px" Font-Names="Arial" Font-Size="12px"
                                    Width="122px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 24px">
                                &nbsp;
                            </td>
                            <td style="width: 83px">
                                <asp:Label ID="Label164" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                    Text="Description"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtDescription" runat="server" Height="97px" Width="244px" Font-Names="Arial"
                                    Font-Size="12px" TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 24px">
                                &nbsp;
                            </td>
                            <td style="width: 83px">
                                <asp:Label ID="Label165" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                    Text="Attachments" Visible="False"></asp:Label>
                            </td>
                            <td>
                                <asp:FileUpload ID="fUpAttachments" runat="server" Font-Names="Arial" Font-Size="12px"
                                    Height="19px" Width="249px" Visible="False" />
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 24px">
                                &nbsp;
                            </td>
                            <td style="width: 83px">
                                <asp:Label ID="Label166" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                    Text="Facilitator"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtFacilitator" runat="server" Height="16px" 
                                    Font-Names="Arial" Font-Size="12px"
                                    Width="240px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                    <br />
                    <table style="width: 96%;">
                        <tr>
                            <td style="width: 201px">
                                &nbsp;
                            </td>
                            <td style="width: 78px">
                                <asp:ImageButton ID="cmdSave" runat="server" Height="25px" ImageUrl="~/images/Buttons/Save.gif"
                                    Width="75px" />
                            </td>
                            <td>
                                <asp:ImageButton ID="cmdCancel" runat="server" Height="25px" ImageUrl="~/images/Buttons/cancel.gif"
                                    Width="75px" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <asp:RoundedCornersExtender ID="rc1" runat="server" TargetControlID="panelAdd" Radius="10"
                    Corners="TopLeft">
                </asp:RoundedCornersExtender>
                <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="cmdAdd"
                    PopupControlID="panelAdd" DropShadow="true" BackgroundCssClass="popUpBackground"
                    CancelControlID="cmdCancel">
                </asp:ModalPopupExtender>
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
            <td style="width: 629px">
                <asp:Label ID="lblheader" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="DodgerBlue" Text="HRMD &gt; Records &gt; Trainings &gt; Employee Training ">
                </asp:Label>
                <asp:Label ID="lblheader2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Black" Text="&gt; Trainings" Font-Underline="True">
                </asp:Label>
            </td>
            <td style="text-align: right">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Gray" Text="View Access"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
