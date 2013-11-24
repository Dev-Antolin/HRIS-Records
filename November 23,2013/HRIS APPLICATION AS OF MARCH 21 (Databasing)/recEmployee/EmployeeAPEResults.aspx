<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/EmployeeMasterPage.master"
    AutoEventWireup="false" CodeFile="EmployeeAPEResults.aspx.vb" Inherits="recEmployee_EmployeeAPEResults"
    Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="width: 195px; height: 319px;">
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
                <asp:Label ID="Label2" runat="server" Text="> Discipline" Width="178px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="Image3" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" />
                <br />
                <a href="EmployeeUndertakings.aspx">
                    <asp:Label ID="Label3" runat="server" Text="> Undertakings" Width="175px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="Image23" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" /><br />
                <a style="color: red; font-size: small;">
                    <asp:Label ID="Label5" Font-Size="Small" runat="server" Text="> APE Results" Width="177px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="Image4" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" />
                <br />
                <asp:Label ID="Label23" runat="server" Text="> Employment History" Font-Size="Small"
                    Width="137px"></asp:Label><br />
                <asp:Image ImageAlign="Right" ID="Image1" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" /><br />
                <a href="EmployeeEmploymentHistoryInternal.aspx" style="margin-left: 20px;">
                    <asp:Label ID="label26" runat="server" Text="> Internal" Width="154px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="Image11" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="150px" /><br />
                <a style="margin-left: 20px;" href="EmployeeEmploymentHistoryExternal.aspx">
                    <asp:Label ID="label28" runat="server" Text="> External" Width="158px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="Image114" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="150px" /><br />
                <a href="EmployeeJobDescription.aspx">
                    <asp:Label ID="Label7" runat="server" Text="> Job Description" Width="173px" Height="16px"></asp:Label></a><br />
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
    <table style="width: 100%;">
        <tr>
            <td style="width: 33px">
            </td>
            <td style="width: 56px">
                <asp:Label ID="Label4" runat="server" Font-Names="arial" Font-Size="Small" Text="Year"></asp:Label>
            </td>
            <td style="width: 129px">
                <asp:DropDownList ID="YearResults" runat="server" Height="22px" Width="122px" AutoPostBack="true">
                    <asp:ListItem>2005</asp:ListItem>
                    <asp:ListItem>2006</asp:ListItem>
                    <asp:ListItem>2007</asp:ListItem>
                    <asp:ListItem>2008</asp:ListItem>
                    <asp:ListItem>2009</asp:ListItem>
                    <asp:ListItem>2010</asp:ListItem>
                    <asp:ListItem>2011</asp:ListItem>
                    <asp:ListItem>2012</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:ImageButton runat="server" Width="75px" Height="25px" ImageUrl="~/images/Buttons/view.gif"
                    ID="cmdview" />
            </td>
        </tr>
    </table>
    <br />
    <table width="100%">
        <tr>
            <td style="width: 33px">
            </td>
            <td>
                <asp:Panel ID="panelape" runat="server" Height="397px" BackColor="Silver" Visible="False"
                    HorizontalAlign="Center">
                    <br />
                    <br />
                    <asp:Image ID="APEResult" runat="server" Height="349px" ImageAlign="Middle" ImageUrl="~/images/ape.jpg"
                        Width="718px" />
                </asp:Panel>
            </td>
            <td style="width: 17px">
            </td>
        </tr>
    </table>
    <table width="100%">
        <tr>
            <td style="width: 30px">
            </td>
            <td>
                <asp:ImageButton runat="server" Width="75px" Height="25px" ImageUrl="~/images/Buttons/prevArrow.gif"
                    ID="cmdprevious" Visible="False" />
            </td>
            <td align="right">
                <asp:ImageButton runat="server" Width="75px" Height="25px" ImageUrl="~/images/Buttons/nextArrow.gif"
                    ID="cmdnext" Visible="False" />
            </td>
            <td style="width: 17px">
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
                        <asp:Label ID="employeedocuments" runat="server" Text="Employee > Records > Documents > Employee Documents "></asp:Label>
                        <asp:Label ID="labelposition" Font-Underline="true" ForeColor="Black" runat="server"
                            Text="> Ape Results"></asp:Label>
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
