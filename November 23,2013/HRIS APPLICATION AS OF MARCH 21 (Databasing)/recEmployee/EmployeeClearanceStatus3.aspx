<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/EmployeeMasterPage.master"
    AutoEventWireup="false" CodeFile="EmployeeClearanceStatus3.aspx.vb" Inherits="recEmployee_EmployeeClearanceStatus"
    Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="width: 195px; height: 195px;">
        <ul style="list-style: none;">
            <li class="label"><a class="name">Employee Clearance</a></li></ul>
        <br />
        <ul style="list-style: none;">
            <li class="effects2"><a style="color: Red;">
                <asp:Label ID="Label1" Font-Size="Small" runat="server" Text="> Clearance Status"
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
        <table style="width: 99%;" cellspacing="4.5">

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
                    &nbsp;
                </td>
                <td style="width: 206px">
                    &nbsp;
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
                    <asp:Label ID="Label10" runat="server" Font-Size="Small" Text="13."></asp:Label>
                </td>
                <td style="width: 206px">
                    <asp:Label ID="Label11" runat="server" Text="ML FUND" Font-Size="Small"></asp:Label>
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
                    <asp:Label ID="Label34" runat="server" Font-Size="Small" Text="14."></asp:Label>
                </td>
                <td style="width: 206px">
                    <asp:Label ID="Label16" runat="server" Text="SAKO" Font-Size="Small"></asp:Label>
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
        </table>
        <table style="width: 99%;">
            <tr>
                <td align="right">
                    <asp:Image runat="server" Width="749px" Height="16px" ImageUrl="~/images/clearancedivider.jpg" />
                </td>
            </tr>
        </table>
        <br />
        <table style="width: 99%;">
            <tr>
                <td style="width: 20px">
                </td>
                <td style="width: 145px">
                    <asp:Label ID="Label35" runat="server" Font-Size="Small" Text="GROSS AMOUNT"></asp:Label>
                </td>
                <td style="width: 13px">
                    <asp:Label ID="Label38" runat="server" Font-Size="Small" Text=":"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox53" runat="server" Width="118px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 20px">
                </td>
                <td style="width: 145px">
                    <asp:Label ID="Label36" runat="server" Font-Size="Small" Text="Less: Accountabilities"></asp:Label>
                </td>
                <td style="width: 13px">
                    <asp:Label ID="Label39" runat="server" Font-Size="Small" Text=":"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox54" runat="server" Width="118px" BackColor="White" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 20px">
                </td>
                <td style="width: 145px">
                    <asp:Label ID="Label37" runat="server" Font-Size="Small" Text="NET PAY"></asp:Label>
                </td>
                <td style="width: 13px">
                    <asp:Label ID="Label40" runat="server" Font-Size="Small" Text=":"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox55" runat="server" Width="118px" BackColor="White" Enabled="False"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table style="width: 100%;">
            <tr>
                <td align="right">
                    <asp:Image runat="server" Width="754px" Height="16px" ImageUrl="~/images/clearancedivider.jpg"
                        ID="Image16" />
                </td>
            </tr>
        </table>
        <table style="width: 99%;" align="left">
            <tr>
                <td style="width: 19px">
                </td>
                <td align="left">
                    <asp:Label ID="Label41" runat="server" Text="Approved by:" Font-Size="Small"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <table style="width: 99%;">
            <tr>
                <td align="center" style="width: 249px">
                    <asp:Label ID="Label42" runat="server" Font-Bold="True" Font-Size="Small" Text="MYRNA JIMENEZ"></asp:Label>
                </td>
                <td align="center" style="width: 281px">
                    <asp:Label ID="Label43" runat="server" Font-Bold="True" Font-Size="Small" Text="LORENZO ESCAÑO"></asp:Label>
                </td>
                <td align="center">
                    <asp:Label ID="Label44" runat="server" Font-Bold="True" Font-Size="Small" Text="MICHAEL L. LHUILLIER"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" style="width: 249px">
                    <asp:Label ID="Label45" runat="server" Font-Size="Small" Text="HRMD Manager"></asp:Label>
                </td>
                <td align="center" style="width: 281px">
                    <asp:Label ID="Label46" runat="server" Font-Size="Small" Text="General Manager"></asp:Label>
                </td>
                <td align="center">
                    <asp:Label ID="Label47" runat="server" Font-Size="Small" Text="Vice President"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 249px">
                    &nbsp;
                </td>
                <td style="width: 281px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 249px" align="center">
                                        ________________________
                </td>
                <td style="width: 281px" align="center">
                    ____________________________
                </td>
                <td align="center">
                    ________________________
                </td>
            </tr>
        </table>
        <br />
        <table style="width: 99%; height: 117px;">
            <tr>
                <td align="right" valign="bottom">
                    <asp:ImageButton runat="server" Width="75px" Height="25px" ImageUrl="~/images/Buttons/prevArrow.gif"
                        PostBackUrl="~/recEmployee/EmployeeClearanceStatus2.aspx" 
                        ID="cmdprevious" />
                </td>
            </tr>
        </table>
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
