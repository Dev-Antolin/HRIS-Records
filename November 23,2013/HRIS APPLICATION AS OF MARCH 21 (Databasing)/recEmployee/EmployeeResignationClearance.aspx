<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/EmployeeMasterPage.master"
    AutoEventWireup="false" CodeFile="EmployeeResignationClearance.aspx.vb" Inherits="recEmployee_EmployeeResignationClearance"
    Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="width: 195px; height: 253px;">
        <ul style="list-style: none;">
            <li class="label"><a class="name">Employee Documents</a></li></ul>
        <br />
        <ul style="list-style: none;">
            <li class="effects2"><a href="EmployeePersonalINformationDocuments.aspx">
                <asp:Label ID="Label1" runat="server" Text="> Personal Information" Height="16px"
                    Width="178px"></asp:Label>
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
                    <asp:Label ID="Label3" runat="server" Text="> Undertakings" Width="177px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="Image23" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" /><br />
                <a href="EmployeeAPEResults.apx">
                    <asp:Label ID="Label5" Font-Size="Small" runat="server" Text="> APE Results" Width="176px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="Image4" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" />
                <br />
                <asp:Label ID="Label23" runat="server" Text="> Employment History" Font-Size="Small"
                    Width="137px"></asp:Label><br />
                <asp:Image ImageAlign="Right" ID="Image1" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" /><br />
                <a href="EmployeeEmploymentHistoryInternal.aspx" style="margin-left: 20px;">
                    <asp:Label ID="label26" runat="server" Text="> Internal" Width="153px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="Image11" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="150px" /><br />
                <a style="margin-left: 20px;" href="EmployeeEmploymentHistoryExternal.aspx">
                    <asp:Label ID="label28" runat="server" Text="> External" Width="153px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="Image114" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="150px" /><br />
                <a href="EmployeeJobDescription.aspx">
                    <asp:Label ID="Label7" runat="server" Text="> Job Description" Width="177px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="Image5" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" /><br />
                <a style="color: red; font-size: small;">
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
            <td style="width: 33px">
                &nbsp;
            </td>
            <td colspan="2">
                <asp:Panel ID="Panel1" runat="server" BackColor="#999966" Height="430px">
                </asp:Panel>
            </td>
            <td style="width: 30px">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 33px; height: 39px;">
            </td>
            <td style="height: 39px">
                <asp:ImageButton runat="server" Width="75px" Height="25px" 
                    ImageUrl="~/images/Buttons/prevArrow.gif" ID="cmdprevious" />
            </td>
            <td align="right" style="height: 39px">
                <asp:ImageButton runat="server" Width="75px" Height="25px" 
                    ImageUrl="~/images/Buttons/nextArrow.gif" ID="cmdnext" />
            </td>
            <td style="width: 30px; height: 39px;">
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="contentlabel">
    <table style="width: 100%;">
        <tr>
            <td style="width: 553px">
                <ul>
                    <li style="list-style: none;"><a class="labeltopformflow">
                        <asp:Label ID="employeedocuments" runat="server" Text="Employee > Records > Documents > Employee Documents ">
                        </asp:Label>&nbsp<asp:Label runat="server" ID="lblposition" Text="> Resignation Clearance"
                            ForeColor="Black" Font-Underline="true"></asp:Label>
                    </a></li>
                </ul>
            </td>
            <td align="right">
                <ul>
                    <li class="labeltopformposition">
                        <asp:Label ID="lblrigths" runat="server" Text="Read Only Access"></asp:Label>
                    </li>
                </ul>
            </td>
        </tr>
    </table>
</asp:Content>
