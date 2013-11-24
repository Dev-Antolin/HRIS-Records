<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/EmployeeMasterPage.master"
    AutoEventWireup="false" CodeFile="EmployeeClearanceStatus1.aspx.vb" Inherits="recEmployee_EmployeeClearanceStatus"
    Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="width: 195px; height: 195px;">
        <ul style="list-style: none;">
            <li class="label"><a class="name">Employee Clearance</a></li></ul>
        <br />
        <ul style="list-style: none">
            <li class="effects2"><a style="color: Red;">
                <asp:Label runat="server" Text="> Clearance Status" Font-Size="Small"></asp:Label></a>
                <asp:Image ImageAlign="Right" ID="Image15" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" /></li></ul>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="width: 100%; height: 475px;">
        <table style="width: 100%;">
            <tr>
                <td style="width: 21px">
                </td>
                <td style="width: 91px">
                    <asp:Label ID="Label4" runat="server" Text="Resource ID" Font-Size="Small"></asp:Label>
                </td>
                <td style="width: 88px">
                    <asp:TextBox ID="TextBox1" runat="server" Width="235px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
                <td style="width: 73px">
                    <asp:Label ID="Label5" runat="server" Width="95px" Text="Clearance No" Font-Size="Small"></asp:Label>
                </td>
                <td style="width: 254px">
                    <asp:TextBox ID="TextBox3" runat="server" Width="235px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 21px">
                </td>
                <td style="width: 91px">
                    <asp:Label ID="Label6" runat="server" Text="Name" Font-Size="Small"></asp:Label>
                </td>
                <td style="width: 88px">
                    <asp:TextBox ID="TextBox2" runat="server" Width="235px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
                <td style="width: 73px">
                    <asp:Label ID="Label7" runat="server" Font-Size="Small" Text="Designation"></asp:Label>
                </td>
                <td style="width: 254px">
                    <asp:TextBox ID="TextBox4" runat="server" Width="235px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 21px">
                </td>
                <td style="width: 91px">
                    <asp:Label ID="Label8" runat="server" Font-Size="Small" Text="Department/Branch"></asp:Label>
                </td>
                <td style="width: 88px">
                    <asp:TextBox ID="TextBox5" runat="server" Width="235px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
                <td style="width: 73px">
                    <asp:Label ID="Label9" runat="server" Font-Size="Small" Text="Division/Region"></asp:Label>
                </td>
                <td style="width: 254px">
                    <asp:TextBox ID="TextBox6" runat="server" Width="235px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table style="width: 100%;">
            <tr>
                <td align="right" style="height: 15px;">
                    <asp:Image runat="server" ImageUrl="~/images/clearancedivider.jpg" Width="755px"
                        Height="14px" />
                </td>
            </tr>
        </table>
        <table style="width: 100%; margin-bottom: 0px;" cellspacing="4.5">
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
                    <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Small" Text="Cleared by:"></asp:Label>
                </td>
                <td align="center" style="width: 91px">
                    <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="Small" Text="Date:"></asp:Label>
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
                    <asp:Label ID="Label11" runat="server" Text="Employees Division/Region" Font-Size="Small"></asp:Label>
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
                    <asp:Label ID="Label16" runat="server" Text="a.  Immediate Superior" Font-Size="Small"></asp:Label>
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
                    <asp:Label ID="Label17" runat="server" Font-Size="Small" Text="a.  Division/Regional Manager"></asp:Label>
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
                    <asp:Label ID="Label18" runat="server" Font-Size="Small" Text="2."></asp:Label>
                </td>
                <td style="width: 206px">
                    <asp:Label ID="Label19" runat="server" Font-Size="Small" Text="Accounting Division (Colon)"></asp:Label>
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
                    <asp:Label ID="Label20" runat="server" Font-Size="Small" Text="3."></asp:Label>
                </td>
                <td style="width: 206px">
                    <asp:Label ID="Label21" runat="server" Font-Size="Small" Text="ALL"></asp:Label>
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
                    <asp:Label ID="Label22" runat="server" Font-Size="Small" Text="4."></asp:Label>
                </td>
                <td style="width: 206px">
                    <asp:Label ID="Label23" runat="server" Font-Size="Small" Text="CAD"></asp:Label>
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
                    <asp:Label ID="Label24" runat="server" Font-Size="Small" Text="5."></asp:Label>
                </td>
                <td style="width: 206px">
                    <asp:Label ID="Label26" runat="server" Font-Size="Small" Text="FD"></asp:Label>
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
                    <asp:Label ID="Label27" runat="server" Font-Size="Small" Text="6."></asp:Label>
                </td>
                <td style="width: 206px">
                    <asp:Label ID="Label25" runat="server" Font-Size="Small" Text="FSD"></asp:Label>
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
                    <asp:Label ID="Label28" runat="server" Font-Size="Small" Text="7."></asp:Label>
                </td>
                <td style="width: 206px">
                    <asp:Label ID="Label29" runat="server" Font-Size="Small" Text="IAD"></asp:Label>
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
                    <asp:Label ID="Label30" runat="server" Font-Size="Small" Text="8."></asp:Label>
                </td>
                <td style="width: 206px">
                    <asp:Label ID="Label31" runat="server" Font-Size="Small" Text="MIS"></asp:Label>
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
                    <asp:Label ID="Label32" runat="server" Font-Size="Small" Text="9."></asp:Label>
                </td>
                <td style="width: 206px">
                    <asp:Label ID="Label33" runat="server" Font-Size="Small" Text="MMD"></asp:Label>
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
                <td style="width: 21px">
                    &nbsp;
                </td>
                <td style="width: 29px">
                    <asp:Label ID="Label34" runat="server" Font-Size="Small" Text="10."></asp:Label>
                </td>
                <td style="width: 206px">
                    <asp:Label ID="Label35" runat="server" Font-Size="Small" Text="SPD"></asp:Label>
                </td>
                <td style="width: 91px">
                    <asp:TextBox ID="TextBox61" runat="server" Width="100px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
                <td style="width: 208px">
                    <asp:TextBox ID="TextBox33" runat="server" Width="213px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
                <td style="width: 91px">
                    <asp:TextBox ID="TextBox42" runat="server" Width="102px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
                <td style="width: 95px">
                    <asp:TextBox ID="TextBox51" runat="server" Width="100px" BackColor="#EBEBEB" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 21px; height: 61px;">
                </td>
                <td style="width: 29px; height: 61px;">
                </td>
                <td style="width: 206px; height: 61px;">
                </td>
                <td style="width: 91px; height: 61px;">
                </td>
                <td style="width: 208px; height: 61px;">
                </td>
                <td style="width: 91px; height: 61px;">
                </td>
                <td style="width: 95px; height: 61px;" align="right">
                    <asp:ImageButton runat="server" Width="75px" Height="25px" ImageUrl="~/images/Buttons/Next.gif"
                        PostBackUrl="~/recEmployee/EmployeeClearanceStatus2.aspx" ID="cmdNext" />
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
