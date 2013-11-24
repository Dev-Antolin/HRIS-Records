<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/HRMasterPage.master"
    AutoEventWireup="false" CodeFile="recTrainingModules.aspx.vb" Inherits="recHRMDinfo_recTrainingModules"
    Title="Trainings" %>

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
                    <a style="color: red; font-size: small;">
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
    <table style="width: 100%; height: 44px;">
        <tr>
            <td style="width: 15px; height: 18px;">
                &nbsp;
            </td>
            <td style="width: 38px; height: 18px;">
                <asp:Label ID="lblyear" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                    Text="Year"></asp:Label>
            </td>
            <td style="width: 84px; height: 18px;">
                <asp:TextBox ID="txtyear" runat="server" Font-Names="Arial" Height="16px" Width="76px"></asp:TextBox>
                <asp:FilteredTextBoxExtender ID="ftbeyear" runat="server" TargetControlID="txtyear"
                    FilterType="Numbers">
                </asp:FilteredTextBoxExtender>
            </td>
            <td style="width: 95px; height: 18px;">
                <asp:ImageButton ID="cmdSearch" runat="server" Height="25px" ImageUrl="~/images/Buttons/search.gif"
                    Width="75px" />
            </td>
            <td style="width: 219px; height: 18px;">
            </td>
            <td style="height: 18px">
                &nbsp;
            </td>
        </tr>
    </table>
    <br />
    <table style="width: 100%; height: 167px;">
        <tr>
            <td style="width: 15px">
                &nbsp;
            </td>
            <td style="width: 610px">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="12px"
                    ForeColor="Black" Text="List of Courses"></asp:Label>
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
                    <asp:GridView ID="dghrtmodule" runat="server" AutoGenerateColumns="False" BackColor="White"
                        BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                         ForeColor="Black" Height="16px" Width="657px" EnableTheming="False" 
                        EnableViewState="False" UseAccessibleHeader="False" EmptyDataText="No Records Found!"
                         EmptyDataRowStyle-BackColor=LightBlue EmptyDataRowStyle-Font-Size=30px EmptyDataRowStyle-HorizontalAlign=Center
                          EmptyDataRowStyle-VerticalAlign=Middle 
                        EmptyDataRowStyle-Font-Names = "papyrus">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <EmptyDataRowStyle BackColor="LightBlue" Font-Names="papyrus" Font-Size="30px" 
                            HorizontalAlign="Center" VerticalAlign="Middle" />
                        <Columns>
                            <asp:BoundField HeaderText="Course ID" DataField="courseid" >
                                <HeaderStyle Height="2px" />
                                <ItemStyle Height="5px" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="Course" DataField="type" >
                                <HeaderStyle Height="2px" />
                                <ItemStyle Height="5px" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="Description" DataField="Description" >
                                <HeaderStyle Height="2px" />
                                <ItemStyle Height="5px" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="Facilitator" DataField="Facilitator" >
                                <HeaderStyle Height="2px" />
                            </asp:BoundField>
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
            <td style="height: 27px">
                &nbsp;
            </td>
            <td style="height: 27px">
                &nbsp;
            </td>
            <td style="height: 27px">
                &nbsp;
            </td>
            <td style="height: 27px">
                &nbsp;
            </td>
            <td style="width: 415px; height: 27px;">
                &nbsp;
            </td>
            <td style="height: 27px">
                &nbsp;
            </td>
            <td style="height: 27px">
                <asp:ImageButton ID="cmdNew" runat="server" Height="25px" ImageUrl="~/images/Buttons/new.gif"
                    Width="75px" />
                <asp:ImageButton ID="cmdEdit" runat="server" Height="25px" ImageUrl="~/images/Buttons/edit.gif"
                    Width="75px" />
                <asp:ImageButton ID="cmdDelete" runat="server" Height="25px" ImageUrl="~/images/Buttons/Delete.gif"
                    Width="75px" />
            </td>
            <td style="height: 27px">
                &nbsp;
            </td>
        </tr>
    </table>
    <br />
    <table style="width: 100%;">
        <tr>
            <td style="width: 53px">
                &nbsp;
            </td>
            <td style="width: 625px">
                <asp:Panel ID="panelAdd" runat="server" BackColor="#F1EFEF" BorderStyle="None" Height="303px"
                    Width="386px">
                    <table style="width: 96%; height: 255px;">
                        <tr>
                            <td style="width: 24px">
                                &nbsp;
                            </td>
                            <td style="width: 69px">
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
                            <td style="width: 69px">
                                <asp:Label ID="Label162" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                    Text="Course ID"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtcourseID" runat="server" Height="16px" Font-Names="Arial" Font-Size="12px"
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
                            <td style="width: 69px">
                                &nbsp;
                            </td>
                            <td>
                                <asp:RadioButtonList ID="optCourses" runat="server" Font-Names="Arial" Font-Size="12px"
                                    ForeColor="Black">
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
                            <td style="width: 69px">
                                <asp:Label ID="Label163" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                    Text="Course"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtCourse" runat="server" Height="16px" Font-Names="Arial" Font-Size="12px"
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
                            <td style="width: 69px">
                                <asp:Label ID="Label164" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                    Text="Description"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtDescription" runat="server" Height="97px" Width="244px" Font-Names="Arial"
                                    Font-Size="12px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 24px">
                                &nbsp;
                            </td>
                            <td style="width: 69px">
                                <asp:Label ID="Label166" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                    Text="Facilitator"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtFacilitator" runat="server" Height="16px" Font-Names="Arial"
                                    Font-Size="12px" Width="122px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                    <br />
                    <table style="width: 96%;">
                        <tr>
                            <td style="width: 187px">
                                &nbsp;
                            </td>
                            <td>
                                <asp:ImageButton ID="cmdSave" runat="server" Height="25px" ImageUrl="~/images/Buttons/Save.gif"
                                    Width="75px" />
                                <asp:ImageButton ID="cmdCancel" runat="server" Height="25px" ImageUrl="~/images/Buttons/cancel.gif"
                                    Width="75px" />
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <asp:RoundedCornersExtender ID="rc1" runat="server" Corners="TopLeft" Radius="10"
                    TargetControlID="panelAdd">
                </asp:RoundedCornersExtender>
                <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" DropShadow="true"
                    TargetControlID="cmdNew" PopupControlID="panelAdd" CancelControlID="cmdCancel"
                    BackgroundCssClass="popUpBackground">
                </asp:ModalPopupExtender>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
    <br />
    <table style="width: 100%;">
        <tr>
            <td style="width: 53px">
                &nbsp;
            </td>
            <td style="width: 625px">
                <asp:Panel ID="panelEdit" runat="server" BackColor="#F1EFEF" BorderStyle="None" Height="303px"
                    Width="386px">
                    <table style="width: 96%; height: 255px;">
                        <tr>
                            <td style="width: 24px">
                                &nbsp;
                            </td>
                            <td style="width: 69px">
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
                            <td style="width: 69px">
                                <asp:Label ID="Label167" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                    Text="Course ID"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtEcourseID" runat="server" Height="16px" Font-Names="Arial" Font-Size="12px"
                                    Width="122px">0710113</asp:TextBox>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 24px">
                                &nbsp;
                            </td>
                            <td style="width: 69px">
                                &nbsp;
                            </td>
                            <td>
                                <asp:RadioButtonList ID="optECourses" runat="server" Font-Names="Arial" Font-Size="12px"
                                    ForeColor="Black">
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
                            <td style="width: 69px">
                                <asp:Label ID="Label168" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                    Text="Course"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtECourse" runat="server" Height="16px" Font-Names="Arial" Font-Size="12px"
                                    Width="122px">JWAS</asp:TextBox>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 24px">
                                &nbsp;
                            </td>
                            <td style="width: 69px">
                                <asp:Label ID="Label169" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                    Text="Description"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtEDescription" runat="server" Height="97px" Width="244px" Font-Names="Arial"
                                    Font-Size="12px">Jewelry and Watch Appraisal Seminar</asp:TextBox>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 24px">
                                &nbsp;
                            </td>
                            <td style="width: 69px">
                                <asp:Label ID="Label170" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                    Text="Facilitator"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtEFacilitator" runat="server" Height="16px" Font-Names="Arial"
                                    Font-Size="12px" Width="122px">Juan dela Cruz</asp:TextBox>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                    <br />
                    <table style="width: 96%;">
                        <tr>
                            <td style="width: 189px">
                                &nbsp;
                            </td>
                            <td>
                                <asp:ImageButton ID="cmdESave" runat="server" Height="25px" ImageUrl="~/images/Buttons/Save.gif"
                                    Width="75px" />
                                <asp:ImageButton ID="cmdECancel" runat="server" Height="25px" ImageUrl="~/images/Buttons/cancel.gif"
                                    Width="75px" />
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <asp:RoundedCornersExtender ID="rc2" runat="server" Corners="TopLeft" Radius="10"
                    TargetControlID="panelEdit">
                </asp:RoundedCornersExtender>
                <asp:ModalPopupExtender ID="ModalPopupExtender2" DropShadow="true" runat="server"
                    TargetControlID="cmdEdit" PopupControlID="panelEdit" CancelControlID="cmdECancel"
                    BackgroundCssClass="popUpBackground">
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
            <td style="width: 613px">
                <asp:Label ID="lblheader" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="DodgerBlue" Text="HRMD &gt; Records &gt; Trainings &gt; Employee Training ">
                </asp:Label>
                <asp:Label ID="lblheader2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Black" Text="&gt; Training Modules" Font-Underline="True">
                </asp:Label>
            </td>
            <td style="text-align: right">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Gray" Text="View Access"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
