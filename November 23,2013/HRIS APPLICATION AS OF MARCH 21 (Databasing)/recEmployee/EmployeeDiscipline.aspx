<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/EmployeeMasterPage.master"
    AutoEventWireup="false" CodeFile="EmployeeDiscipline.aspx.vb" Inherits="recEmployee_EmployeeDiscipline"
    Title="Untitled Page" %>

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
            <li class="effects2"><a style="color: red; font-size: small;">
                <asp:Label ID="Label2" runat="server" Text="> Discipline" Width="173px"></asp:Label></a><br />
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
                <a href="EmployeeEmploymentHistoryInternal.aspx" style="margin-left: 20px">
                    <asp:Label ID="label26" runat="server" Text="> Internal" Width="80px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="Image11" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="150px" /><br />
                <a style="margin-left: 20px" href="EmployeeEmploymentHistoryExternal.aspx">
                    <asp:Label ID="label28" runat="server" Text="> External" Width="80px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="Image114" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="150px" /><br />
                <a href="EmployeeJobDescription.aspx">
                    <asp:Label ID="Label7" runat="server" Text="> Job Description" Width="175px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="Image5" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" /><br />
                <a href="EmployeeResignationClearance.aspx">
                    <asp:Label ID="Label17" runat="server" Text="> Resignation Clearance" Width="177px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="Image6" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" />
            </li>
        </ul>
        <br />
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 100%;">
        <tr>
            <td style="width: 15px">
                &nbsp;
            </td>
            <td style="width: 72px" align="center">
                <asp:Label ID="Label4" runat="server" Font-Size="Small" Text="Case No."></asp:Label>
            </td>
            <td style="width: 156px">
                <asp:TextBox ID="TextBox1" runat="server" Width="157px"></asp:TextBox>
            </td>
            <td style="width: 48px" align="center">
                <asp:Label ID="Label15" runat="server" Font-Size="Small" Text="From"></asp:Label>
            </td>
            <td style="width: 148px">
                <asp:CalendarExtender ID="fromcalendar" runat="server" TargetControlID="txtfromcalendar"
                    PopupPosition="BottomLeft">
                </asp:CalendarExtender>
                <asp:TextBox ID="txtfromcalendar" runat="server" Width="151px"></asp:TextBox>
            </td>
            <td style="width: 29px" align="center">
                <asp:Label ID="Label6" runat="server" Font-Size="Small" Text="To"></asp:Label>
            </td>
            <td style="width: 161px">
                <asp:CalendarExtender ID="tocalendar" runat="server" TargetControlID="txttocalendar"
                    PopupPosition="BottomLeft">
                </asp:CalendarExtender>
                <asp:TextBox ID="txttocalendar" runat="server" Width="166px"></asp:TextBox>
            </td>
            <td style="width: 23px">
                <asp:ImageButton runat="server" Width="23px" Height="24px" ImageUrl="~/images/t.png" />
            </td>
            <td>
                <asp:ImageButton ID="cmdsearch" runat="server" Width="75px" Height="25px" 
                    ImageUrl="~/images/Buttons/search.gif" />
            </td>
        </tr>
    </table>
    <asp:Panel ID="pnldiscipline" runat="server" Height="126px" BackColor="#333333" HorizontalAlign="Center"
        Width="781px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
            BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal"
            Height="28px" Width="776px">
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <Columns>
                <asp:BoundField HeaderText="Case No." HeaderStyle-Width="170px" ItemStyle-Height="20px">
                    <HeaderStyle BackColor="#666666" BorderColor="Black" />
                    <ItemStyle BorderColor="Black" />
                </asp:BoundField>
                <asp:BoundField HeaderText="Disciplinary Type">
                    <HeaderStyle BackColor="#666666" BorderColor="Black" />
                    <ItemStyle BorderColor="Black" />
                </asp:BoundField>
                <asp:BoundField HeaderText="Report Date" HeaderStyle-Width="130px">
                    <HeaderStyle BackColor="#666666" BorderColor="Black" />
                    <ItemStyle BorderColor="Black" />
                </asp:BoundField>
                <asp:BoundField HeaderText="Branch" HeaderStyle-Width="200px">
                    <HeaderStyle BackColor="#666666" BorderColor="Black" />
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
    <br />
    <table width="100%">
        <tr>
            <td align="center">
                <asp:Panel ID="pnlnotice" runat="server" Height="277px" Width="255px" BackImageUrl="~/images/notice.jpg"
                    BorderColor="Black" ScrollBars="Both">
                </asp:Panel>
            </td>
        </tr>
    </table>
    <table width="100%">
        <tr>
            <td align="right" style="width: 700px">
                <asp:ImageButton ID="cmdprint" runat="server" Width="75px" Height="25px" ImageUrl="~/images/Buttons/print.gif"
                    Visible="false" />
            </td>
            <td align="right" style="width: 66px;">
                <asp:ImageButton ID="cmdclose" runat="server" Width="75px" Height="25px" ImageUrl="~/images/Buttons/close.gif"
                    Visible="false" />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="contentlabel">
    <table style="width: 100%;">
        <tr>
            <td style="width: 553px">
                <ul>
                    <li class="labeltopformflow">
                        <asp:Label ID="employeedocumetns" runat="server" Text="Employee > Records > Documents > Employee Documents "></asp:Label>
                        <asp:Label ID="labelposition" Font-Underline="true" ForeColor="Black" runat="server"
                            Text="> Discipline"></asp:Label>
                    </li>
                </ul>
            </td>
            <td align="right">
                <ul>
                    <li class="labeltopformposition">
                        <asp:Label ID="lblrigths" runat="server" Text="View/Print Access"></asp:Label>
                    </li>
                </ul>
            </td>
        </tr>
    </table>
</asp:Content>
