﻿<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/EmployeeMasterPage.master"
    AutoEventWireup="false" CodeFile="EmployeeEmploymentHistoryInternal.aspx.vb"
    Inherits="recEmployee_tab" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="width: 195px; height: 253px;">
        <ul style="list-style: none;">
            <li class="label"><a class="name">Employee Documents</a></li></ul>
        <br />
        <ul style="list-style: none;">
            <li class="effects2"><a href="EmployeePersonalINformationDocuments.aspx">
                <asp:Label ID="Label1" runat="server" Text="> Personal Information" Height="16px"
                    Width="180px"></asp:Label>
            </a></li>
        </ul>
        <asp:Image ImageAlign="Right" ID="Image15" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
            Width="170px" /><br />
        <ul style="list-style: none; width: 197px; height: 239px;">
            <li class="effects2"><a href="EmployeeDiscipline.aspx">
                <asp:Label ID="Label2" runat="server" Text="> Discipline" Width="175px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="Image3" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" />
                <br />
                <a href="EmployeeUndertakings.aspx">
                    <asp:Label ID="Label3" runat="server" Text="> Undertakings" Width="172px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="Image23" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" /><br />
                <a href="EmployeeAPEResults.aspx">
                    <asp:Label ID="Label5" Font-Size="Small" runat="server" Text="> APE Results" Width="173px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="Image4" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" />
                <br />
                <asp:Label ID="Label23" runat="server" Text="> Employment History" Font-Size="Small"
                    Width="137px"></asp:Label><br />
                <asp:Image ImageAlign="Right" ID="Image1" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" /><br />
                <a style="color: red; font-size: small; margin-left: 20px;">
                    <asp:Label ID="label26" runat="server" Text="> Internal" Width="149px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="Image11" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="150px" /><br />
                <a style="margin-left: 20px" href="EmployeeEmploymentHistoryExternal.aspx">
                    <asp:Label ID="label28" runat="server" Text="> External" Width="151px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="Image114" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="150px" /><br />
                <a href="EmployeeJobDescription.aspx">
                    <asp:Label ID="Label7" runat="server" Text="> Job Description" Width="174px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="Image5" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" /><br />
                <a href="EmployeeResignationClearance.aspx">
                    <asp:Label ID="Label17" runat="server" Text="> Resignation Clearance" Width="178px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="Image6" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" />
            </li>
        </ul>
        <br />
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="448px" BackColor="#999966">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
            BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal"
            Height="31px" Width="778px" HeaderStyle-Height="26px">
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <Columns>
                <asp:BoundField HeaderText="Date" ItemStyle-Height="25px">
                    <HeaderStyle BackColor="Gray" BorderColor="Black" />
                    <ItemStyle BorderColor="Black" />
                </asp:BoundField>
                <asp:BoundField HeaderText="Position">
                    <HeaderStyle BackColor="Gray" BorderColor="Black" />
                    <ItemStyle BorderColor="Black" />
                </asp:BoundField>
                <asp:BoundField HeaderText="Description">
                    <HeaderStyle BackColor="Gray" BorderColor="Black" />
                    <ItemStyle BorderColor="Black" />
                </asp:BoundField>
                <asp:BoundField HeaderText="View">
                    <HeaderStyle BackColor="Gray" BorderColor="Black" />
                    <ItemStyle BorderColor="Black" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <AlternatingRowStyle BackColor="#F7F7F7" />
        </asp:GridView>
    </asp:Panel>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="contentlabel">
    <table style="width: 100%;">
        <tr>
            <td style="width: 595px">
                <ul>
                    <li style="list-style: none;"><a class="labeltopformflow">
                        <asp:Label ID="documents" runat="server" Text="Employee > Records > Documents > Employee Documents > Employment History ">
                        </asp:Label>&nbsp<asp:Label runat="server" ID="lblposition" Text="> Internal" ForeColor="Black"
                            Font-Underline="true"></asp:Label>
                    </a></li>
                </ul>
            </td>
            <td align="right">
                <ul>
                    <li class="labeltopformposition">
                        <asp:Label ID="Label6" runat="server" Text="View Access"></asp:Label>
                    </li>
                </ul>
            </td>
        </tr>
    </table>
</asp:Content>
