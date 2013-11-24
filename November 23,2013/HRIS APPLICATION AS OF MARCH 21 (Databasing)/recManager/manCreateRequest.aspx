<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/ManagerMasterPage.master"
    AutoEventWireup="false" CodeFile="manCreateRequest.aspx.vb" Inherits="recMANAGERinfo_Training_manTrainings"
    Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="width: 195px; height: 374px;">
        <div style="height: 201px">
            <ul style="list-style: none;">
                <li class="label"><a class="name">Employee Training</a></li></ul>
            <br />
            <ul style="list-style: none;">
                <li class="effects2"><a href="manTrainings.aspx">
                    <asp:Label ID="trainingmod" runat="server" Text="> Trainings" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Imgmanpowerline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a href="manTrainingModules.aspx">
                        <asp:Label ID="newregular" runat="server" Text="> Trainings Modules" Height="16px"
                            Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="imgnewline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <asp:Label ID="resigned" runat="server" Text="> Training Request" Height="16px" Width="177px"
                        CssClass="def"></asp:Label><br />
                    <asp:Image ImageAlign="Right" ID="Imgresignedline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a style="color: red; font-size: small; margin-left: 25px">
                        <asp:Label ID="newhired" runat="server" Text="> Create Request" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="imgnewhiredline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="156px" /><br />
                    <a href="manReceiveRec.aspx" style="margin-left: 25px">
                        <asp:Label ID="Label1" runat="server" Text="> Request Status" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Image1" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="156px" /><br />
                </li>
            </ul>
        </div>
        <div>
            <ul style="list-style: none;">
                <li class="label"><a class="name">Reports</a></li></ul>
            <br />
            <ul style="list-style: none;">
                <li class="effects2"><a href="manTrainingScorecard.aspx">
                    <asp:Label ID="status" runat="server" Text="> Training Scorecard" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Imgempstatusline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
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
                <td style="width: 70px">
                    <asp:Label ID="Label162" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Request No"></asp:Label>
                </td>
                <td style="width: 182px">
                    <asp:TextBox ID="txtRecNo" runat="server" Font-Names="Arial" Font-Size="12px" Height="16px"
                        Width="162px"></asp:TextBox>
                    <asp:FilteredTextBoxExtender ID="ftberec" runat="server" TargetControlID="txtRecNo"
                        FilterType="Numbers">
                    </asp:FilteredTextBoxExtender>
                </td>
                <td style="width: 63px">
                    <asp:Label ID="Label164" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Date"></asp:Label>
                </td>
                <td style="width: 174px">
                    <asp:TextBox ID="txtdate" runat="server" Font-Names="Arial" Font-Size="12px" Height="16px"
                        Width="162px"></asp:TextBox>
                    <asp:CalendarExtender ID="cedate" runat="server" TargetControlID="txtdate">
                    </asp:CalendarExtender>
                    &nbsp;
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
                <td style="width: 70px">
                    <asp:Label ID="Label163" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Course"></asp:Label>
                </td>
                <td style="width: 182px">
                    <asp:DropDownList ID="cboCourse" runat="server" Height="20px" Width="165px" Font-Names="Arial">
                    </asp:DropDownList>
                </td>
                <td style="width: 63px">
                    <asp:Label ID="Label165" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Requestor"></asp:Label>
                </td>
                <td style="width: 174px">
                    <asp:TextBox ID="txtrequestor" runat="server" Font-Names="Arial" Font-Size="12px"
                        Height="16px" Width="162px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
        <table style="width: 100%; height: 167px;">
            <tr>
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 610px">
                    &nbsp;
                    <asp:Panel ID="panelgrid" runat="server" BackColor="#666666" BorderColor="Black"
                        BorderStyle="Solid" BorderWidth="2px" Height="175px" Width="562px">
                        <asp:GridView ID="dgridChildren0" runat="server" AutoGenerateColumns="False" BackColor="White"
                            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black"
                            GridLines="Vertical" Height="176px" Width="560px">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:BoundField HeaderText="Resource ID" />
                                <asp:BoundField HeaderText="Name" />
                                <asp:BoundField HeaderText="Area" />
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
            <tr>
                <td style="width: 15px">
                </td>
                <td style="width: 610px">
                    &nbsp;
                </td>
                <td style="width: 28px">
                    &nbsp;
                </td>
            </tr>
        </table>
        <br />
        <table style="width: 100%;">
            <tr>
                <td style="width: 421px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
                <td>
                    <asp:ImageButton ID="cmdSubmit" runat="server" Height="25px" ImageUrl="~/images/Buttons/submit.gif"
                        Width="75px" />
                    <asp:ImageButton ID="cmdCancel" runat="server" Height="25px" ImageUrl="~/images/Buttons/cancel.gif"
                        Width="75px" />
                </td>
            </tr>
        </table>
        <br />
        <table style="width: 100%;">
            <tr>
                <td style="width: 53px">
                    &nbsp;
                    <asp:Panel ID="panelAdd" runat="server" BackColor="#F1EFEF" BorderStyle="None" Height="180px"
                        Width="337px">
                        <br />
                        <table style="width: 88%; height: 120px;">
                            <tr>
                                <td style="width: 30px">
                                    &nbsp;
                                </td>
                                <td style="width: 91px">
                                    <asp:Label ID="Label166" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                        Text="Resource ID"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtResid" runat="server" Font-Names="Arial" Font-Size="12px" Height="16px"
                                        Width="162px"></asp:TextBox>
                                    <asp:FilteredTextBoxExtender ID="ftbes" runat="server" FilterType="Numbers" TargetControlID="txtResid">
                                    </asp:FilteredTextBoxExtender>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 30px">
                                    &nbsp;
                                </td>
                                <td style="width: 91px">
                                    <asp:Label ID="Label167" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                        Text="Name"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtname" runat="server" Font-Names="Arial" Font-Size="12px" Height="16px"
                                        Width="162px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 30px">
                                    &nbsp;
                                </td>
                                <td style="width: 91px">
                                    <asp:Label ID="Label168" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                        Text="Position"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtposition" runat="server" Font-Names="Arial" Font-Size="12px"
                                        Height="16px" Width="162px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 30px">
                                    &nbsp;
                                </td>
                                <td style="width: 91px">
                                    <asp:Label ID="Label169" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                        Text="Region/Division"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtregion" runat="server" Font-Names="Arial" Font-Size="12px" Height="16px"
                                        Width="162px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 30px">
                                    &nbsp;
                                </td>
                                <td style="width: 91px">
                                    <asp:Label ID="Label170" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                        Text="Dept/Branch"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtbranch" runat="server" Font-Names="Arial" Font-Size="12px" Height="16px"
                                        Width="162px"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <table style="width: 90%;">
                            <tr>
                                <td style="width: 136px">
                                    &nbsp;
                                </td>
                                <td>
                                    <asp:ImageButton ID="cmdSave" runat="server" Height="25px" ImageUrl="~/images/Buttons/Save.gif"
                                        Width="75px" />
                                    <asp:ImageButton ID="cmdCancel2" runat="server" Height="25px" ImageUrl="~/images/Buttons/cancel.gif"
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
                </td>
                <td style="width: 625px">
                    <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="cmdAdd"
                        PopupControlID="panelAdd" DropShadow="true" BackgroundCssClass="popUpBackground"
                        CancelControlID="cmdCancel2">
                    </asp:ModalPopupExtender>
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
            <td style="width: 596px">
                <asp:Label ID="lblheader" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="DodgerBlue" Text="Manager &gt; Records &gt; Trainings &gt; Employee Training &gt; Training Request ">
                </asp:Label>
                <asp:Label ID="lblheader2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Black" Text="&gt; Create Request" Font-Underline="True">
                </asp:Label>
            </td>
            <td style="text-align: right">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Gray" Text="View/Write Access"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
