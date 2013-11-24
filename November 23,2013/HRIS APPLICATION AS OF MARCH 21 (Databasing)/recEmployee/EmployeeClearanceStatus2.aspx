<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/EmployeeMasterPage.master"
    AutoEventWireup="false" CodeFile="EmployeeClearanceStatus2.aspx.vb" Inherits="recEmployee_EmployeeClearanceStatus"
    Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="width: 195px; height: 195px;">
        <ul style="list-style: none;">
            <li class="label"><a class="name">Employee Clearance</a></li></ul>
        <br />
        <ul style="list-style: none;">
            <li class="effects2"><a style="color: Red;">
                <asp:Label ID="Label1" runat="server" Font-Size="Small" Text="> Clearance Status"
                    Height="16px" Width="180px"></asp:Label>
            </a></li>
        </ul>
        <br />
        <asp:Image ImageAlign="Right" ID="Image15" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
            Width="170px" />
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="width: 100%; height: 475px;">
        <br />
        <br />
        <br />
        <table style="width: 100%; height: 373px;" cellspacing="4.5">
            <tr>
                <td style="width: 21px">
                    &nbsp;
                </td>
                <td style="width: 29px">
                    &nbsp;
                </td>
                <td style="width: 206px">
                    &nbsp;
                </td>
                <td align="center" style="width: 91px">
                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="Small" Text="Accountability"></asp:Label>
                </td>
                <td align="center" style="width: 208px">
                    <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Small" Text="Cleared by"></asp:Label>
                </td>
                <td align="center" style="width: 91px">
                    <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="Small" Text="Date"></asp:Label>
                </td>
                <td align="center" style="width: 95px">
                    <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="Small" Text="Status"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 21px">
                    &nbsp;
                </td>
                <td style="width: 29px">
                    <asp:Label ID="Label10" runat="server" Font-Size="Small" Text="1."></asp:Label>
                </td>
                <td style="width: 206px">
                    <asp:Label ID="Label11" runat="server" Text="HRMD" Font-Size="Small"></asp:Label>
                </td>
                <td style="width: 91px">
                    &nbsp;
                </td>
                <td style="width: 208px">
                    &nbsp;
                </td>
                <td style="width: 91px">
                    &nbsp;
                </td>
                <td style="width: 95px">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 21px">
                    &nbsp;
                </td>
                <td style="width: 29px">
                    &nbsp;
                </td>
                <td style="width: 206px">
                    <asp:Label ID="Label16" runat="server" Text="a.  Retirement Pay" Font-Size="Small"></asp:Label>
                </td>
                <td style="width: 91px">
                    <asp:TextBox ID="TextBox52" runat="server" Width="100px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
                <td style="width: 208px">
                    <asp:TextBox ID="TextBox8" runat="server" Width="214px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
                <td style="width: 91px">
                    <asp:TextBox ID="TextBox9" runat="server" Width="102px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
                <td style="width: 95px">
                    <asp:TextBox ID="TextBox14" runat="server" Width="100px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 21px">
                    &nbsp;
                </td>
                <td style="width: 29px">
                    &nbsp;
                </td>
                <td style="width: 206px">
                    <asp:Label ID="Label17" runat="server" Font-Size="Small" Text="b.  13th Month Pay"></asp:Label>
                </td>
                <td style="width: 91px">
                    <asp:TextBox ID="TextBox11" runat="server" Width="100px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
                <td style="width: 208px">
                    <asp:TextBox ID="TextBox12" runat="server" Width="213px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
                <td style="width: 91px">
                    <asp:TextBox ID="TextBox13" runat="server" Width="102px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
                <td style="width: 95px">
                    <asp:TextBox ID="TextBox15" runat="server" Width="100px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 21px">
                    &nbsp;
                </td>
                <td style="width: 29px">
                    &nbsp;
                </td>
                <td style="width: 206px">
                    <asp:Label ID="Label19" runat="server" Font-Size="Small" Text="c.  Company Uniform"></asp:Label>
                </td>
                <td style="width: 91px">
                    <asp:TextBox ID="TextBox53" runat="server" Width="100px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
                <td style="width: 208px">
                    <asp:TextBox ID="TextBox25" runat="server" Width="213px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
                <td style="width: 91px">
                    <asp:TextBox ID="TextBox34" runat="server" Width="102px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
                <td style="width: 95px">
                    <asp:TextBox ID="TextBox43" runat="server" Width="100px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 21px">
                    &nbsp;
                </td>
                <td style="width: 29px">
                    &nbsp;
                </td>
                <td style="width: 206px">
                    <asp:Label ID="Label21" runat="server" Font-Size="Small" Text="d.  Company ID/Sling"></asp:Label>
                </td>
                <td style="width: 91px">
                    <asp:TextBox ID="TextBox54" runat="server" Width="100px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
                <td style="width: 208px">
                    <asp:TextBox ID="TextBox26" runat="server" Width="213px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
                <td style="width: 91px">
                    <asp:TextBox ID="TextBox35" runat="server" Width="102px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
                <td style="width: 95px">
                    <asp:TextBox ID="TextBox44" runat="server" Width="100px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 21px">
                    &nbsp;
                </td>
                <td style="width: 29px">
                    &nbsp;
                </td>
                <td style="width: 206px">
                    <asp:Label ID="Label23" runat="server" Font-Size="Small" Text="e.  HMO/ATM Card"></asp:Label>
                </td>
                <td style="width: 91px">
                    <asp:TextBox ID="TextBox55" runat="server" Width="100px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
                <td style="width: 208px">
                    <asp:TextBox ID="TextBox27" runat="server" Width="213px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
                <td style="width: 91px">
                    <asp:TextBox ID="TextBox36" runat="server" Width="102px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
                <td style="width: 95px">
                    <asp:TextBox ID="TextBox45" runat="server" Width="100px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 21px">
                    &nbsp;
                </td>
                <td style="width: 29px">
                    &nbsp;
                </td>
                <td style="width: 206px">
                    <asp:Label ID="Label26" runat="server" Font-Size="Small" Text="f.   OPEC"></asp:Label>
                </td>
                <td style="width: 91px">
                    <asp:TextBox ID="TextBox56" runat="server" Width="100px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
                <td style="width: 208px">
                    <asp:TextBox ID="TextBox28" runat="server" Width="213px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
                <td style="width: 91px">
                    <asp:TextBox ID="TextBox37" runat="server" Width="102px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
                <td style="width: 95px">
                    <asp:TextBox ID="TextBox46" runat="server" Width="100px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 21px">
                    &nbsp;
                </td>
                <td style="width: 29px">
                    &nbsp;
                </td>
                <td style="width: 206px">
                    <asp:Label ID="Label25" runat="server" Font-Size="Small" Text="g.  Training Fee"></asp:Label>
                </td>
                <td style="width: 91px">
                    <asp:TextBox ID="TextBox57" runat="server" Width="100px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
                <td style="width: 208px">
                    <asp:TextBox ID="TextBox29" runat="server" Width="213px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
                <td style="width: 91px">
                    <asp:TextBox ID="TextBox38" runat="server" Width="102px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
                <td style="width: 95px">
                    <asp:TextBox ID="TextBox47" runat="server" Width="100px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 21px">
                    &nbsp;
                </td>
                <td style="width: 29px">
                    &nbsp;
                </td>
                <td style="width: 206px">
                    <asp:Label ID="Label29" runat="server" Font-Size="Small" Text="h. Charged Accounts"></asp:Label>
                </td>
                <td style="width: 91px">
                    <asp:TextBox ID="TextBox58" runat="server" Width="100px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
                <td style="width: 208px">
                    <asp:TextBox ID="TextBox30" runat="server" Width="213px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
                <td style="width: 91px">
                    <asp:TextBox ID="TextBox39" runat="server" Width="102px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
                <td style="width: 95px">
                    <asp:TextBox ID="TextBox48" runat="server" Width="100px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 21px">
                    &nbsp;
                </td>
                <td style="width: 29px">
                    &nbsp;
                </td>
                <td style="width: 206px">
                    <asp:Label ID="Label31" runat="server" Font-Size="Small" Text="i.  OTHERS"></asp:Label>
                </td>
                <td style="width: 91px">
                    <asp:TextBox ID="TextBox59" runat="server" Width="100px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
                <td style="width: 208px">
                    <asp:TextBox ID="TextBox31" runat="server" Width="213px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
                <td style="width: 91px">
                    <asp:TextBox ID="TextBox40" runat="server" Width="102px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
                <td style="width: 95px">
                    <asp:TextBox ID="TextBox49" runat="server" Width="100px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 21px">
                    &nbsp;
                </td>
                <td style="width: 29px">
                    <asp:Label ID="Label32" runat="server" Font-Size="Small" Text="12."></asp:Label>
                </td>
                <td style="width: 206px">
                    <asp:Label ID="Label33" runat="server" Font-Size="Small" Text="FILMA LENDING"></asp:Label>
                </td>
                <td style="width: 91px">
                    <asp:TextBox ID="TextBox60" runat="server" Width="100px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
                <td style="width: 208px">
                    <asp:TextBox ID="TextBox32" runat="server" Width="213px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
                <td style="width: 91px">
                    <asp:TextBox ID="TextBox41" runat="server" Width="102px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
                <td style="width: 95px">
                    <asp:TextBox ID="TextBox50" runat="server" Width="100px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 21px; height: 51px;">
                </td>
                <td style="width: 29px; height: 51px;">
                </td>
                <td style="width: 206px; height: 51px;">
                </td>
                <td style="width: 91px; height: 51px;">
                </td>
                <td style="width: 208px; height: 51px;">
                </td>
                <td style="width: 91px; height: 51px;">
                    &nbsp;
                </td>
                <td style="width: 95px; height: 51px;">
                    &nbsp;
                </td>
            </tr>
        </table>
        <table style="width: 100%;">
            <tr>
                <td style="width: 581px">
                    &nbsp;
                </td>
                <td align="center" style="width: 94px">
                    &nbsp;
                    <asp:ImageButton runat="server" ImageUrl="~/images/Buttons/prevArrow.gif" Width="75px"
                        Height="25px" PostBackUrl="~/recEmployee/EmployeeClearanceStatus1.aspx" 
                        ID="cmdPrevious" />
                </td>
                <td align="center">
                    &nbsp;<asp:ImageButton runat="server" Width="75px" Height="25px" ImageUrl="~/images/Buttons/nextArrow.gif"
                        PostBackUrl="~/recEmployee/EmployeeClearanceStatus3.aspx" ID="cmdNext" />
                </td>
            </tr>
        </table>
        <br />
    </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="contentlabel">
    <table style="width: 100%;">
        <tr>
            <td style="width: 553px">
                <ul>
                    <li class="labeltopformflow">
                        <asp:Label ID="employeeclearance" runat="server" Text="Employee > Records > Clearance > Employee Clearance "></asp:Label>
                        <asp:Label ID="labelposition" Font-Underline="true" ForeColor="Black" runat="server"
                            Text="> Clearance Status"></asp:Label>
                    </li>
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
