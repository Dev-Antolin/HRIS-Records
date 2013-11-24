<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/HRAdminSetup.master"
    AutoEventWireup="false" CodeFile="AdminDepartmentBranch.aspx.vb" Inherits="recHRMDAdminModule_AdminDepartmentBranch"
    Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="width: 195px; height: 253px;">
        <ul style="list-style: none;">
            <li class="label"><a class="name">Setup Form</a></li></ul>
        <br />
        <ul style="list-style: none;">
            <li class="effects2"><a href="AdminDivisionRegion.aspx">
                <asp:Label ID="lbldivision" runat="server" Text="> Division/Region" Height="16px"
                    Width="185px"></asp:Label>
            </a></li>
        </ul>
        <asp:Image ImageAlign="Right" ID="Image15" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
            Width="170px" /><br />
        <ul style="list-style: none; width: 198px; height: 239px;">
            <li class="effects2"><a style="color: red; font-size: small;">
                <asp:Label ID="lbldepartment" runat="server" Text="> Department/Branch" Width="170px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="Image3" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" />
                <br />
                <asp:Label ID="lbljobprofile" runat="server" Text="> Job Profile" Font-Size="Small"
                    Width="137px"></asp:Label><br />
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
    <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="cmdnewDept"
        PopupControlID="addpanel" BackgroundCssClass="popUpBackground" 
        CancelControlID="cmdclose1">
    </asp:ModalPopupExtender>
    <asp:ModalPopupExtender ID="ModalPopupExtender3" runat="server" TargetControlID="cmdnewBranch"
        PopupControlID="panelbranch" BackgroundCssClass="popUpBackground" CancelControlID="cmdclose2">
    </asp:ModalPopupExtender>
    <div style="width: 100%; height: 481px;">
        <br />
        <br />
        <br />
        <table style="width: 99%;">
            <tr>
                <td style="width: 16px">
                </td>
                <td style="width: 16px">
                    <asp:Label Width="103px" ID="Label6" Font-Size="Small" Font-Bold="True" runat="server"
                        Text="Office Type"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="cbotype" runat="server" Width="165px" Height="20px" AutoPostBack="True">
                        <asp:ListItem>Support</asp:ListItem>
                        <asp:ListItem>Operation</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 5px" nowrap="nowrap" align="right">
                    <asp:ImageButton runat="server" ID="cmdnewDept" Width="120px" Height="25px" 
                        ImageUrl="~/images/Buttons/newDepartment.gif" />
                    <asp:ImageButton ID="cmdnewBranch" runat="server" Width="100px" Height="25px" ImageUrl="~/images/Buttons/newBranch.gif"
                        Visible="False" />
                    <asp:ImageButton ID="cmdeditDept" runat="server" Width="115px" Height="25px" 
                        ImageUrl="~/images/Buttons/editDepartment.gif" />
                    <asp:ImageButton ID="cmdeditBranch" runat="server" Width="100px" Height="25px" ImageUrl="~/images/Buttons/editBranch.gif"
                        Visible="False" />
                    <asp:ModalPopupExtender ID="ModalPopupExtender4" runat="server" TargetControlID="cmdeditBranch"
                        PopupControlID="panelbranch" BackgroundCssClass="popUpBackground" CancelControlID="cmdclose2">
                    </asp:ModalPopupExtender>
                    <asp:ModalPopupExtender ID="ModalPopupExtender2" runat="server" TargetControlID="cmdeditDept"
                        PopupControlID="addPanel" BackgroundCssClass="popUpBackground" 
                        CancelControlID="cmdclose1">
                    </asp:ModalPopupExtender>
                </td>
            </tr>
        </table>
        <table style="width: 99%; height: 166px;">
            <tr>
                <td style="width: 16px">
                    &nbsp;
                </td>
                <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="748px"
                            BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px"
                            CellPadding="3" GridLines="Horizontal" Height="16px" DataKeyNames="subcode" OnRowEditing="GridView1_RowEditing">
                            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                            <Columns>
                                <asp:BoundField HeaderText="Department Code" HeaderStyle-Width="200px" HeaderStyle-Height="30px"
                                    ItemStyle-Height="25px" DataField="subcode">
                                    <HeaderStyle BackColor="#999999" BorderColor="Black" />
                                    <ItemStyle BorderColor="Black" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="Name" HeaderStyle-Width="250px" 
                                    DataField="subcodename">
                                    <HeaderStyle BackColor="#999999" BorderColor="Black" />
                                    <ItemStyle BorderColor="Black" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="Description" DataField="description">
                                    <HeaderStyle BackColor="#999999" BorderColor="Black" />
                                    <ItemStyle BorderColor="Black" />
                                </asp:BoundField>
                                <asp:CommandField ShowEditButton="True" />
                            </Columns>
                            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <AlternatingRowStyle BackColor="#F7F7F7" />
                        </asp:GridView>
                        <asp:ImageButton ID="cmdArea" runat="server" Height="25px" ImageAlign="Right" 
                            ImageUrl="~/images/Buttons/newArea.gif" Visible="False" Width="92px" />
                            
                    <asp:ModalPopupExtender ID="modalarea" runat="server" TargetControlID="cmdArea"
                        PopupControlID="addPanel" BackgroundCssClass="popUpBackground" 
                        CancelControlID="cmdclose1">
                    </asp:ModalPopupExtender>
                        <br />
                </td>
            </tr>
        </table>
        <br />
        <table style="width: 100%;">
            <tr>
                <td style="width: 350px">
                    <asp:Panel ID="addpanel" runat="server" Height="193px" Width="372px" 
                        BorderColor="Black">
                        <asp:Panel ID="panelHideDept" runat="server" Height="196px" Width="359px" BackColor="Gainsboro"
                            BorderColor="#666666" BorderStyle="Outset">
                            <table style="width: 99%;">
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                                            Font-Size="Smaller" Font-Underline="True" ForeColor="Red" Text="Add/Edit"></asp:Label>
                                    </td>
                                    <td align="right">
                                        <asp:Button ID="cmdClose1" runat="server" BorderColor="Black" BorderStyle="Solid"
                                            BorderWidth="1px" Font-Bold="True" Font-Italic="False" Font-Names="Arial" ForeColor="Red"
                                            Text="X" Width="27px" />
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <table style="width: 100%;">
                                <tr>
                                    <td style="width: 15px">
                                        &nbsp;
                                    </td>
                                    <td style="width: 101px">
                                        <asp:Label ID="lbldiv" runat="server" Font-Names="Arial" Font-Size="Small" Text="Division Code"></asp:Label>
                                    </td>
                                    <td style="width: 22px">
                                        <asp:TextBox ID="txtdrcode" runat="server" Width="182px"></asp:TextBox>
                                    </td>
                                    <td style="width: 21px">
                                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/searchicon.jpg"
                                            Width="20px" Height="18px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 15px">
                                        &nbsp;
                                    </td>
                                    <td style="width: 101px">
                                        <asp:Label ID="lbldept" runat="server" Font-Names="Arial" Font-Size="Small" Text="Department Code"></asp:Label>
                                    </td>
                                    <td style="width: 22px">
                                        <asp:TextBox ID="txtadcode" runat="server" Width="182px"></asp:TextBox>
                                    </td>
                                    <td style="width: 21px">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label7" runat="server" Font-Names="Arial" Font-Size="Small" Text="Name"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtadname" runat="server" Width="183px"></asp:TextBox>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td>
                                        <asp:Label ID="lbldesc" runat="server" Font-Names="Arial" Font-Size="Small" Text="Description"></asp:Label>
                                    </td>
                                    <td rowspan="2">
                                        <asp:TextBox ID="txtdesc" runat="server" Width="186px" Height="33px" 
                                            TextMode="MultiLine" Font-Names="Arial"></asp:TextBox>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                 <tr>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <table style="width: 98%; height: 27px;" align="right">
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
                            <br />
                        </asp:Panel>
                    </asp:Panel>
                </td>
                <td>
                    <asp:Panel ID="panelbranch" runat="server" Height="235px" Width="377px" 
                        BorderColor="Black" CssClass="scrollDis">
                        <asp:Panel ID="panelhideBranch" runat="server" Height="223px" Width="363px" BackColor="Gainsboro"
                            BorderColor="#666666" BorderStyle="Outset">
                            <table style="width: 99%;">
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td>
                                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                                            Font-Size="Smaller" Font-Underline="True" ForeColor="Red" Text="Add/Edit"></asp:Label>
                                    </td>
                                    <td align="right">
                                        <asp:Button ID="cmdclose2" runat="server" BorderColor="Black" BorderStyle="Solid"
                                            BorderWidth="1px" Font-Bold="True" Font-Italic="False" Font-Names="Arial" ForeColor="Red"
                                            Text="X" Width="27px" />
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <table style="width: 100%;">
                                <tr>
                                    <td style="width: 15px; height: 27px;">
                                        &nbsp;
                                    </td>
                                    <td style="width: 101px; height: 27px;">
                                        <asp:Label ID="Label9" runat="server" Font-Names="Arial" Font-Size="Small" Text="Region Code"></asp:Label>
                                    </td>
                                    <td style="width: 22px; height: 27px;">
                                        <asp:TextBox ID="txtrcode" runat="server" Width="197px"></asp:TextBox>
                                    </td>
                                    <td style="width: 21px; height: 27px;">
                                        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/searchicon.jpg"
                                            Width="23px" Height="21px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 15px">
                                        &nbsp;
                                    </td>
                                    <td style="width: 101px">
                                        <asp:Label ID="Label10" runat="server" Font-Names="Arial" Font-Size="Small" Text="Area Code"></asp:Label>
                                    </td>
                                    <td style="width: 22px">
                                        <asp:TextBox ID="txtacode" runat="server" Width="197px"></asp:TextBox>
                                    </td>
                                    <td style="width: 21px">
                                        <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/images/searchicon.jpg"
                                            Width="23px" Height="22px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 22px">
                                    </td>
                                    <td style="height: 22px">
                                        <asp:Label ID="Label11" runat="server" Font-Names="Arial" Font-Size="Small" Text="Branch Code"></asp:Label>
                                    </td>
                                    <td style="height: 22px">
                                        <asp:TextBox ID="txtbcode" runat="server" Width="197px"></asp:TextBox>
                                    </td>
                                    <td style="height: 22px">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 22px">
                                    </td>
                                    <td style="height: 22px">
                                        <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="Small" Text="Name"></asp:Label>
                                    </td>
                                    <td style="height: 22px">
                                        <asp:TextBox ID="TextBox7" runat="server" Width="197px"></asp:TextBox>
                                    </td>
                                    <td style="height: 22px">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td>
                                        <asp:Label ID="lbldescription" runat="server" Font-Names="Arial" Font-Size="Small" Text="Description"></asp:Label>
                                    </td>
                                    <td rowspan="2">
                                        <asp:TextBox ID="txtdescription" runat="server" Width="199px" 
                                            Font-Names="Arial" TextMode="MultiLine"></asp:TextBox>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <table style="width: 101%; height: 27px;">
                                <tr>
                                    <td style="width: 63px">
                                        &nbsp;
                                    </td>
                                    <td align="right">
                                        <asp:ImageButton ID="cmdsave2" runat="server" 
                                            ImageUrl="~/images/Buttons/Save.gif" Height="25px"
                                            Width="75px" />
                                    </td>
                                    <td>
                                        <asp:ImageButton ID="cmdcancel2" runat="server" ImageUrl="~/images/Buttons/cancel.gif"
                                            Height="25px" Width="75px" />
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <br />
                        </asp:Panel>
                    </asp:Panel>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
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
                            Text="> Department"></asp:Label>
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
