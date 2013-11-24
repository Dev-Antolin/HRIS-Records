<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/EmployeeMasterPage.master"
    AutoEventWireup="false" CodeFile="EmployeeTrainings.aspx.vb" Inherits="recEmployee_EmployeeTrainings"
    Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="width: 195px; height: 195px;">
        <ul style="list-style: none;">
            <li class="label"><a class="name">Employee Training</a></li></ul>
        <br />
        <ul style="list-style: none;">
            <li class="effects2"><a style="color: red; font-size: small;">
                <asp:Label ID="Label1" runat="server" Text="> Trainings" Height="16px" Width="180px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="Image15" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" /><br />
                <a href="EmployeeTrainingModules.aspx">
                    <asp:Label ID="Label5" runat="server" Text="> Training Modules" Height="16px" Width="173px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="Image1" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" />
            </li>
        </ul>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="width: 100%; height: 479px;">
        <table style="width: 70%;">
            <tr>
                <td style="width: 19px">
                </td>
                <td style="width: 55px">
                    <asp:Label ID="Label6" runat="server" Text="From" Font-Size="Small"></asp:Label>
                </td>
                <td style="width: 180px">
                    <asp:CalendarExtender ID="fromcalendar" runat="server" TargetControlID="txtfromcalendar"
                        PopupPosition="BottomLeft" TodaysDateFormat="yyyy-mm-dd">
                    </asp:CalendarExtender>
                    <asp:TextBox ID="txtfromcalendar" runat="server" Width="160px" Height="18px"></asp:TextBox>
                </td>
                <td style="width: 38px">
                    <asp:Label ID="Label7" runat="server" Text="To" Font-Size="Small"></asp:Label>
                </td>
                <td style="width: 201px">
                    <asp:CalendarExtender ID="tocalendar" runat="server" TargetControlID="txttocalendar"
                        PopupPosition="BottomLeft" TodaysDateFormat="yyyy-mm-dd">
                    </asp:CalendarExtender>
                    <asp:TextBox ID="txttocalendar" runat="server" Width="160px" Height="18px"></asp:TextBox>
                </td>
                <td style="width: 96px">
                    <asp:ImageButton runat="server" Width="75px" Height="25px" ImageUrl="~/images/Buttons/search.gif"
                        ID="cmdSearch" />
                </td>
            </tr>
        </table>
        <br />
            <asp:GridView ID="dgtraining" runat="server" AutoGenerateColumns="False" BackColor="White"
                BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" GridLines="Horizontal"
                Width="763px" Height="16px">
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <Columns>
                    <asp:BoundField HeaderText="Date" ItemStyle-Height="23px" 
                        HeaderStyle-Height="25px" DataField="Date">
                        <HeaderStyle BackColor="#999999" BorderColor="Black" BorderStyle="Solid" 
                            BorderWidth="1px" Width="15px" />
                        <ItemStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="15px" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Course" DataField="Type">
                        <HeaderStyle BackColor="#999999" BorderColor="Black" BorderStyle="Solid" 
                            BorderWidth="1px" Width="40px" />
                        <ItemStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" 
                            Width="40px" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Description" DataField="Description">
                        <HeaderStyle BackColor="#999999" BorderColor="Black" BorderStyle="Solid" 
                            BorderWidth="1px" Width="150px" />
                        <ItemStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" 
                            Width="150px" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Remarks" DataField="Remarks">
                        <HeaderStyle BackColor="#999999" BorderColor="Black" BorderStyle="Solid" 
                            BorderWidth="1px" Width="25px" />
                        <ItemStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="25px" />
                    </asp:BoundField>
                    <asp:CommandField HeaderText="Details" SelectText="View Details" 
                        ShowSelectButton="True">
                        <HeaderStyle BackColor="#999999" BorderColor="Black" BorderStyle="Solid" 
                            BorderWidth="1px" Width="30px" />
                        <ItemStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" 
                            HorizontalAlign="Center" VerticalAlign="Middle" Width="20px" />
                    </asp:CommandField>
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <AlternatingRowStyle BackColor="#F7F7F7" Width="30px" />
            </asp:GridView>
        <br />
    </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="contentlabel">
    <table style="width: 100%;">
        <tr>
            <td style="width: 553px">
                <ul>
                    <li class="labeltopformflow">
                        <asp:Label ID="Label2" runat="server" Text="Employee > Records > Trainings > Employee Training "></asp:Label>
                        <asp:Label ID="label3" Font-Underline="true" ForeColor="Black" runat="server" Text="> Trainings"></asp:Label>
                    </li>
                </ul>
            </td>
            <td align="right">
                <ul>
                    <li class="labeltopformposition">
                        <asp:Label ID="lblrigths" runat="server" Text="View Access"></asp:Label>
                    </li>
                </ul>
            </td>
        </tr>
    </table>
</asp:Content>
