<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/EmployeeMasterPage.master" AutoEventWireup="false" CodeFile="EmployeeTrainingModules.aspx.vb" Inherits="recEmployee_EmployeeTrainingModules" title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="width:195px; height:195px;">
<ul style="list-style:none;"><li class="label"><a class="name">Employee Training</a></li></ul><br />
<ul style="list-style:none;">
<li class="effects2">
<a href="EmployeeTrainings.aspx">
<asp:Label ID="Label1" runat="server" Text="> Trainings" Height="16px" Width="180px"></asp:Label></a><br />
<asp:Image ImageAlign="Right" ID="Image15" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg" Width="170px" /><br />
<a style="color:red; font-size:small;">
<asp:Label ID="Label5" runat="server" Text="> Training Modules" Height="16px" Width="135px"></asp:Label></a><br />
<asp:Image ImageAlign="Right" ID="Image1" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg" Width="170px" />
</li>
</ul>
</div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="width:100%; height:481px;">
        <table style="width:97%;">
            <tr> 
                <td style="width: 40px"></td>
                <td style="width: 42px">
                    <asp:Label ID="Label6" Font-Size="Small" runat="server" Text="Year"></asp:Label>
                </td>
                <td style="width: 120px;">
                    <asp:DropDownList ID="dropyear" runat="server" Width="116px">
                        <asp:ListItem>2000</asp:ListItem>
                        <asp:ListItem>2001</asp:ListItem>
                        <asp:ListItem>2002</asp:ListItem>
                        <asp:ListItem>2003</asp:ListItem>
                        <asp:ListItem>2004</asp:ListItem>
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
                <td style="width: 39px">
                   
                   <asp:ImageButton Width="23px" Height="23px" ImageUrl="~/images/t.png" runat="server"/></td>
                    <td><asp:ImageButton ID="cmdsearch" runat="server" Width="75px" Height="25px" 
                            ImageUrl="~/images/Buttons/search.gif" />

                   </td>
            </tr>
        </table>
        <br />
        <table style="width:100%;">
            <tr>
                <td style="width: 40px">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label7" runat="server" Font-Size="Small" Text="List of Courses"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <table style="width:100%; height: 153px;">
            <tr>
                <td style="width: 40px; height: 179px;">
                    </td>
                    <td style="height: 179px">
                        <asp:Panel ID="pnltrainingmodules" runat="server" BackColor="#F1EFEF" 
                            Height="174px" CssClass="overflow" HorizontalAlign="Left" BorderColor="Black" 
                            BorderStyle="Solid" BorderWidth="1px" Width="715px">
                            <asp:GridView ID="myTMGrid" runat="server" AutoGenerateColumns="False" 
                                BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" 
                                CellPadding="3" Height="29px" Width="669px">
                                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                <Columns>
                                    <asp:BoundField DataField="Year" HeaderStyle-Height="25px" HeaderText="Date" 
                                        ItemStyle-Height="20px">
                                        <HeaderStyle BackColor="#999999" BorderColor="Black" Width="10px" />
                                        <ItemStyle BorderColor="Black" ForeColor="Black" Width="10px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Type" HeaderText="Course" 
                                        ApplyFormatInEditMode="True">
                                        <HeaderStyle BackColor="#999999" BorderColor="Black" Width="50px" />
                                        <ItemStyle BorderColor="Black" ForeColor="Black" Width="50px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Description" HeaderText="Description">
                                        <HeaderStyle BackColor="#999999" BorderColor="Black" Width="120px" />
                                        <ItemStyle BorderColor="Black" ForeColor="Black" Width="120px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Facilitator" HeaderText="Facilitator">
                                        <HeaderStyle BackColor="#999999" BorderColor="Black" Width="70px" />
                                        <ItemStyle BorderColor="Black" ForeColor="Black" Width="70px" />
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
    </div>

</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="contentlabel">
    <table style="width:100%;"><tr>
<td style="width: 553px">
<ul><li class="labeltopformflow"><asp:Label ID="employeetrainings" runat="server" Text="Employee > Records > Trainings > Employee Training "></asp:Label>
        <asp:Label ID="labelposition" Font-Underline="true" ForeColor="Black" runat="server" Text="> Training Modules"></asp:Label>
        </li></ul>
        </td>
        <td align="right">
        <ul><li class="labeltopformposition"><asp:Label ID="lblrigths" runat="server" Text="View Access"></asp:Label>
        </li></ul>
        </td>
        </tr>
        </table>
</asp:Content>


