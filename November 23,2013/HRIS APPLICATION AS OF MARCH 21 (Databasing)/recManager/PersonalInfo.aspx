<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/ManagerMasterPage.master"
    AutoEventWireup="false" CodeFile="PersonalInfo.aspx.vb" Inherits="recMANAGERinfo_Profile_PersonalInfo"
    Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="width: 195px; height: 374px;">
        <div style="height: 102px">
            <ul style="list-style: none;">
                <li class="label"><a class="name">Employee Profile</a></li></ul>
            <br />
            <ul style="list-style: none;">
                <li class="effects2"><a style="color: red; font-size: small;">
                    <asp:Label ID="Label2" runat="server" Text="> Personal Information" Height="16px"
                        Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="imgpersonalline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a href="ClearanceApproval.aspx">
                        <asp:Label ID="Label3" runat="server" Text="> Clearance Approval" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Image1" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                </li>
            </ul>
        </div>
        <div style="height: 225px">
            <ul style="list-style: none;">
                <li class="label"><a class="name">Reports</a></li></ul>
            <br />
            <ul style="list-style: none;">
                <li class="effects2"><a href="manManpowerList.aspx">
                    <asp:Label ID="manpower" runat="server" Text="> Manpower Lists" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Imgmanpowerline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a href="manEmployeeStatus.aspx">
                        <asp:Label ID="newregular" runat="server" Text="> Employee Status" Height="16px"
                            Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="imgnewline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a href="Ratio.aspx">
                        <asp:Label ID="resigned" runat="server" Text="> Ratio" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Imgresignedline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                </li>
            </ul>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="width: 782px; height: 491px;">
        <table style="width: 100%;">
            <tr>
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 56px">
                    <asp:Label ID="Label173" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="ID No."></asp:Label>
                </td>
                <td style="width: 115px">
                    <asp:TextBox ID="textbox1" runat="server" Font-Names="Arial" Height="16px" 
                        Width="136px" AutoPostBack="True"></asp:TextBox>
                        <asp:FilteredTextBoxExtender ID="Filter1" runat="server" TargetControlID="textbox1"
                        FilterType="Numbers">
                    </asp:FilteredTextBoxExtender>
                </td>
                <td style="width: 49px">
                    <asp:ImageButton ID="cmdBrowse" runat="server" Height="16px" ImageUrl="~/images/searchlens.jpg"
                        Width="20px" />
                </td>
                <td style="width: 41px">
                    <asp:Label ID="Label174" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Name"></asp:Label>
                </td>
                <td style="width: 115px">
                    <asp:TextBox ID="textbox2" runat="server" Font-Names="Arial" Height="16px" 
                        Width="180px" AutoPostBack="True"></asp:TextBox>
                </td>
                <td style="width: 129px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
        <asp:TabContainer ID="tcRecords" runat="server" ActiveTabIndex="2" Height="415px"
            Width="776px" Font-Size="X-Small" Font-Names="Arial" ForeColor="Black" 
            AccessKey="t">
            <asp:TabPanel runat="server" HeaderText="Personal Info" ID="TabPanel1">
                <ContentTemplate><br /><asp:Label ID="Label29" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#3333FF"
                        Text="Personal Information" Font-Names="Arial"></asp:Label><br /><br /><table style="width: 101%; height: 263px;" cellspacing="5px"><tr><td style="width: 4px;"></td><td style="width: 144px;"><asp:Label ID="Label30" runat="server" Font-Names="Arial" Font-Size="Small" Text="Last Name"></asp:Label></td><td style="width: 247px;"><asp:TextBox ID="textbox3" runat="server" Height="16px" Width="235px" 
                            Font-Names="Arial"></asp:TextBox></td><td style="width: 82px;"><asp:Label ID="Label31" runat="server" Font-Names="Arial" Font-Size="Small" Text="Sex"></asp:Label></td><td style="width: 135px;"><asp:DropDownList ID="drop74" runat="server" Height="20px" Width="82px" 
                                    Font-Names="Arial"><asp:ListItem></asp:ListItem><asp:ListItem>Male</asp:ListItem><asp:ListItem>Female</asp:ListItem></asp:DropDownList></td><td rowspan="4"><asp:Image ID="Image4" runat="server" BackColor="#999999" BorderColor="Black" BorderWidth="2px"
                                    Height="87px" Width="107px" /></td></tr><tr><td style="width: 4px;"></td><td style="width: 144px;"><asp:Label ID="Label32" runat="server" Font-Names="Arial" Font-Size="Small" Text="First Name"></asp:Label></td><td style="width: 247px;"><asp:TextBox ID="textbox4" runat="server" Height="16px" Width="235px" 
                                Font-Names="Arial"></asp:TextBox></td><td style="width: 82px;"><asp:Label ID="Label40" runat="server" Font-Size="Small" Text="Age" Font-Names="Arial"></asp:Label></td><td style="width: 135px;"><asp:DropDownList ID="drop75" runat="server" Height="20px" Width="82px" 
                                    Font-Names="Arial"><asp:ListItem></asp:ListItem></asp:DropDownList></td></tr><tr><td style="width: 4px; height: 21px;"></td><td style="width: 144px; height: 21px;"><asp:Label ID="Label33" runat="server" Font-Names="Arial" Font-Size="Small" Text="Middle Name"></asp:Label></td><td style="width: 247px; height: 21px;"><asp:TextBox ID="textbox5" runat="server" Height="16px" Width="235px" 
                                Font-Names="Arial"></asp:TextBox></td><td style="width: 82px; height: 21px;"><asp:Label ID="Label41" runat="server" Font-Size="Small" Text="Height" Font-Names="Arial"></asp:Label></td><td style="width: 135px; height: 21px;"><asp:DropDownList ID="drop76" runat="server" Height="20px" Width="82px" 
                                Font-Names="Arial"><asp:ListItem></asp:ListItem></asp:DropDownList>&#160;&#160;<asp:Label ID="Label162" runat="server" Text="ft/inch" Font-Size="11px"
                                    Font-Names="Arial"></asp:Label></td></tr><tr><td style="width: 4px; height: 16px;"></td><td style="width: 144px; height: 16px;"><asp:Label ID="Label34" runat="server" Font-Size="Small" Text="Nick Name" Font-Names="Arial"></asp:Label></td><td style="width: 247px; height: 16px;"><asp:TextBox ID="textbox6" runat="server" Height="16px" Width="235px" 
                                Font-Names="Arial"></asp:TextBox></td><td style="width: 82px; height: 16px;"><asp:Label ID="Label42" runat="server" Font-Size="Small" Text="Weight" Font-Names="Arial"></asp:Label></td><td style="width: 135px; height: 16px;"><asp:DropDownList ID="drop77" runat="server" Height="20px" Width="82px" 
                                Font-Names="Arial"><asp:ListItem></asp:ListItem></asp:DropDownList>&#160;&#160;<asp:Label ID="Label163" runat="server" Text="kg" Font-Size="11px" Font-Names="Arial"></asp:Label></td></tr><tr><td style="width: 4px;"></td><td style="width: 144px;"><asp:Label ID="Label35" runat="server" Font-Size="Small" Text="City Address" Font-Names="Arial"></asp:Label></td><td style="width: 247px;"><asp:TextBox ID="textbox7" runat="server" Height="16px" Width="235px" Style="margin-top: 3px"
                                    Font-Names="Arial"></asp:TextBox></td><td style="width: 82px;"><asp:Label ID="Label43" runat="server" Font-Size="Small" Text="Contact No." Font-Names="Arial"></asp:Label></td><td style="width: 135px;"><asp:TextBox ID="textbox15" runat="server" Height="16px" Width="115px" 
                            Font-Names="Arial"></asp:TextBox></td><td>&#160;&#160; </td></tr><tr><td style="width: 4px;"></td><td style="width: 144px;"><asp:Label ID="Label36" runat="server" Font-Size="Small" Text="Provincial Address"
                                    Font-Names="Arial"></asp:Label></td><td style="width: 247px;"><asp:TextBox ID="textbox8" runat="server" Height="16px" Width="235px" 
                                Font-Names="Arial"></asp:TextBox></td><td style="width: 82px;"><asp:Label ID="Label44" runat="server" Font-Size="Small" Text="Contact No." Font-Names="Arial"></asp:Label></td><td style="width: 135px;"><asp:TextBox ID="textbox16" runat="server" Height="16px" Width="115px" 
                            Font-Names="Arial"></asp:TextBox>&#160; <asp:FilteredTextBoxExtender ID="ftbe2" runat="server" TargetControlID="textbox16"
                                    FilterType="Custom, Numbers" ValidChars="-+() " Enabled="True"></asp:FilteredTextBoxExtender></td><td rowspan="6">&#160;&#160; </td></tr><tr><td style="width: 4px;"></td><td style="width: 144px;"><asp:Label ID="Label37" runat="server" Font-Size="Small" Text="Place of Birth" Font-Names="Arial"></asp:Label></td><td style="width: 247px;"><asp:TextBox ID="textbox9" runat="server" Height="16px" Width="235px" 
                            Font-Names="Arial"></asp:TextBox></td><td style="width: 82px;"><asp:Label ID="Label47" runat="server" Font-Size="Small" Text="Date of Birth" Font-Names="Arial"></asp:Label></td><td style="width: 135px;"><asp:TextBox ID="textbox17" runat="server" Font-Names="Arial" Font-Size="12px" Height="16px"
                                    Width="115px" ReadOnly="True"></asp:TextBox></td></tr><tr><td style="width: 4px;"></td><td style="width: 144px;"><asp:Label ID="Label38" runat="server" Font-Size="Small" Text="Citizenship" Font-Names="Arial"></asp:Label></td><td style="width: 247px;"><asp:TextBox ID="textbox10" runat="server" Height="16px" Width="235px" 
                                Font-Names="Arial"></asp:TextBox></td><td style="width: 82px;"><asp:Label ID="Label46" runat="server" Font-Size="Small" Text="Civil Status" Font-Names="Arial"></asp:Label></td><td style="width: 135px;"><asp:DropDownList ID="drop78" runat="server" Height="20px" Width="119px" 
                                Font-Names="Arial"><asp:ListItem></asp:ListItem><asp:ListItem>Single</asp:ListItem><asp:ListItem>Married</asp:ListItem><asp:ListItem>Widow</asp:ListItem><asp:ListItem>Widower</asp:ListItem><asp:ListItem>Separated</asp:ListItem></asp:DropDownList></td></tr><tr><td style="width: 4px;"></td><td style="width: 144px;"><asp:Label ID="Label39" runat="server" Font-Size="Small" Text="Religion" Font-Names="Arial"></asp:Label></td><td style="width: 247px;"><asp:TextBox ID="textbox11" runat="server" Height="16px" Width="235px" 
                            Font-Names="Arial"></asp:TextBox></td><td style="width: 82px;"><asp:Label ID="Label62" runat="server" Text="Applicant No." Font-Size="Small" Font-Names="Arial"></asp:Label></td><td style="width: 135px;"><asp:TextBox ID="textbox18" runat="server" Height="16px" Width="115px" 
                            Font-Names="Arial"></asp:TextBox></td></tr><tr><td style="width: 4px;"></td><td style="width: 144px;"><asp:Label ID="Label59" runat="server" Text="Residence Certificate #" Font-Size="Small"
                                    Font-Names="Arial"></asp:Label></td><td style="width: 247px;"><asp:TextBox ID="textbox12" runat="server" Height="16px" Width="235px" 
                                    Font-Names="Arial"></asp:TextBox><asp:FilteredTextBoxExtender
                                    ID="ftbeRC" runat="server" TargetControlID="textbox12" FilterType="Custom, Numbers"
                                    ValidChars="- " Enabled="True"></asp:FilteredTextBoxExtender></td><td style="width: 82px;"><asp:Label ID="Label63" runat="server" Text="Date Issued" Font-Size="Small" Font-Names="Arial"></asp:Label></td><td style="width: 135px;"><asp:TextBox ID="textbox19" runat="server" Font-Names="Arial" Font-Size="12px"
                                    Height="16px" Width="115px" ReadOnly="True"></asp:TextBox></td></tr><tr><td style="width: 4px;"></td><td style="width: 144px;"><asp:Label ID="Label60" runat="server" Text="SSS No." Font-Size="Small" Font-Names="Arial"></asp:Label></td><td style="width: 247px;"><asp:TextBox ID="textbox13" runat="server" Height="16px" Width="235px" 
                                Font-Names="Arial"></asp:TextBox><asp:FilteredTextBoxExtender
                                    ID="ftbeSSS" runat="server" TargetControlID="textbox13" FilterType="Custom, Numbers"
                                    ValidChars="- " Enabled="True"></asp:FilteredTextBoxExtender></td><td style="width: 82px;"><asp:Label ID="Label66" runat="server" Text="Place" Font-Size="Small" Font-Names="Arial"></asp:Label></td><td style="width: 135px;"><asp:TextBox ID="textbox20" runat="server" Height="16px" Width="115px" 
                                Font-Names="Arial"></asp:TextBox></td></tr><tr><td style="width: 4px;"></td><td style="width: 144px;"><asp:Label ID="Label61" runat="server" Font-Size="Small" Text="Tax I.D." Font-Names="Arial"></asp:Label></td><td style="width: 247px;"><asp:TextBox ID="textbox14" runat="server" Height="16px" Width="235px" 
                                Font-Names="Arial"></asp:TextBox><asp:FilteredTextBoxExtender
                                    ID="ftbetax" runat="server" TargetControlID="textbox14" FilterType="Custom, Numbers"
                                    ValidChars="- " Enabled="True"></asp:FilteredTextBoxExtender></td><td style="width: 82px;"></td><td style="width: 135px;"></td><td>&#160;&#160; </td></tr></table>
                </ContentTemplate>
            </asp:TabPanel>
            <asp:TabPanel ID="TabPanel2" runat="server" HeaderText="Employment">
                <ContentTemplate><br /><table style="width: 100%;"><tr><td style="width: 31px">&#160;&#160; </td><td style="width: 107px"><asp:Label ID="Label50" runat="server" Text="Position" Font-Size="Small" Font-Names="Arial"></asp:Label></td><td style="width: 334px"><asp:TextBox ID="textbox21" runat="server" Height="16px" Width="285px" 
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox>&nbsp; </td><td><asp:Label ID="Label58" runat="server" Text="Job Roles" Font-Size="Small" Font-Bold="True"></asp:Label></td></tr><tr><td style="width: 31px">&#160;&#160; </td><td style="width: 107px"><asp:Label ID="Label51" runat="server" Text="Immediate Head" Font-Size="Small" Font-Names="Arial"></asp:Label></td><td style="width: 334px"><asp:TextBox ID="textbox22" runat="server" Height="16px" Width="285px" 
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox>&nbsp; </td><td rowspan="5"><asp:ListBox ID="lstJob" runat="server" Height="111px" Width="257px" Font-Names="Arial"><asp:ListItem>ABM</asp:ListItem><asp:ListItem>Cashier</asp:ListItem><asp:ListItem>Records in Charge</asp:ListItem><asp:ListItem>Sales Clerk</asp:ListItem><asp:ListItem>Teller</asp:ListItem></asp:ListBox></td></tr><tr><td style="width: 31px">&#160;&#160; </td><td style="width: 107px"><asp:Label ID="Label52" runat="server" Text="Cost Center" Font-Size="Small" Font-Names="Arial"></asp:Label></td><td style="width: 334px"><asp:TextBox ID="textbox23" runat="server" Height="16px" Width="102px" 
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox>&nbsp;&nbsp;<asp:Label
                                    ID="lblcostcenter" runat="server" Font-Size="Small" 
                        Font-Names="Arial"></asp:Label></td></tr><tr><td style="height: 12px; width: 31px"></td><td style="height: 12px; width: 107px;"><asp:Label ID="Label53" runat="server" Text="Department" Font-Size="Small" Font-Names="Arial"></asp:Label></td><td style="height: 12px; width: 334px;"><asp:TextBox ID="textbox24" runat="server" Height="16px" Width="285px" 
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox>&nbsp; </td></tr><tr><td style="width: 31px">&#160;&#160; </td><td style="width: 107px"><asp:Label ID="Label54" runat="server" Text="Status" Font-Size="Small" Font-Names="Arial"></asp:Label></td><td style="width: 334px"><asp:TextBox ID="textbox25" runat="server" Height="16px" Width="285px" 
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td></tr><tr><td style="width: 31px">&#160;&#160; </td><td style="width: 107px"><asp:Label ID="Label55" runat="server" Text="Date Hired" Font-Size="Small" Font-Names="Arial"></asp:Label></td><td style="width: 334px"><asp:TextBox ID="textbox26" runat="server" Height="16px" Width="106px" Font-Names="Arial"
                                    ReadOnly="True"></asp:TextBox>&#160;<asp:Label ID="Label57" runat="server" Text="End Date" Font-Size="Small" Font-Names="Arial"></asp:Label>&#160;<asp:TextBox
                                    ID="textbox27" runat="server" Height="16px" Width="106px" 
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td></tr></table>
                </ContentTemplate>
            </asp:TabPanel>
            <asp:TabPanel ID="TabPanel3" runat="server" HeaderText="Family Background">
                <HeaderTemplate>
                Family Background</HeaderTemplate>
                <ContentTemplate><br /><table style="width: 100%;"><tr><td style="width: 92px"><asp:Label ID="Label67" runat="server" Text="Spouse's Name" Font-Names="Arial" Font-Size="12px"></asp:Label></td><td 
                            style="width: 292px"><asp:TextBox ID="textbox28" runat="server" Enabled="False" Font-Names="Arial" 
                            Font-Size="12px" Height="14px" Width="86px"></asp:TextBox><asp:TextBoxWatermarkExtender ID="tbwes1" runat="server" Enabled="True" 
                            TargetControlID="textbox28" WatermarkCssClass="waterTxt" 
                            WatermarkText="Surname"></asp:TextBoxWatermarkExtender><asp:TextBox ID="textbox29" runat="server" Enabled="False" Font-Names="Arial" 
                            Font-Size="12px" Height="14px" Width="86px"></asp:TextBox><asp:TextBoxWatermarkExtender ID="tbwes2" runat="server" Enabled="True" 
                            TargetControlID="textbox29" WatermarkCssClass="waterTxt" 
                            WatermarkText="Given Name"></asp:TextBoxWatermarkExtender><asp:TextBox ID="textbox30" runat="server" Enabled="False" Font-Names="Arial" 
                            Font-Size="12px" Height="14px" Width="86px"></asp:TextBox><asp:TextBoxWatermarkExtender ID="tbwe3" runat="server" Enabled="True" 
                            TargetControlID="textbox30" WatermarkCssClass="waterTxt" 
                            WatermarkText="Middle Name"></asp:TextBoxWatermarkExtender></td><td><asp:Label 
                                ID="Label77" runat="server" Font-Names="Arial" Font-Size="12px" 
                                Text="No. of Children (even if single parent)"></asp:Label></td></tr><tr><td 
                                style="width: 92px"><asp:Label ID="Label68" runat="server" 
                                Font-Names="Arial" Font-Size="12px" Text="Occupation"></asp:Label></td><td style="width: 292px"><asp:TextBox ID="textbox31" runat="server" Height="14px" Width="276px" Font-Size="12px"
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td rowspan="3"><asp:Panel 
                                    ID="Panel1" runat="server" BackColor="#666666" BorderColor="Black" 
                                    BorderStyle="Solid" BorderWidth="2px" Height="55px" Width="363px"><asp:GridView ID="dgridChildren" runat="server" AutoGenerateColumns="False" 
                                    BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                                    CellPadding="3" EmptyDataText="No Children Yet" ForeColor="Black" 
                                    GridLines="Vertical" Height="55px" Width="363px"><AlternatingRowStyle BackColor="#CCCCCC" /><Columns><asp:BoundField DataField="ChildName" HeaderText="Names"><HeaderStyle Font-Size="8pt" /><ItemStyle Font-Size="8pt" /></asp:BoundField><asp:BoundField DataField="ChildAge" HeaderText="Ages"><HeaderStyle Font-Size="8pt" /><ItemStyle Font-Size="8pt" /></asp:BoundField></Columns><EmptyDataRowStyle BackColor="LightBlue" Font-Size="20px" 
                                        HorizontalAlign="Center" VerticalAlign="Middle" /><FooterStyle BackColor="#CCCCCC" /><HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" 
                                        Height="14px" /><PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" /><SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" /></asp:GridView></asp:Panel></td></tr><tr><td style="width: 92px"><asp:Label ID="Label69" runat="server" Text="Employed By" Font-Size="12px" Font-Names="Arial"></asp:Label></td><td style="width: 292px"><asp:TextBox ID="textbox32" runat="server" Height="14px" Width="276px" Font-Size="12px"
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td></tr><tr><td style="width: 92px"><asp:Label ID="Label70" runat="server" Text="Contact No." Font-Size="12px" Font-Names="Arial"></asp:Label></td><td style="width: 292px"><asp:TextBox ID="textbox33" runat="server" Height="14px" Width="276px" Font-Size="12px"
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td></tr></table><br /><table style="width: 100%;"><tr><td 
                            style="width: 96px"><asp:Label ID="Label72" runat="server" 
                            Font-Names="Arial" Font-Size="12px" Text="Father's Name"></asp:Label></td><td 
                            style="width: 292px"><asp:TextBox ID="textbox34" runat="server" Enabled="False" Font-Names="Arial" 
                                Font-Size="12px" Height="14px" Width="86px"></asp:TextBox><asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" 
                                Enabled="True" TargetControlID="textbox34" WatermarkCssClass="waterTxt" 
                                WatermarkText="Surname"></asp:TextBoxWatermarkExtender><asp:TextBox ID="textbox35" runat="server" Enabled="False" Font-Names="Arial" 
                                Font-Size="12px" Height="14px" Width="86px"></asp:TextBox><asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender3" runat="server" 
                                Enabled="True" TargetControlID="textbox35" WatermarkCssClass="waterTxt" 
                                WatermarkText="Given Name"></asp:TextBoxWatermarkExtender><asp:TextBox ID="textbox36" runat="server" Enabled="False" Font-Names="Arial" 
                                Font-Size="12px" Height="14px" Width="86px"></asp:TextBox><asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" runat="server" 
                                Enabled="True" TargetControlID="textbox36" WatermarkCssClass="waterTxt" 
                                WatermarkText="Middle Name"></asp:TextBoxWatermarkExtender></td><td 
                            style="width: 89px"><asp:Label ID="Label73" runat="server" Font-Names="Arial" 
                                Font-Size="12px" Text="Mother's Name"></asp:Label></td><td><asp:TextBox ID="textbox40" runat="server" Enabled="False" Font-Names="Arial" 
                                Font-Size="12px" Height="14px" Width="86px"></asp:TextBox><asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender4" runat="server" 
                                Enabled="True" TargetControlID="textbox40" WatermarkCssClass="waterTxt" 
                                WatermarkText="Surname"></asp:TextBoxWatermarkExtender><asp:TextBox ID="textbox41" runat="server" Enabled="False" Font-Names="Arial" 
                                Font-Size="12px" Height="14px" Width="86px"></asp:TextBox><asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender5" runat="server" 
                                Enabled="True" TargetControlID="textbox41" WatermarkCssClass="waterTxt" 
                                WatermarkText="Given Name"></asp:TextBoxWatermarkExtender><asp:TextBox ID="textbox42" runat="server" Enabled="False" Font-Names="Arial" 
                                Font-Size="12px" Height="14px" Width="86px"></asp:TextBox><asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender6" runat="server" 
                                Enabled="True" TargetControlID="textbox42" WatermarkCssClass="waterTxt" 
                                WatermarkText="Middle Name"></asp:TextBoxWatermarkExtender></td></tr><tr><td 
                                style="width: 96px"><asp:Label ID="Label74" runat="server" 
                                Font-Names="Arial" Font-Size="12px" Text="Occupation"></asp:Label></td><td 
                                style="width: 292px"><asp:TextBox ID="textbox37" runat="server" 
                                    Font-Names="Arial" Font-Size="12px" Height="14px" ReadOnly="True" 
                                    Width="276px"></asp:TextBox></td><td 
                                style="width: 89px"><asp:Label ID="Label78" runat="server" Font-Names="Arial" 
                                    Font-Size="12px" Text="Occupation"></asp:Label></td><td><asp:TextBox 
                                    ID="textbox43" runat="server" Font-Names="Arial" Font-Size="12px" 
                                    Height="14px" ReadOnly="True" Width="276px"></asp:TextBox></td></tr><tr><td 
                                style="width: 96px"><asp:Label ID="Label75" runat="server" 
                                Font-Names="Arial" Font-Size="12px" Text="Employed By"></asp:Label></td><td 
                                style="width: 292px"><asp:TextBox ID="textbox38" runat="server" 
                                    Font-Names="Arial" Font-Size="12px" Height="14px" ReadOnly="True" 
                                    Width="276px"></asp:TextBox></td><td 
                                style="width: 89px"><asp:Label ID="Label79" runat="server" Font-Names="Arial" 
                                    Font-Size="12px" Text="Employed By"></asp:Label></td><td><asp:TextBox 
                                    ID="textbox44" runat="server" Font-Names="Arial" Font-Size="12px" 
                                    Height="14px" ReadOnly="True" Width="276px"></asp:TextBox></td></tr><tr><td 
                                style="width: 96px"><asp:Label ID="Label76" runat="server" 
                                Font-Names="Arial" Font-Size="12px" Text="Contact No."></asp:Label></td><td 
                                style="width: 292px"><asp:TextBox ID="textbox39" runat="server" 
                                    Font-Names="Arial" Font-Size="12px" Height="14px" ReadOnly="True" 
                                    Width="276px"></asp:TextBox></td><td 
                                style="width: 89px"><asp:Label ID="Label80" runat="server" Font-Names="Arial" 
                                    Font-Size="12px" Text="Contact No."></asp:Label></td><td><asp:TextBox 
                                    ID="textbox45" runat="server" Font-Names="Arial" Font-Size="12px" 
                                    Height="14px" ReadOnly="True" Width="276px"></asp:TextBox></td></tr></table><br /><table style="width: 100%;"><tr><td 
                            style="width: 93px"><asp:Label ID="Label81" runat="server" 
                            Font-Names="Arial" Font-Size="12px" 
                            Text="Names of Siblings (from ELDEST to YOUNGEST)"></asp:Label></td><td><asp:Panel 
                                ID="Panel2" runat="server" BackColor="#666666" BorderColor="Black" 
                                BorderStyle="Solid" BorderWidth="2px" Height="111px" Width="655px"><asp:GridView ID="dgridChildren0" runat="server" AutoGenerateColumns="False" 
                                BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                                CellPadding="3" EmptyDataText="No Records Found!" ForeColor="Black" 
                                GridLines="Vertical" Height="112px" Width="655px"><AlternatingRowStyle BackColor="#CCCCCC" /><Columns><asp:BoundField DataField="Name" HeaderText="Names"><HeaderStyle Font-Size="8pt" /><ItemStyle Font-Size="8pt" /></asp:BoundField><asp:BoundField DataField="Age" HeaderText="Ages"><HeaderStyle Font-Size="8pt" /><ItemStyle 
                                        Font-Size="8pt" HorizontalAlign="Center" VerticalAlign="Middle" /></asp:BoundField><asp:BoundField DataField="Status" HeaderText="Status"><HeaderStyle Font-Size="8pt" /><ItemStyle Font-Size="8pt" /></asp:BoundField><asp:BoundField DataField="Occupation" HeaderText="Occupation"><HeaderStyle Font-Size="8pt" /><ItemStyle Font-Size="8pt" /></asp:BoundField><asp:BoundField DataField="Company" HeaderText="Company"><HeaderStyle Font-Size="8pt" /><ItemStyle Font-Size="8pt" /></asp:BoundField><asp:BoundField DataField="SpouseName" HeaderText="Spouse Name"><HeaderStyle Font-Size="8pt" /><ItemStyle Font-Size="8pt" /></asp:BoundField><asp:BoundField DataField="SpouseOccupation" HeaderText="Occupation"><HeaderStyle Font-Size="8pt" /><ItemStyle Font-Size="8pt" /></asp:BoundField><asp:BoundField DataField="SpouseCompany" HeaderText="Company"><HeaderStyle Font-Size="8pt" /><ItemStyle Font-Size="8pt" /></asp:BoundField></Columns><EmptyDataRowStyle BackColor="LightBlue" Font-Size="30px" 
                                    HorizontalAlign="Center" VerticalAlign="Middle" /><FooterStyle BackColor="#CCCCCC" /><HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" 
                                    Height="14px" /><PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" /><SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" /></asp:GridView></asp:Panel></td></tr></table><br /><table style="width: 100%;"><tr><td 
                            style="width: 92px"><asp:Label ID="Label82" runat="server" 
                            Font-Names="Arial" Font-Size="12px" Text="Hobbies and Interest"></asp:Label></td><td><asp:TextBox 
                                ID="textbox46" runat="server" Font-Names="Arial" Height="14px" ReadOnly="True" 
                                Width="655px"></asp:TextBox></td></tr></table></ContentTemplate>
            </asp:TabPanel>
            <asp:TabPanel ID="TabPanel4" runat="server" HeaderText="Technical Background">
                <HeaderTemplate>
                Technical Background</HeaderTemplate>
                <ContentTemplate><asp:Label ID="Label83" runat="server" Font-Bold="True" Font-Size="11px" ForeColor="#3333FF"
                        Text="Educational Record" Font-Names="Arial"></asp:Label><table style="width: 89%;"><tr><td style="width: 91px">&#160;&#160; </td><td style="width: 319px">&#160;&#160; </td><td colspan="4" style="text-align: center"><asp:Label ID="Label111" runat="server" Text="Year Attended" Font-Size="11px" Font-Names="Arial"></asp:Label></td></tr><tr><td style="width: 91px"><asp:Label ID="Label84" runat="server" Font-Size="12px" Text="Elementary" Font-Names="Arial"></asp:Label></td><td style="width: 319px"><asp:TextBox ID="textbox47" runat="server" Font-Size="12px" Height="14px" Width="298px"
                                        Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 33px"><asp:Label ID="Label98" runat="server" Font-Size="11px" Text="From" Font-Names="Arial"></asp:Label></td><td style="width: 91px"><asp:TextBox ID="textbox61" runat="server" Font-Names="Arial" Font-Size="12px" Height="14px"
                                        Width="90px" ReadOnly="True"></asp:TextBox></td><td style="width: 21px">&#160;<asp:Label ID="Label100" runat="server" Font-Size="11px" Text="To" Font-Names="Arial"></asp:Label></td><td style="width: 92px"><asp:TextBox ID="textbox62" runat="server" Font-Names="Arial" Font-Size="12px" Height="14px"
                                        Width="90px" ReadOnly="True"></asp:TextBox></td></tr><tr><td style="width: 91px"><asp:Label ID="Label85" runat="server" Text="Address" Font-Size="12px" Font-Names="Arial"></asp:Label></td><td style="width: 319px"><asp:TextBox ID="textbox48" runat="server" Font-Size="12px" Height="14px" Width="298px"
                                        Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 33px">&#160;&#160; </td><td style="width: 91px">&#160;&#160; </td><td style="width: 21px">&#160;&#160; </td><td style="width: 92px">&#160;&#160; </td></tr><tr><td style="width: 91px"><asp:Label ID="Label86" runat="server" Text="Honors/Awards" Font-Size="12px" Font-Names="Arial"></asp:Label></td><td style="width: 319px"><asp:TextBox ID="textbox49" runat="server" Font-Size="12px" Height="14px" Width="298px"
                                        Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 33px">&#160;&#160; </td><td style="width: 91px">&#160;&#160; </td><td style="width: 21px">&#160;&#160; </td><td style="width: 92px">&#160;&#160; </td></tr><tr><td style="width: 91px"><asp:Label ID="Label87" runat="server" Text="High School" Font-Size="12px" Font-Names="Arial"></asp:Label></td><td style="width: 319px"><asp:TextBox ID="textbox50" runat="server" Font-Size="12px" Height="14px" Width="298px"
                                        Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 33px"><asp:Label ID="Label101" runat="server" Font-Size="11px" Text="From" Font-Names="Arial"></asp:Label></td><td style="width: 91px"><asp:TextBox ID="textbox63" runat="server" Font-Names="Arial" Font-Size="12px" Height="14px"
                                        Width="90px"></asp:TextBox></td><td style="width: 21px">&#160;<asp:Label ID="Label104" runat="server" Font-Size="11px" Text="To" Font-Names="Arial"></asp:Label></td><td style="width: 92px"><asp:TextBox ID="textbox64" runat="server" Font-Names="Arial" Font-Size="12px" Height="14px"
                                        Width="90px" ReadOnly="True"></asp:TextBox></td></tr><tr><td style="width: 91px"><asp:Label ID="Label88" runat="server" Text="Address" Font-Size="12px" Font-Names="Arial"></asp:Label></td><td style="width: 319px"><asp:TextBox ID="textbox51" runat="server" Font-Size="12px" Height="14px" Width="298px"
                                        Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 33px">&#160;&#160; </td><td style="width: 91px">&#160;&#160; </td><td style="width: 21px">&#160;&#160; </td><td style="width: 92px">&#160;&#160; </td></tr><tr><td style="width: 91px"><asp:Label ID="Label89" runat="server" Text="Honors/Awards" Font-Size="12px" Font-Names="Arial"></asp:Label></td><td style="width: 319px"><asp:TextBox ID="textbox52" runat="server" Font-Size="12px" Height="14px" Width="298px"
                                        Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 33px">&#160;&#160; </td><td style="width: 91px">&#160;&#160; </td><td style="width: 21px">&#160;&#160; </td><td style="width: 92px">&#160;&#160; </td></tr><tr><td style="width: 91px"><asp:Label ID="Label90" runat="server" Text="College" Font-Size="12px" Font-Names="Arial"></asp:Label></td><td style="width: 319px"><asp:TextBox ID="textbox53" runat="server" Font-Size="12px" Height="14px" Width="298px"
                                        Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 33px"><asp:Label ID="Label102" runat="server" Font-Size="11px" Text="From" Font-Names="Arial"></asp:Label></td><td style="width: 91px"><asp:TextBox ID="textbox65" runat="server" Font-Names="Arial" Font-Size="12px" Height="14px"
                                        Width="90px" ReadOnly="True"></asp:TextBox></td><td style="width: 21px">&#160;<asp:Label ID="Label105" runat="server" Font-Size="11px" Text="To" Font-Names="Arial"></asp:Label></td><td style="width: 92px"><asp:TextBox ID="textbox66" runat="server" Font-Names="Arial" Font-Size="12px" Height="14px"
                                        Width="90px" ReadOnly="True"></asp:TextBox></td></tr><tr><td style="width: 91px"><asp:Label ID="Label91" runat="server" Font-Size="12px" Text="Course/Degree" Font-Names="Arial"></asp:Label></td><td style="width: 319px"><asp:TextBox ID="textbox54" runat="server" Font-Size="12px" Height="14px" Width="298px"
                                        Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 33px">&#160;&#160; </td><td style="width: 91px">&#160;&#160; </td><td style="width: 21px">&#160;&#160; </td><td style="width: 92px">&#160;&#160; </td></tr><tr><td style="width: 91px"><asp:Label ID="Label92" runat="server" Font-Size="12px" Text="Address" Font-Names="Arial"></asp:Label></td><td style="width: 319px"><asp:TextBox ID="textbox55" runat="server" Font-Size="12px" Height="14px" Width="298px"
                                        Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 33px">&#160;&#160; </td><td style="width: 91px">&#160;&#160; </td><td style="width: 21px">&#160;&#160; </td><td style="width: 92px">&#160;&#160; </td></tr><tr><td style="width: 91px"><asp:Label ID="Label93" runat="server" Font-Size="12px" Text="Honors/Awards" Font-Names="Arial"></asp:Label></td><td style="width: 319px"><asp:TextBox ID="textbox56" runat="server" Font-Size="12px" Height="14px" Width="298px"
                                        Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 33px">&#160;&#160; </td><td style="width: 91px">&#160;&#160; </td><td style="width: 21px">&#160;&#160; </td><td style="width: 92px">&#160;&#160; </td></tr><tr><td style="width: 91px"><asp:Label ID="Label94" runat="server" Font-Size="12px" Text="Post Graduate" Font-Names="Arial"></asp:Label></td><td style="width: 319px"><asp:TextBox ID="textbox57" runat="server" Font-Size="12px" Height="14px" Width="298px"
                                        Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 33px"><asp:Label ID="Label103" runat="server" Font-Size="11px" Text="From" Font-Names="Arial"></asp:Label></td><td style="width: 91px"><asp:TextBox ID="textbox67" runat="server" Font-Names="Arial" Font-Size="12px" Height="14px"
                                        Width="90px" ReadOnly="True"></asp:TextBox></td><td style="width: 21px">&#160;<asp:Label ID="Label106" runat="server" Font-Size="11px" Text="To" Font-Names="Arial"></asp:Label></td><td style="width: 92px"><asp:TextBox ID="textbox68" runat="server" Font-Names="Arial" Font-Size="12px" Height="14px"
                                        Width="90px" ReadOnly="True"></asp:TextBox></td></tr><tr><td style="width: 91px"><asp:Label ID="Label95" runat="server" Font-Size="12px" Text="Address" Font-Names="Arial"></asp:Label></td><td style="width: 319px"><asp:TextBox ID="textbox58" runat="server" Font-Size="12px" Height="14px" Width="298px"
                                        Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 33px">&#160;&#160; </td><td style="width: 91px">&#160;&#160; </td><td style="width: 21px">&#160;&#160; </td><td style="width: 92px">&#160;&#160; </td></tr><tr><td style="width: 91px; height: 16px;"><asp:Label ID="Label96" runat="server" Font-Size="12px" Text="Honors/Awards" Font-Names="Arial"></asp:Label></td><td style="height: 16px; width: 319px;"><asp:TextBox ID="textbox59" runat="server" Font-Size="12px" Height="14px" Width="298px"
                                        Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="height: 16px; width: 33px;"></td><td style="height: 16px; width: 91px;">&#160;&#160; </td><td style="height: 16px; width: 21px;">&#160;&#160; </td><td style="height: 16px; width: 92px;">&#160;&#160; </td></tr><tr><td style="width: 91px"><asp:Label ID="Label97" runat="server" Font-Size="12px" Text="Professional License Held"
                                        Font-Names="Arial"></asp:Label></td><td style="width: 319px"><asp:TextBox ID="textbox60" runat="server" Font-Size="12px" Height="14px" Width="298px"
                                        Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 33px">&#160;&#160; </td><td style="width: 91px">&#160;&#160; </td><td style="width: 21px">&#160;&#160; </td><td style="width: 92px">&#160;&#160; </td></tr></table><asp:Label ID="Label107" runat="server" Font-Bold="True" Font-Size="11px" ForeColor="#3333FF"
                        Text="Special Trainings/Seminars/Workshops Attended" Font-Names="Arial"></asp:Label><table
                            style="width: 100%;"><tr style="text-align: center"><td style="width: 250px"><asp:Label ID="Label108" runat="server" Text="Title" Font-Size="11px" Font-Names="Arial"></asp:Label></td><td style="width: 250px"><asp:Label ID="Label109" runat="server" Font-Size="11px" Text="Venue/Conducted By"
                                        Font-Names="Arial"></asp:Label></td><td style="width: 165px"><asp:Label ID="Label110" runat="server" Font-Size="11px" Text="Date" Font-Names="Arial"></asp:Label></td><td>&#160;&#160; </td></tr><tr><td style="width: 250px; height: 8px;"><asp:TextBox ID="txt1" runat="server" Height="14px" Width="245px" Font-Size="12px"
                                        Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="height: 8px; width: 250px"><asp:TextBox ID="txt2" runat="server" Font-Size="12px" Height="14px" Width="245px"
                                        Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="height: 8px; width: 165px;"><asp:TextBox ID="txt3" runat="server" Font-Names="Arial" Font-Size="12px" Height="14px"
                                        Width="162px" ReadOnly="True"></asp:TextBox></td><td style="height: 8px">&#160;&#160; </td></tr><tr><td style="width: 250px"><asp:TextBox ID="txt4" runat="server" Font-Size="12px" Height="14px" Width="245px"
                                        Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 250px"><asp:TextBox ID="txt5" runat="server" Font-Size="12px" Height="14px" Width="245px"
                                        Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 165px"><asp:TextBox ID="txt6" runat="server" Font-Names="Arial" Font-Size="12px" Height="14px"
                                        Width="162px" ReadOnly="True"></asp:TextBox></td><td>&#160;&#160; </td></tr><tr><td style="width: 250px"><asp:TextBox ID="txt7" runat="server" Font-Names="Arial" Font-Size="12px" Height="14px"
                                        Width="245px" ReadOnly="True"></asp:TextBox></td><td style="width: 250px"><asp:TextBox ID="txt8" runat="server" Font-Names="Arial" Font-Size="12px" Height="14px"
                                        Width="245px" ReadOnly="True"></asp:TextBox></td><td style="width: 165px"><asp:TextBox ID="txt9" runat="server" Font-Names="Arial" Font-Size="12px" Height="14px"
                                        Width="162px" ReadOnly="True"></asp:TextBox></td><td>&#160;&nbsp;</td></tr></table>
                </ContentTemplate>
            </asp:TabPanel>
            <asp:TabPanel ID="TabPanel5" runat="server" HeaderText="Work Experience">
                <HeaderTemplate>
                Work Experience</HeaderTemplate>
                <ContentTemplate><asp:Label ID="Label112" runat="server" Font-Bold="True" Font-Size="12px" ForeColor="#3333FF"
                        Text="Work Experience" Font-Names="Arial"></asp:Label><br /><table style="width: 100%;"><tr style="text-align: center"><td style="width: 129px"><asp:Label ID="Label113" runat="server" Font-Size="12px" Text="Company Address"></asp:Label></td><td style="width: 106px"><asp:Label ID="Label114" runat="server" Font-Size="12px" Text="Immediate Head" Font-Names="Arial"></asp:Label></td><td style="width: 66px"><asp:Label ID="Label115" runat="server" Font-Size="12px" Text="Contact No." Font-Names="Arial"></asp:Label></td><td style="width: 94px"><asp:Label ID="Label116" runat="server" Font-Size="12px" Text="Position" Font-Names="Arial"></asp:Label></td><td colspan="2"><asp:Label ID="Label120" runat="server" Font-Size="12px" Text="Inclusive Dates (From-To)"
                                    Font-Names="Arial"></asp:Label></td><td style="width: 43px"><asp:Label ID="Label118" runat="server" Font-Size="12px" Text="Salary" Font-Names="Arial"></asp:Label></td><td><asp:Label ID="Label119" runat="server" Font-Size="12px" Text="Reasons for Living"
                                    Font-Names="Arial"></asp:Label></td></tr><tr><td style="width: 129px"><asp:TextBox ID="txtwe1" runat="server" Font-Size="12px" Height="14px" Width="130px"
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 106px"><asp:TextBox ID="txtwe2" runat="server" Font-Size="12px" Height="14px" Width="130px"
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 66px"><asp:TextBox ID="txtwe3" runat="server" Font-Size="12px" Height="14px" Width="67px"
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 94px"><asp:TextBox ID="txtwe4" runat="server" Font-Size="12px" Height="14px" Width="92px"
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 55px"><asp:TextBox ID="txtwe5" runat="server" Font-Names="Arial" Font-Size="12px" Height="14px"
                                    Width="70px"></asp:TextBox></td><td style="width: 74px"><asp:TextBox ID="txtwe6" runat="server" Font-Names="Arial" Font-Size="12px" Height="14px"
                                    Width="70px" ReadOnly="True"></asp:TextBox></td><td style="width: 43px"><asp:TextBox ID="txtwe7" runat="server" Font-Size="12px" Height="14px" Width="45px"
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td><asp:TextBox ID="txtwe8" runat="server" Font-Size="12px" Height="14px" Width="109px"
                                    Font-Names="Arial"></asp:TextBox></td></tr><tr><td style="width: 129px"><asp:TextBox ID="txtwe9" runat="server" Font-Size="12px" Height="14px" Width="130px"
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 106px"><asp:TextBox ID="txtwe10" runat="server" Font-Size="12px" Height="14px" Width="130px"
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 66px"><asp:TextBox ID="txtwe11" runat="server" Font-Size="12px" Height="14px" Width="67px"
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 94px"><asp:TextBox ID="txtwe12" runat="server" Font-Size="12px" Height="14px" Width="92px"
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 55px"><asp:TextBox ID="txtwe13" runat="server" Font-Names="Arial" Font-Size="12px" Height="14px"
                                    Width="70px" ReadOnly="True"></asp:TextBox><asp:CalendarExtender ID="txtwe13_CalendarExtender"
                                        runat="server" Enabled="True" TargetControlID="txtwe13"></asp:CalendarExtender></td><td style="width: 74px"><asp:TextBox ID="txtwe14" runat="server" Font-Names="Arial" Font-Size="12px" Height="14px"
                                    Width="70px" ReadOnly="True"></asp:TextBox></td><td style="width: 43px"><asp:TextBox ID="txtwe15" runat="server" Font-Size="12px" Height="14px" Width="45px"
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td><asp:TextBox ID="txtwe16" runat="server" Font-Size="12px" Height="14px" Width="109px"
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td></tr><tr><td style="width: 129px"><asp:TextBox ID="txtwe17" runat="server" Font-Size="12px" Height="14px" Width="130px"
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 106px"><asp:TextBox ID="txtwe18" runat="server" Font-Size="12px" Height="14px" Width="130px"
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 66px"><asp:TextBox ID="txtwe19" runat="server" Font-Size="12px" Height="14px" Width="67px"
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 94px"><asp:TextBox ID="txtwe20" runat="server" Font-Size="12px" Height="14px" Width="92px"
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 55px"><asp:TextBox ID="txtwe21" runat="server" Font-Names="Arial" Font-Size="12px" Height="14px"
                                    Width="70px" ReadOnly="True"></asp:TextBox><asp:CalendarExtender ID="txtwe21_CalendarExtender"
                                        runat="server" Enabled="True" TargetControlID="txtwe21"></asp:CalendarExtender></td><td style="width: 74px"><asp:TextBox ID="txtwe22" runat="server" Font-Names="Arial" Font-Size="12px" Height="14px"
                                    Width="70px" ReadOnly="True"></asp:TextBox></td><td style="width: 43px"><asp:TextBox ID="txtwe23" runat="server" Font-Size="12px" Height="14px" Width="45px"
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td><asp:TextBox ID="txtwe24" runat="server" Font-Size="12px" Height="14px" Width="109px"
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td></tr><tr><td style="width: 129px"><asp:TextBox ID="txtwe25" runat="server" Font-Size="12px" Height="14px" Width="130px"
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 106px"><asp:TextBox ID="txtwe26" runat="server" Font-Size="12px" Height="14px" Width="130px"
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 66px"><asp:TextBox ID="txtwe27" runat="server" Font-Size="12px" Height="14px" Width="67px"
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 94px"><asp:TextBox ID="txtwe28" runat="server" Font-Size="12px" Height="14px" Width="92px"
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 55px"><asp:TextBox ID="txtwe29" runat="server" Font-Names="Arial" Font-Size="12px" Height="14px"
                                    Width="70px" ReadOnly="True"></asp:TextBox><asp:CalendarExtender ID="txtwe29_CalendarExtender"
                                        runat="server" Enabled="True" TargetControlID="txtwe29"></asp:CalendarExtender></td><td style="width: 74px"><asp:TextBox ID="txtwe30" runat="server" Font-Names="Arial" Font-Size="12px" Height="14px"
                                    Width="70px" ReadOnly="True"></asp:TextBox></td><td style="width: 43px"><asp:TextBox ID="txtwe31" runat="server" Font-Size="12px" Height="14px" Width="45px"
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td><asp:TextBox ID="txtwe32" runat="server" Font-Size="12px" Height="14px" Width="109px"
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td></tr></table><br /><asp:Label ID="Label121" runat="server" Font-Bold="True" Font-Size="12px" ForeColor="#3333FF"
                        Text="Other Information" Font-Names="Arial"></asp:Label><br /><table style="width: 100%;"><tr><td><asp:Label ID="Label126" runat="server" Text="Special Skills" Font-Size="12px" Font-Names="Arial"></asp:Label>&nbsp;&nbsp;<asp:CheckBox
                                    ID="chktyping" runat="server" Font-Size="12px" Text=" Typing" Font-Names="Arial" />&nbsp;<asp:CheckBox
                                        ID="chksteno" runat="server" Font-Size="12px" Text=" Steno" Font-Names="Arial" />&nbsp;<asp:CheckBox
                                            ID="chkartwork" runat="server" Font-Size="12px" Text=" Art Work" Font-Names="Arial" />&nbsp;<asp:CheckBox
                                                ID="chktyping0" runat="server" Font-Size="12px" Text=" IT/Computer (Please Specify)"
                                                Font-Names="Arial" />&nbsp;<asp:CheckBox ID="chktyping1" runat="server" Font-Size="12px"
                                                    Text=" Others" Font-Names="Arial" />&nbsp;<asp:TextBox ID="txtothers" runat="server"
                                                        Font-Size="12px" Height="14px" Width="251px" Font-Names="Arial" ReadOnly="True"></asp:TextBox></td></tr></table><table style="width: 100%;"><tr><td style="width: 220px"><asp:Label ID="Label123" runat="server" Font-Size="12px" Text="Languages/Dialects Spoken or Written"
                                    Font-Names="Arial"></asp:Label></td><td><asp:TextBox ID="textbox69" 
                                runat="server" Font-Size="12px" Height="14px" Width="272px"
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td>&#160;&#160; </td></tr><tr><td style="width: 220px"><asp:Label ID="Label124" runat="server" Font-Size="12px" Text="Machines/Equipment you can operate  "
                                    Font-Names="Arial"></asp:Label></td><td><asp:TextBox ID="txtmachines" runat="server" Font-Size="12px" Height="14px" Width="272px"
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td>&#160;&#160; </td></tr></table><table style="width: 100%;"><tr><td align="left" style="width: 482px"><asp:Label ID="Label125" runat="server" Font-Size="12px" Text="Are you willing to be assigned in NCR Luzon/Vismin where services are needed by the company?"
                                    Font-Names="Arial"></asp:Label>&#160;<asp:CheckBox ID="chkassign" runat="server"
                                        Font-Size="12px" Text=" Yes" Font-Names="Arial" /></td></tr><tr><td align="left" style="width: 482px"><asp:Label ID="Label127" runat="server" Font-Size="12px" Text="Do you have any friends or relatives working in any government offices? (e.g. BIR, DOLE, CUSTOMS)"
                                    Font-Names="Arial"></asp:Label>&#160;<asp:CheckBox ID="chkgov" runat="server" Font-Size="12px"
                                        Text=" Yes" Font-Names="Arial" /></td></tr><tr><td style="width: 482px"><asp:Label ID="Label128" runat="server" Font-Size="12px" Text="Where?" Font-Names="Arial"></asp:Label>&nbsp;<asp:TextBox
                                    ID="txtmachines0" runat="server" Font-Size="12px" Height="14px" Width="449px"
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td></tr></table><table style="width: 100%;"><tr><td style="width: 61px"><asp:Label ID="Label129" runat="server" Font-Size="12px" Text="Name" Font-Names="Arial"></asp:Label></td><td style="width: 202px"><asp:TextBox 
                            ID="txtgov1" runat="server" Font-Size="12px" Height="14px" Width="198px"
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 48px"><asp:Label ID="Label130" runat="server" Font-Size="12px" Text="Position" Font-Names="Arial"></asp:Label></td><td style="width: 202px"><asp:TextBox 
                            ID="txtgov2" runat="server" Font-Size="12px" Height="14px" Width="198px"
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 48px"><asp:Label ID="Label131" runat="server" Font-Size="12px" Text="Relation" Font-Names="Arial"></asp:Label></td><td><asp:TextBox 
                            ID="txtgov3" runat="server" Font-Size="12px" Height="14px" Width="198px"
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td></tr><tr><td style="width: 61px"><asp:Label ID="Label132" runat="server" Font-Size="12px" Text="Name" Font-Names="Arial"></asp:Label></td><td style="width: 202px"><asp:TextBox 
                                ID="txtgov4" runat="server" Font-Size="12px" Height="14px" Width="198px"
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 48px"><asp:Label ID="Label134" runat="server" Font-Size="12px" Text="Position" Font-Names="Arial"></asp:Label></td><td style="width: 202px"><asp:TextBox 
                                ID="txtgov5" runat="server" Font-Size="12px" Height="14px" Width="198px"
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 48px"><asp:Label ID="Label136" runat="server" Font-Size="12px" Text="Relation" Font-Names="Arial"></asp:Label></td><td><asp:TextBox 
                                ID="txtgov6" runat="server" Font-Size="12px" Height="14px" Width="198px"
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td></tr></table><table style="width: 100%;"><tr><td style="width: 75px"><asp:Label ID="Label137" runat="server" Font-Size="12px" Text="Do you?" Font-Names="Arial"></asp:Label></td><td style="width: 95px"><asp:CheckBox ID="chkrent" runat="server" Font-Size="12px" Text=" Rent/Board" Font-Names="Arial" /></td><td style="width: 179px"><asp:Label ID="Label139" runat="server" Font-Size="12px" Text="Since When?" Font-Names="Arial"></asp:Label>&#160;<asp:TextBox
                                    ID="txtSinceWhen" runat="server" Font-Names="Arial" Font-Size="12px" Height="14px"
                                    Width="85px" ReadOnly="True"></asp:TextBox></td><td style="width: 129px"><asp:CheckBox ID="chkhouse" runat="server" Font-Size="12px" Text=" Live in own house"
                                    Font-Names="Arial" /></td><td><asp:CheckBox ID="chkrelHouse" runat="server" Font-Size="12px" Text=" Live in Relative's House"
                                    Font-Names="Arial" /></td></tr><tr><td style="width: 75px"><asp:Label ID="Label138" runat="server" Font-Size="12px" Text="With Whom?" Font-Names="Arial"></asp:Label></td><td style="width: 95px"><asp:CheckBox ID="chkparents" runat="server" Font-Size="12px" Text=" Parents" Font-Names="Arial" /></td><td style="width: 179px"><asp:CheckBox ID="chkbrothers" runat="server" Font-Size="12px" Text=" Brothers/Sisters"
                                    Font-Names="Arial" /></td><td style="width: 129px"><asp:CheckBox ID="chkrelatives" runat="server" Font-Size="12px" Text=" Relatives"
                                    Font-Names="Arial" /></td><td><asp:CheckBox ID="chkotherhouse" runat="server" Font-Size="12px" Text=" Others" Font-Names="Arial" />&#160;<asp:TextBox
                                    ID="txtothershouse" runat="server" Font-Size="12px" Height="14px" Width="205px"
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td></tr></table><table style="width: 100%;"><tr><td style="width: 290px"><asp:Label ID="Label140" runat="server" Font-Size="12px" Text="Have you been convicted of any crime?"
                                    Font-Names="Arial"></asp:Label></td><td style="width: 96px"><asp:CheckBox ID="chkNoCrime" runat="server" Font-Size="12px" Text=" No" Font-Names="Arial" />&#160;<asp:CheckBox
                                    ID="chkYesCrime" runat="server" Font-Size="12px" Text=" Yes" Font-Names="Arial" /></td><td><asp:Label ID="Label175" runat="server" Font-Names="Arial" Font-Size="12px" Text="If Yes, Please give details"></asp:Label>&#160;<asp:TextBox
                                    ID="txtIfYesCrime" runat="server" Font-Size="12px" Height="14px" Width="214px"
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td></tr><tr><td style="width: 290px"><asp:Label ID="Label141" runat="server" Font-Size="12px" Text="Have you been afflicted with any Major Disease?"
                                    Font-Names="Arial"></asp:Label></td><td style="width: 96px"><asp:CheckBox ID="chkNoDisease" runat="server" Font-Size="12px" Text=" No" Font-Names="Arial" />&#160;<asp:CheckBox
                                    ID="chkYesDisease" runat="server" Font-Size="12px" Text=" Yes" Font-Names="Arial" /></td><td><asp:Label ID="Label176" runat="server" Font-Names="Arial" Font-Size="12px" Text="If Yes, Please give details"></asp:Label>&nbsp;<asp:TextBox
                                    ID="txtIfYesDisease" runat="server" Font-Size="12px" Height="14px" Width="214px"
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td></tr><tr><td style="width: 290px"><asp:Label ID="Label142" runat="server" Font-Size="12px" Text="Do you have any Physical defect or Disability?"
                                    Font-Names="Arial"></asp:Label></td><td style="width: 96px"><asp:CheckBox ID="chkNoDisability" runat="server" Font-Size="12px" Text=" No" Font-Names="Arial" />&#160;<asp:CheckBox
                                    ID="chkYesDisability" runat="server" Font-Size="12px" Text=" Yes" Font-Names="Arial" /></td><td><asp:Label ID="Label177" runat="server" Font-Names="Arial" Font-Size="12px" Text="If Yes, Please give details"></asp:Label>&nbsp;<asp:TextBox
                                    ID="txtIfYesDisability" runat="server" Font-Size="12px" Height="14px" Width="214px"
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td></tr></table>
                </ContentTemplate>
            </asp:TabPanel>
            <asp:TabPanel ID="TabPanel6" runat="server" HeaderText="References">
                <HeaderTemplate>
                References</HeaderTemplate>
                <ContentTemplate><asp:Label ID="Label143" runat="server" Font-Bold="True" Font-Size="12px" ForeColor="#3333FF"
                        Text="Relatives/Friends in M. Lhuillier Group of Companies" Font-Names="Arial"></asp:Label><br /><table style="width: 100%;"><tr style="text-align: center"><td style="width: 186px"><asp:Label ID="Label144" runat="server" Font-Size="12px" Text="Name" Font-Names="Arial"></asp:Label></td><td style="width: 186px"><asp:Label ID="Label145" runat="server" Font-Size="12px" Text="Position" Font-Names="Arial"></asp:Label></td><td style="width: 186px"><asp:Label ID="Label146" runat="server" Font-Size="12px" Text="Branch Office" Font-Names="Arial"></asp:Label></td><td><asp:Label ID="Label147" runat="server" Font-Size="12px" Text="Relationship" Font-Names="Arial"></asp:Label></td></tr><tr><td style="width: 186px"><asp:TextBox ID="txtref1" runat="server" Height="16px" Width="181px" 
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 186px"><asp:TextBox ID="txtref2" runat="server" Height="16px" Width="181px" 
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 186px"><asp:TextBox ID="txtref3" runat="server" Height="16px" Width="181px" 
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td><asp:TextBox ID="txtref4" runat="server" Height="16px" Width="181px" 
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td></tr><tr><td style="width: 186px"><asp:TextBox ID="txtref5" runat="server" Height="16px" Width="181px" 
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 186px"><asp:TextBox ID="txtref6" runat="server" Height="16px" Width="181px" 
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 186px"><asp:TextBox ID="txtref7" runat="server" Height="16px" Width="181px" 
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td><asp:TextBox ID="txtref8" runat="server" Height="16px" Width="181px" 
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td></tr><tr><td style="width: 186px"><asp:TextBox ID="txtref9" runat="server" Height="16px" Width="181px" 
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 186px"><asp:TextBox ID="txtref10" runat="server" Height="16px" Width="181px" 
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 186px"><asp:TextBox ID="txtref11" runat="server" Height="16px" Width="181px" 
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td><asp:TextBox ID="txtref12" runat="server" Height="16px" Width="181px" 
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td></tr></table><br /><asp:Label ID="Label148" runat="server" Font-Bold="True" Font-Size="12px" ForeColor="#3333FF"
                        Text="Reference (Give atleast one from your community)" Font-Names="Arial"></asp:Label><br /><table style="width: 100%;"><tr style="text-align: center"><td style="width: 186px;"><asp:Label ID="Label149" runat="server" Font-Size="12px" Text="Name" Font-Names="Arial"></asp:Label></td><td style="width: 186px;"><asp:Label ID="Label150" runat="server" Font-Size="12px" Text="Address" Font-Names="Arial"></asp:Label></td><td style="width: 186px;"><asp:Label ID="Label151" runat="server" Font-Size="12px" Text="Contact No." Font-Names="Arial"></asp:Label></td><td><asp:Label ID="Label152" runat="server" Font-Size="12px" Text="Occupation" Font-Names="Arial"></asp:Label></td></tr><tr><td style="width: 186px;"><asp:TextBox ID="txtRname1" runat="server" Height="16px" Width="181px" 
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 186px;"><asp:TextBox ID="txtRadd1" runat="server" Height="16px" Width="181px" 
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 186px;"><asp:TextBox ID="txtRcont1" runat="server" Height="16px" Width="181px" 
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td><asp:TextBox ID="txtRoccup1" runat="server" Height="16px" Width="181px" 
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td></tr><tr><td style="width: 186px;"><asp:TextBox ID="txtRname2" runat="server" Height="16px" Width="181px" 
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 186px;"><asp:TextBox ID="txtRadd2" runat="server" Height="16px" Width="181px" 
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 186px;"><asp:TextBox ID="txtRcont2" runat="server" Height="16px" Width="181px" 
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td><asp:TextBox ID="txtRoccup2" runat="server" Height="16px" Width="181px" 
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td></tr><tr><td style="width: 186px;"><asp:TextBox ID="txtRname3" runat="server" Height="16px" Width="181px" 
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 186px;"><asp:TextBox ID="txtRadd3" runat="server" Height="16px" Width="181px" 
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td style="width: 186px;"><asp:TextBox ID="txtRcont" runat="server" Height="16px" Width="181px" 
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td><td><asp:TextBox ID="txtRoccup3" runat="server" Height="16px" Width="181px" 
                                    Font-Names="Arial" ReadOnly="True"></asp:TextBox></td></tr></table><br /><asp:Label ID="Label153" runat="server" Font-Bold="True" Font-Size="12px" ForeColor="#3333FF"
                        Text="In the space given, write something about yourself, your idea, goals in life, plans for the future, strong and weak points. Explain why you should be considered for employment"
                        Font-Names="Arial"></asp:Label><br /><asp:TextBox ID="txtexplain" runat="server" Height="110px" TextMode="MultiLine" Width="751px"
                        Font-Names="Arial" ReadOnly="True"></asp:TextBox><br /><br />
                </ContentTemplate>
            </asp:TabPanel>
            <asp:TabPanel ID="TabPanel7" runat="server" HeaderText="Notification">
                <HeaderTemplate>
                Notification</HeaderTemplate>
                <ContentTemplate><asp:Label ID="Label168" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="12px"
                        ForeColor="#3333FF" Text="Please Notify incase of Emergency"></asp:Label><br /><br /><table style="width: 100%;"><tr><td style="width: 28px">&#160;&#160; </td><td style="width: 59px"><asp:Label ID="Label169" runat="server" Font-Names="Arial" Font-Size="12px" Text="Name"></asp:Label></td><td style="width: 267px"><asp:TextBox ID="textbox70" runat="server" Font-Names="Arial" Height="16px" 
                                    Width="247px" ReadOnly="True"></asp:TextBox></td><td style="width: 88px"><asp:Label ID="Label171" runat="server" Font-Names="Arial" Font-Size="12px" Text="Relationship"></asp:Label></td><td><asp:TextBox ID="textbox72" runat="server" Font-Names="Arial" Height="16px"
                                    Width="247px" ReadOnly="True"></asp:TextBox></td></tr><tr><td style="width: 28px">&#160;&#160; </td><td style="width: 59px"><asp:Label ID="Label170" runat="server" Font-Names="Arial" Font-Size="12px" Text="Address"></asp:Label></td><td style="width: 267px"><asp:TextBox ID="textbox71" runat="server" Font-Names="Arial" Height="16px" 
                                    Width="247px" ReadOnly="True"></asp:TextBox></td><td style="width: 88px"><asp:Label ID="Label172" runat="server" Font-Names="Arial" Font-Size="12px" Text="Contact No."></asp:Label></td><td><asp:TextBox ID="textbox73" runat="server" Font-Names="Arial" Height="16px"
                                    Width="247px" ReadOnly="True"></asp:TextBox></td></tr></table>
                </ContentTemplate>
            </asp:TabPanel>
        </asp:TabContainer>
        <br />
        <br />
        <br />
        <br />
    </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="contentlabel">
    <table style="width: 100%; height: 1px">
        <tr>
            <td style="width: 15px">
                &nbsp;
            </td>
            <td style="width: 581px">
                <asp:Label ID="lblheader" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="DodgerBlue" Text="Manager &gt; Records &gt; Profile &gt; Employee Data ">
                </asp:Label>
                <asp:Label ID="lblheader2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Black" Text="&gt; Personal Information" Font-Underline="True">
                </asp:Label>
            </td>
            <td style="text-align: right">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Gray" Text="Read Only Access"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
