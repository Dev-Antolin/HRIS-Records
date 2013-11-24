<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/ManagerMasterPage.master"
    AutoEventWireup="false" CodeFile="manReceiveRec.aspx.vb" Inherits="recMANAGERinfo_Training_manReceiveRec"
    Title="Untitled Page" %>

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
                    <a href="manCreateRequest.aspx" style="margin-left: 25px">
                        <asp:Label ID="newhired" runat="server" Text="> Create Request" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="imgnewhiredline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="156px" /><br />
                    <a style="color: red; font-size: small; margin-left: 25px">
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
<asp:Content ID="Content2" ContentPlaceHolderID="contentlabel" runat="Server">
    <table style="width: 100%; height: 1px">
        <tr>
            <td style="width: 15px">
                &nbsp;
            </td>
            <td style="width: 602px">
                <asp:Label ID="lblheader" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="DodgerBlue" Text="Manager &gt; Records &gt; Trainings &gt; Employee Training &gt; Training Request ">
                </asp:Label>
                <asp:Label ID="lblheader2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Black" Text="&gt; Request Status" Font-Underline="True">
                </asp:Label>
            </td>
            <td style="text-align: right">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Gray" Text="View/Write Access"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 100%;">
        <tr>
            <td style="width: 15px">
                &nbsp;
            </td>
            <td style="width: 47px">
                <asp:Label ID="Label162" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                    Text="Course"></asp:Label>
            </td>
            <td style="width: 172px">
                <asp:DropDownList ID="cboCourse" runat="server" Height="20px" Width="165px" Font-Names="Arial">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>JWAS</asp:ListItem>
                    <asp:ListItem>WACSS</asp:ListItem>
                    <asp:ListItem>ECSS</asp:ListItem>
                </asp:DropDownList>
                &nbsp;
            </td>
            <td>
                <asp:ImageButton ID="cmdSearch" runat="server" Height="25px" ImageUrl="~/images/Buttons/search.gif"
                    Width="75px" />
            </td>
        </tr>
    </table>
    <table style="width: 100%; height: 167px;">
        <tr>
            <td style="width: 15px">
                &nbsp;
            </td>
            <td style="width: 659px">
                &nbsp;
                <asp:Panel ID="panelgrid" runat="server" BackColor="#666666" BorderColor="Black"
                    BorderStyle="Solid" BorderWidth="2px" Height="175px" Width="728px">
                    <asp:GridView ID="dgridCourse" runat="server" AutoGenerateColumns="False" BackColor="White"
                        BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black"
                        GridLines="Vertical" Height="176px" Width="728px">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:BoundField HeaderText="Date Requested" />
                            <asp:BoundField HeaderText="Author" />
                            <asp:BoundField HeaderText="Course" />
                            <asp:BoundField HeaderText="Training Schedule" />
                            <asp:BoundField HeaderText="Details" />
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
            <td style="width: 659px">
                &nbsp;
            </td>
            <td style="width: 28px">
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
