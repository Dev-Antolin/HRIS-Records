<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/HRAdminSetup.master"
    AutoEventWireup="false" CodeFile="AdminDivisionRegion.aspx.vb" Inherits="recHRMDAdminModule_AdminDivisionRegion"
    Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="width: 195px; height: 253px;">
        <ul style="list-style: none;">
            <li class="label"><a class="name">Setup Form</a></li></ul>
        <br />
        <ul style="list-style: none;">
            <li class="effects2"><a style="color: red; font-size: small;">
                <asp:Label ID="lbldivision" runat="server" Text="> Division/Region" Height="16px"
                    Width="185px"></asp:Label>
            </a></li>
        </ul>
        <asp:Image ImageAlign="Right" ID="Image15" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
            Width="170px" /><br />
        <ul style="list-style: none; width: 198px; height: 239px;">
            <li class="effects2"><a href="AdminDepartmentBranch.aspx">
                <asp:Label ID="lbldepartment" runat="server" Text="> Department/Branch" Width="170px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="Image3" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" />
                <br />
                <asp:Label ID="lbljobprofile" runat="server" Text="> Job Profile" Font-Size="Small"
                    Width="140px"></asp:Label><br />
                <asp:Image ImageAlign="Right" ID="Image1" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" /><br />
                <a href="AdminJobCategory.aspx" style="margin-left: 20px;">
                    <asp:Label ID="lbljobcategory" runat="server" Text="> Job Category" Width="150px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="Image11" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="150px" /><br />
                <a style="margin-left: 20px;" href="AdminJobTitle.aspx">
                    <asp:Label ID="lbljobtitle" runat="server" Text="> Job Title" Width="150px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="Image114" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="150px" /><br />
                <a style="margin-left: 20px;" href="AdminJobRoles.aspx">
                    <asp:Label ID="lbljobroles" runat="server" Text="> Job Roles" Width="150px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="Image5" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" /><br />
            </li>
        </ul>
        <br />
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="width: 100%; height: 481px;">
        <br />
        <br />
        <br />
        <table style="width: 99%;">
            <tr>
                <td style="width: 40px">
                </td>
                <td style="width: 72px">
                    <asp:Label ID="Label6" Font-Size="Small" Font-Bold="true" runat="server" Text="Office Type"></asp:Label>
                </td>
                <td style="width: 440px;">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="140px" Height="22px" AutoPostBack="True">
                        <asp:ListItem>Support</asp:ListItem>
                        <asp:ListItem>Operation</asp:ListItem>
                    </asp:DropDownList>
                </td>
                
                <td style="width: 5px">
                    <asp:ImageButton runat="server" ID="cmdadd" Width="75px" Height="25px" 
                        ImageUrl="~/images/Buttons/add.gif" />
                </td>
                    <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="cmdadd"
                    PopupControlID="addpanel" DropShadow="true" 
                    BackgroundCssClass="popUpBackground" CancelControlID="button1">
                </asp:ModalPopupExtender>
                <td align="right" style="width: 70px;">
                    <asp:ImageButton ID="cmdedit" runat="server" Width="75px" Height="25px" 
                        ImageUrl="~/images/Buttons/edit.gif" />
                </td>
      
            </tr>
        </table>
        <br />
        <table style="width: 100%; height: 198px;">
            <tr>
                <td style="width: 40px">
                    &nbsp;
                </td>
                <td>
                    <asp:Panel ID="Panel1" runat="server" BackColor="#F1EFEF" Height="222px">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="719px"
                            BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px"
                            CellPadding="3" GridLines="Horizontal" Height="16px">
                            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                            <Columns>
                                <asp:BoundField HeaderText="Division Code" HeaderStyle-Width="250px" HeaderStyle-Height="30px"
                                    ItemStyle-Height="25px" DataField="codes">
                                    <HeaderStyle BackColor="#999999" BorderColor="Black" />
                                    <ItemStyle BorderColor="Black" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="Name" DataField="codename">
                                    <HeaderStyle BackColor="#999999" BorderColor="Black" />
                                    <ItemStyle BorderColor="Black" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="Description" DataField="description">
                                    <HeaderStyle BackColor="#999999" BorderColor="Black" />
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
                </td>
            </tr>
        </table>
        <br />
        <table style="width: 100%;">
            <tr>
                <td>
                    &nbsp;
                </td>
                <td style="width: 350px">
                    <asp:Panel ID="addpanel" runat="server" Height="171px" Width="350px" BackColor="Gainsboro"
                        BorderColor="#666666" BorderStyle="Outset">
                        <table style="width: 100%;">
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                                        Font-Size="Smaller" Font-Underline="True" ForeColor="Red" Text="Add/Edit"></asp:Label>
                                </td>
                                <td align="right">
                                    <asp:Button ID="Button1" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"
                                        Font-Bold="True" Font-Italic="False" Font-Names="Arial" ForeColor="Red" Text="X"
                                        Width="27px" />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <table style="width: 100%;">
                            <tr>
                                <td style="width: 15px">
                                    &nbsp;
                                </td>
                                <td>
                                    <asp:Label ID="lblcode" runat="server" Font-Names="Arial" Font-Size="Small" Text="Division Code"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtdrcode" runat="server" Width="207px" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 15px">
                                    &nbsp;
                                </td>
                                <td>
                                    <asp:Label ID="lblname" runat="server" Font-Names="Arial" Font-Size="Small" Text="Name"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtdrname" runat="server" Width="207px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 15px">
                                    &nbsp;
                                </td>
                                <td>
                                    <asp:Label ID="lbldesc" runat="server" Font-Names="Arial" Font-Size="Small" Text="Description"></asp:Label>
                                </td>
                                <td rowspan="2">
                                    <asp:TextBox ID="txtdesc" runat="server" Width="207px" Height="35px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 15px">
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <br />
                        <table style="width: 84%; height: 27px;" align="right">
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td align="right">
                                    <asp:ImageButton ID="cmdsave" runat="server" 
                                        ImageUrl="~/images/Buttons/Save.gif" Height="25px"
                                        Width="75px" />
                                </td>
                                <td>
                                    <asp:ImageButton ID="cmdcancel" runat="server" ImageUrl="~/images/Buttons/cancel.gif"
                                        Height="25px" Width="75px" />
                                </td>
                            </tr>
                        </table>
                        <br />
                    </asp:Panel>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
        <br />
    </div>
    <br />
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="contentlabel">
    <table style="width: 100%;">
        <tr>
            <td style="width: 553px">
                <ul>
                    <li class="labeltopformflow">
                        <asp:Label ID="AdminSetup" runat="server" Text="HRMD > Administration > Setup Form "></asp:Label>
                        <asp:Label ID="labelposition" Font-Underline="true" ForeColor="Black" runat="server"
                            Text="> Division"></asp:Label>
                    </li>
                </ul>
            </td>
            <td align="right">
                <ul>
                    <li class="labeltopformposition">
                        <asp:Label ID="lblrigths" runat="server" Text="Read/Write Access"></asp:Label>
                    </li>
                </ul>
            </td>
        </tr>
    </table>
</asp:Content>
