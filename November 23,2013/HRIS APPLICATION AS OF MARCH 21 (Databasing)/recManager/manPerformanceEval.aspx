<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/ManagerMasterPage.master"
    AutoEventWireup="false" CodeFile="manPerformanceEval.aspx.vb" Inherits="recMANAGERinfo_Evaluation_manPerformanceEval"
    Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="width: 195px; height: 374px;">
        <div style="height: 102px">
            <ul style="list-style: none;">
                <li class="label"><a class="name">Evaluation</a></li></ul>
            <br />
            <ul style="list-style: none;">
                <li class="effects2"><a style="color: red; font-size: small;">
                    <asp:Label ID="Label3" runat="server" Text="> Create Evaluation" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="imgpersonalline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a href="manReceiveEval.aspx">
                        <asp:Label ID="Label4" runat="server" Text="> Receive Evaluation" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Image1" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a href="manEvaluationStatus.aspx">
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
        <pre style="font-family: Arial; font-size: 12px; font-weight: bold; color: #000000;">        List of Employee</pre>
        <table style="width: 100%;">
            <tr>
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td>
                    <asp:Panel ID="panelGrid" runat="server" BackColor="#666666" BorderColor="Black"
                        BorderStyle="Solid" BorderWidth="2px" Height="192px" Width="734px">
                        <asp:GridView ID="dgridEval" runat="server" AutoGenerateColumns="False" BackColor="White"
                            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black"
                            GridLines="Vertical" Height="193px" Width="734px">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:BoundField HeaderText="I. D. No." />
                                <asp:BoundField HeaderText="Employee Number" />
                                <asp:BoundField HeaderText="Branch Name" />
                                <asp:BoundField />
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
                    Font-Size="13px" ForeColor="DodgerBlue" Text="Manager &gt; Records &gt; Evaluation ">
                </asp:Label>
                <asp:Label ID="lblheader2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Black" Text="&gt; Performance Evaluation" Font-Underline="True">
                </asp:Label>
            </td>
            <td style="text-align: right">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Gray" Text="Read/Write Access"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
