<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/HRMasterPage.master"
    AutoEventWireup="false" CodeFile="recClearanceCert.aspx.vb" Inherits="recHRMDinfo_recClearanceCert"
    Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="width: 195px; height: 374px;">
        <div style="height: 172px">
            <ul style="list-style: none;">
                <li class="label"><a class="name">Resignation Clearance</a></li></ul>
            <br />
            <ul style="list-style: none;">
                <li class="effects2"><a href="recClearCreate.aspx">
                    <asp:Label ID="trainingmod" runat="server" Text="> Create Clearance" Height="16px"
                        Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Imgmanpowerline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a href="recClearanceStatus1.aspx">
                        <asp:Label ID="Label2" runat="server" Text="> Clearance Status" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Image1" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a style="color: red; font-size: small;">
                        <asp:Label ID="newregular" runat="server" Text="> Clearance Certificate" Height="16px"
                            Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="imgnewline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                </li>
            </ul>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <table style="width: 100%; height: 167px;">
            <tr>
                <td style="width: 15px">
                </td>
                <td style="width: 610px">
                    <asp:Panel ID="Panel2" runat="server" BackColor="#666666" BorderColor="Black" BorderStyle="Solid"
                        BorderWidth="2px" Height="175px" Width="708px">
                        <asp:GridView ID="dgridChildren0" runat="server" AutoGenerateColumns="False" BackColor="White"
                            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black"
                            GridLines="Vertical" Height="176px" Width="707px">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:BoundField HeaderText="Resource ID" />
                                <asp:BoundField HeaderText="Name" />
                                <asp:BoundField HeaderText="Designation" />
                                <asp:BoundField HeaderText="Accountability" />
                                <asp:BoundField HeaderText="Date Hired" />
                                <asp:BoundField HeaderText="Status" />
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
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="contentlabel">
    <table style="width: 100%; height: 1px">
        <tr>
            <td style="width: 15px">
                &nbsp;
            </td>
            <td style="width: 561px">
                <asp:Label ID="lblheader" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="DodgerBlue" Text="HRMD &gt; Records &gt; Resignation Clearance ">
                </asp:Label>
                <asp:Label ID="lblheader2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Black" Text="&gt; Clearance Certificate" Font-Underline="True">
                </asp:Label>
            </td>
            <td style="text-align: right">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Gray" Text="View/Print Access"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
