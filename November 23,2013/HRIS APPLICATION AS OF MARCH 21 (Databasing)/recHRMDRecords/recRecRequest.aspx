<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/HRMasterPage.master"
    AutoEventWireup="false" CodeFile="recRecRequest.aspx.vb" Inherits="recHRMDinfo_recRecRequest"
    Title="Untitled Page" %>

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
                    <a href="recTrainingModules.aspx">
                        <asp:Label ID="newregular" runat="server" Text="> Trainings Modules" Height="16px"
                            Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="imgnewline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <asp:Label ID="resigned" runat="server" Text="> Training Request" Height="16px" Width="177px"
                        CssClass="def"></asp:Label><br />
                    <asp:Image ImageAlign="Right" ID="Imgresignedline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a style="color: red; font-size: small; margin-left: 25px">
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
    <table style="width: 100%; height: 167px;">
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
                <asp:Panel ID="Panel2" runat="server" BackColor="#666666" BorderColor="Black" BorderStyle="Solid"
                    BorderWidth="2px" Height="175px" Width="657px">
                    <asp:GridView ID="dgridChildren0" runat="server" AutoGenerateColumns="False" BackColor="White"
                        BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black"
                        GridLines="Vertical" Height="176px" Width="657px">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:BoundField DataField="DateRequested" HeaderText="Date Requested" 
                                ReadOnly="True">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="employeeId" HeaderText="Employee ID" ReadOnly="True">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="Author" DataField="Author" ReadOnly="True" >
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="Course" DataField="Course" ReadOnly="True" >
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="RequestNo" ReadOnly="True" HeaderText="Request No" >
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:ButtonField CommandName="btnDetails" HeaderText="Details" Text="Details" />
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
            <td style="width: 89px">
                                <asp:ImageButton ID="ButtonModal" runat="server" style="display: none" Height="25px" 
                                    ImageUrl="~/images/buttons/Approve.gif" Width="93px" />
                            </td>
        </tr>
    </table>
    <br />
    <table style="width: 100%; height: 251px;">
        <tr>
            <td style="width: 29px">
                &nbsp;
            </td>
            <td style="width: 647px">
                <asp:Panel ID="panelApp" runat="server" BackColor="#F1EFEF" BorderStyle="None" Height="275px"
                    Width="629px">
                    <table style="width: 100%;">
                        <tr>
                            <td style="width: 28px">
                                &nbsp;
                            </td>
                            <td style="width: 82px">
                                &nbsp;
                            </td>
                            <td style="width: 218px">
                                &nbsp;
                            </td>
                            <td style="width: 76px">
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 28px">
                                &nbsp;
                            </td>
                            <td style="width: 82px">
                                <asp:Label ID="Label162" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                    Text="Request No."></asp:Label>
                            </td>
                            <td style="width: 218px">
                                <asp:TextBox ID="txtrequestNo" runat="server" Font-Names="Arial" Font-Size="12px"
                                    Height="16px" Width="140px"></asp:TextBox>
                                <asp:FilteredTextBoxExtender ID="ftbereqNo" runat="server" TargetControlID="txtrequestNo"
                                    FilterType="Numbers">
                                </asp:FilteredTextBoxExtender>
                            </td>
                            <td style="width: 76px">
                                <asp:Label ID="Label165" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                    Text="Date"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtDate" runat="server" Font-Names="Arial" Font-Size="12px" Height="16px"
                                    Width="140px" AutoPostBack="True" ReadOnly="True"></asp:TextBox>
                                <%--<asp:CalendarExtender ID="txtDate_CalendarExtender" runat="server" TargetControlID="txtDate">
                                </asp:CalendarExtender>--%>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 28px">
                                &nbsp;
                            </td>
                            <td style="width: 82px">
                                <asp:Label ID="Label163" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                    Text="Course"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtCourse" runat="server" Font-Names="Arial" Font-Size="12px"
                                    Height="16px" Width="180px"></asp:TextBox>
                            </td>
                            <td style="width: 76px">
                                <asp:Label ID="Label166" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                    Text="Requestor"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtrequestNo0" runat="server" Font-Names="Arial" Font-Size="12px"
                                    Height="16px" Width="180px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 28px">
                                &nbsp;
                            </td>
                            <td style="width: 82px">
                                <asp:Label ID="Label164" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                    Text="Training Date" Visible="False"></asp:Label>
                            </td>
                            <td style="width: 218px">
                                <asp:TextBox ID="txtTrainingDate" runat="server" Font-Names="Arial" Font-Size="12px"
                                    Height="16px" Width="180px" ReadOnly="True" Visible="False"></asp:TextBox>
                                <asp:CalendarExtender ID="calPopUp" runat="server" TargetControlID="txtTrainingDate"
                                    TodaysDateFormat="mm/dd/yyyy">
                                </asp:CalendarExtender>
                            </td>
                            <td style="width: 76px">
                                <asp:Label ID="Label167" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                    Text="Venue" Visible="False"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtrequestNo1" runat="server" Font-Names="Arial" Font-Size="12px"
                                    Height="16px" Width="180px" Visible="False"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <table style="width: 100%;">
                        <tr>
                            <td style="width: 26px">
                                &nbsp;
                            </td>
                            <td style="width: 572px">
                                <asp:Panel ID="panelData" runat="server" BackColor="#666666" BorderColor="Black"
                                    BorderStyle="Solid" BorderWidth="2px" Height="135px">
                                    <asp:GridView ID="dgridChildren1" runat="server" AutoGenerateColumns="False" BackColor="White"
                                        BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black"
                                        GridLines="Vertical" Height="135px" Width="568px">
                                        <AlternatingRowStyle BackColor="#CCCCCC" />
                                        <Columns>
                                            <asp:BoundField HeaderText="Resource ID" DataField="EmployeeID" >
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField HeaderText="Name                                  " 
                                                DataField="Fullname" >
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField HeaderText="Area" DataField="Area" >
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>
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
                    <table style="width: 100%;">
                        <tr>
                            <td style="width: 401px">
                                &nbsp;
                            </td>
                            
                            <td style="width: 89px">
                                <asp:ImageButton ID="cmdApprove" runat="server" Height="25px" 
                                    ImageUrl="~/images/buttons/Approve.gif" Width="93px" />
                            </td>
                            <td>
                                <asp:ImageButton ID="cmdDisapprove" runat="server" Height="25px" ImageUrl="~/images/buttons/Disapprove.gif" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <asp:ModalPopupExtender ID="modPopUpAdd" runat="server" TargetControlID="ButtonModal"
                    PopupControlID="panelApp" BackgroundCssClass="popUpBackground" 
                    DropShadow="true">
                </asp:ModalPopupExtender>
                <asp:RoundedCornersExtender ID="rc1" runat="server" TargetControlID="panelApp" Radius="10"
                    Corners="TopLeft">
                </asp:RoundedCornersExtender>
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
            <td style="width: 593px">
                <asp:Label ID="lblheader" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="DodgerBlue" Text="HRMD &gt; Records &gt; Trainings &gt; Employee Training &gt; Training Request ">
                </asp:Label>
                <asp:Label ID="lblheader2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Black" Text="&gt; Receive Request" Font-Underline="True">
                </asp:Label>
            </td>
            <td style="text-align: right">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Gray" Text="View/Write Access"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
