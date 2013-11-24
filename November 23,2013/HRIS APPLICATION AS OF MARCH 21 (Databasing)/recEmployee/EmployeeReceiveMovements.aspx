<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/EmployeeMasterPage.master"
    AutoEventWireup="false" CodeFile="EmployeeReceiveMovements.aspx.vb" Inherits="recEmployee_EmployeeReceiveMovements"
    Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="width: 195px;">
        <ul style="list-style: none;">
            <li class="label"><a class="name">Movements</a></li></ul>
        <br />
        <ul style="list-style: none;">
            <li class="effects2"><a href="EmployeeProfileInformation.aspx">
                <asp:Label ID="Label1" runat="server" Text="> Personal Information" Height="16px"
                    Width="182px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="Image15" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" /><br />
                <a style="color: red; font-size: small;">
                    <asp:Label ID="Label5" runat="server" Text="> Movements" Height="16px" Width="174px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="Image1" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" />
            </li>
        </ul>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="161px" BackColor="#F1EFEF">
        <asp:GridView ID="dgmovement" runat="server" AutoGenerateColumns="False" BackColor="White"
            BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal"
            Height="16px" Width="771px" OnRowCommand="dgmovement_RowCommand" 
            DataKeyNames = "EmployeeID,DateRequested">
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" Height="20px" Width="60px" />
            <Columns>
                <asp:BoundField HeaderText="Resource ID" HeaderStyle-Height="20px" 
                    DataField="EmployeeID">
                    <HeaderStyle BackColor="Gray" BorderColor="Black" BorderStyle="Solid" 
                        BorderWidth="1px" />
                    <ItemStyle BorderColor="Black" Width="60px" HorizontalAlign="Center" 
                        VerticalAlign="Middle" BorderStyle="Solid" BorderWidth="1px" />
                </asp:BoundField>
                <asp:BoundField HeaderText="Name" DataField="Fullname">
                    <HeaderStyle BackColor="Gray" BorderColor="Black" BorderStyle="Solid" 
                        BorderWidth="1px" />
                    <ItemStyle BorderColor="Black" Width="80px" HorizontalAlign="Center" 
                        VerticalAlign="Middle" BorderWidth="1px" />
                </asp:BoundField>
                <asp:BoundField HeaderText="Area" DataField="DivFrom">
                    <HeaderStyle BackColor="Gray" BorderColor="Black" BorderWidth="1px" />
                    <ItemStyle BorderColor="Black" Width="80px" HorizontalAlign="Center" 
                        VerticalAlign="Middle" BorderWidth="1px" />
                </asp:BoundField>
                <asp:BoundField HeaderText="Reason of Movement" DataField="Reason">
                    <HeaderStyle BackColor="Gray" BorderColor="Black" BorderWidth="1px" />
                    <ItemStyle BorderColor="Black" Width="100px" HorizontalAlign="Center" 
                        VerticalAlign="Middle" BorderWidth="1px" />
                </asp:BoundField>
                <asp:BoundField HeaderText="Date Requested" DataField="DateRequested" 
                    DataFormatString="{0:d}">
                    <HeaderStyle BackColor="Gray" BorderColor="Black" BorderWidth="1px" />
                    <ItemStyle BorderColor="Black" Width="40px" HorizontalAlign="Center" 
                        VerticalAlign="Middle" BorderWidth="1px" />
                </asp:BoundField>
                <asp:BoundField HeaderText="Effective Date" DataField="EffectiveDate" 
                    DataFormatString="{0:d}">
                    <HeaderStyle BackColor="Gray" BorderColor="Black" BorderWidth="1px" />
                    <ItemStyle BorderColor="Black" Width="40px" HorizontalAlign="Center" 
                        VerticalAlign="Middle" BorderWidth="1px" />
                </asp:BoundField>
                <asp:BoundField HeaderText="Status" DataField="Status">
                    <HeaderStyle BackColor="Gray" BorderColor="Black" BorderWidth="1px" />
                    <ItemStyle BorderColor="Black" Width="50px" HorizontalAlign="Center" 
                        VerticalAlign="Middle" BorderWidth="1px" />
                </asp:BoundField>
                <asp:ButtonField HeaderText="See Details" ShowHeader="True" Text="See Details">
                    <HeaderStyle Width="25px" BackColor="Gray" BorderColor="Black" 
                        BorderWidth="1px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="25px" 
                        BorderWidth="1px" />
                </asp:ButtonField>
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <AlternatingRowStyle BackColor="#F7F7F7" />
        </asp:GridView>
    </asp:Panel>
    <asp:Label ID="lblmoveinfo" runat="server" Font-Bold="True" Font-Size="11px" 
        ForeColor="Red" Text="* No Movement received" Visible="False"></asp:Label>
    <br />
    <asp:Panel runat="server" Width="100%" BackColor="#F1EFEF" 
        ID="movementdetails" Visible="False" Height="228px">
        <table width="100%" runat="server" cellspacing="5">
            <tr>
                <td style="width: 20px">
                </td>
                <td style="width: 129px">
                    <asp:Label ID="Label4" runat="server" Text="Resource ID" Font-Size="Small"></asp:Label>
                </td>
                <td style="width: 120px">
                    <asp:TextBox ID="txtresource" runat="server" Width="139px" Height="20px" BackColor="#D6D4D3"
                        BorderColor="Black" BorderWidth="1px"></asp:TextBox>
                </td>
                <td style="width: 27px">
                    &nbsp;
                </td>
                <td style="width: 106px">
                </td>
                <td style="width: 146px">
                    <asp:Label ID="Label14" runat="server" Font-Size="Small" Text="Date Hired"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtdatehired" runat="server" Height="20px" BackColor="#D6D4D3" BorderColor="Black"
                        BorderWidth="1px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 20px">
                </td>
                <td style="width: 129px">
                    <asp:Label ID="Label15" runat="server" Text="Name" Font-Size="Small"></asp:Label>
                </td>
                <td style="width: 120px">
                    <asp:TextBox ID="txtname" runat="server" Width="138px" Height="20px" BackColor="#D6D4D3"
                        BorderColor="Black" BorderWidth="1px"></asp:TextBox>
                </td>
                <td style="width: 27px">
                </td>
                <td style="width: 106px">
                </td>
                <td style="width: 146px">
                    <asp:Label ID="Label45" runat="server" Font-Size="Small" Text="Date Requested"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtdaterequested" runat="server" Height="20px" BackColor="#D6D4D3"
                        BorderColor="Black" BorderWidth="1px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 20px">
                </td>
                <td style="width: 129px">
                    <asp:Label ID="Label6" runat="server" Text="Division/Region" Font-Size="Small"></asp:Label>
                </td>
                <td style="width: 120px">
                    <asp:TextBox ID="txtdivision" runat="server" Width="139px" Height="20px" BackColor="#D6D4D3"
                        BorderColor="Black" BorderWidth="1px"></asp:TextBox>
                </td>
                <td style="width: 27px" align="center">
                    <asp:Label ID="Label11" runat="server" Text="to" Font-Size="Small"></asp:Label>
                </td>
                <td style="width: 106px">
                    <asp:TextBox ID="txtdivto" runat="server" Width="141px" Height="20px" BackColor="#D6D4D3"
                        BorderColor="Black" BorderWidth="1px"></asp:TextBox>
                </td>
                <td style="width: 146px">
                    <asp:Label ID="Label16" runat="server" Font-Size="Small" Text="Effectivity Date"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txteffectivedate" runat="server" Height="20px" BackColor="#D6D4D3"
                        BorderColor="Black" BorderWidth="1px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 20px">
                </td>
                <td style="width: 129px">
                    <asp:Label ID="Label7" runat="server" Text="Department/Branch" Font-Size="Small"></asp:Label>
                </td>
                <td style="width: 120px">
                    <asp:TextBox ID="txtdepartment" runat="server" Width="138px" Height="20px" BackColor="#D6D4D3"
                        BorderColor="Black" BorderWidth="1px"></asp:TextBox>
                </td>
                <td style="width: 27px" align="center">
                    <asp:Label ID="Label12" runat="server" Text="to" Font-Size="Small"></asp:Label>
                </td>
                <td style="width: 106px">
                    <asp:TextBox ID="txtdeptto" runat="server" Width="140px" Height="20px" BackColor="#D6D4D3"
                        BorderColor="Black" BorderWidth="1px"></asp:TextBox>
                </td>
                <td style="width: 146px">
                    <asp:Label ID="Label17" runat="server" Font-Size="Small" Text="Reason of Movement"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtreasons" runat="server" Height="20px" BackColor="#D6D4D3" BorderColor="Black"
                        BorderWidth="1px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 20px">
                </td>
                <td style="width: 129px">
                    <asp:Label ID="Label8" runat="server" Text="Designation" Font-Size="Small"></asp:Label>
                </td>
                <td style="width: 120px">
                    <asp:TextBox ID="txtdesignation" runat="server" Width="138px" Height="20px" BackColor="#D6D4D3"
                        BorderColor="Black" BorderWidth="1px"></asp:TextBox>
                </td>
                <td style="width: 27px" align="center">
                    <asp:Label ID="Label13" runat="server" Text="to" Font-Size="Small"></asp:Label>
                </td>
                <td style="width: 106px">
                    <asp:TextBox ID="txtdesigto" runat="server" Width="140px" Height="20px" BackColor="#D6D4D3"
                        BorderColor="Black" BorderWidth="1px"></asp:TextBox>
                </td>
                <td style="width: 146px">
                    <asp:Label ID="Label18" runat="server" Font-Size="Small" Text="If Others Pls. Specify"></asp:Label>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 20px">
                </td>
                <td style="width: 129px">
                    <asp:Label ID="Label9" runat="server" Text="Allowances" Font-Size="Small"></asp:Label>
                </td>
                <td colspan="3" rowspan="3">
                    <asp:TextBox ID="TextBox15" runat="server" Height="69px" Width="321px" BackColor="#D6D4D3"
                        BorderColor="Black" BorderWidth="1px" Font-Names="Arial" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td colspan="2" align="right">
                    <asp:TextBox ID="txtothers" runat="server" Width="245px" Height="22px" BackColor="#D6D4D3"
                        BorderColor="Black" BorderWidth="1px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 20px">
                </td>
                <td style="width: 129px">
                </td>
                <td style="width: 146px">
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td style="width: 20px">
                </td>
                <td style="width: 129px">
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
        </table>
        <table width="100%" runat="server">
            <tr>
                <td style="width: 681px" align="right">
                    <asp:ImageButton ID="cmdapprove" BorderColor="Black" runat="server" Width="93px"
                        Height="25px" ImageUrl="~/images/Buttons/approve.gif" />
                </td>
                <td align="right">
                    <asp:ImageButton ID="cmdbutton" runat="server" Width="93px" Height="25px" 
                        ImageUrl="~/images/Buttons/disapprove.gif" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="contentlabel">
    <table style="width: 100%;">
        <tr>
            <td style="width: 553px">
                <ul>
                    <li class="labeltopformflow">
                        <asp:Label ID="employeemovements" runat="server" Text="Employee > Records > Movements "></asp:Label>
                        <asp:Label ID="labelposition" Font-Underline="true" ForeColor="Black" runat="server"
                            Text="> Employee Movements"></asp:Label>
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
