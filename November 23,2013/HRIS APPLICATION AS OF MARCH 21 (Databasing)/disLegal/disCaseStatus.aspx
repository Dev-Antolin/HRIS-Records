<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/LegalMasterPage.master" AutoEventWireup="false" CodeFile="disCaseStatus.aspx.vb" Inherits="DisDiscipline_disCaseApplication" title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="width:195px; height: 334px;">
<ul style="list-style:none;"><li class="label"><a class="name">Workforce Administration</a></li></ul><br />
<ul style="list-style:none;">
<li style="margin-left:20px; cursor:pointer;" class="effects2">
<a href="disReceiveCase.aspx"><asp:Label ID="lblreceive" runat="server" Text="> Receive Case" Height="16px" Width="177px"></asp:Label></a><br />
<asp:Image ImageAlign="Right" ID="imgcaseappline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg" Width="170px" /><br />
<a  style="color:red; font-size:small;"><asp:label id="lblcasestat" runat="server" Text="> Case Status" height="16px" width="177px"></asp:label></a><br />
<asp:Image ImageAlign="Right" ID="Imgrecappline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg" Width="170px" /><br />
<a href="disCodeofDiscipline.aspx"><asp:Label ID="lblcode" runat="server" Text="> Code of Discipline" Height="16px" Width="177px"></asp:Label></a><br />
<asp:Image ImageAlign="Right" ID="imgcasestatline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg" Width="170px" /><br />
</li>
</ul>
</div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:94%;">
        <tr>
            <td style="width: 13px">
                &nbsp;</td>
            <td style="width: 101px">
                <asp:Label ID="lblappno" runat="server" Font-Names="Arial" Font-Size="Small" 
                    Text="Applicant No." ForeColor="Black"></asp:Label>
            </td>
            <td style="width: 108px">
                
                <asp:TextBox ID="txtapp" runat="server" Width="115px"></asp:TextBox>
            </td>
            <td style="width: 28px">
                <asp:ImageButton ID="imgsearch" runat="server" Height="20px" 
                    ImageUrl="~/images/searchlens.jpg" />
            </td>
            <td style="width: 78px" align="left">
                <asp:Label ID="lblcase" runat="server" Font-Names="Arial" Font-Size="Small" 
                    Text="Case No." ForeColor="Black"></asp:Label>
            </td>
            <td style="width: 81px">
                
                <asp:TextBox ID="TextBox1" runat="server" Width="84px"></asp:TextBox>
            </td>
            <td style="width: 28px">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" 
                    ImageUrl="~/images/searchlens.jpg" />
            </td>
            <td style="width: 36px">
                <asp:Label ID="lblfrom" runat="server" Font-Names="Arial" Font-Size="Small" 
                    Text="From" ForeColor="Black"></asp:Label>
            </td>
            <td style="width: 83px">
                <asp:CalendarExtender ID="cal1" runat="server" TargetControlID="txtfrom" PopupPosition="BottomLeft"></asp:CalendarExtender>
                <asp:TextBox ID="txtfrom" runat="server" Width="83px"></asp:TextBox>
            </td>
            <td style="width: 21px">
                <asp:Label ID="lblto" runat="server" Font-Names="Arial" Font-Size="Small" 
                    Text="To" ForeColor="Black"></asp:Label>
            </td>
            <td style="width: 88px">
            <asp:CalendarExtender ID="cal2" runat="server" TargetControlID="txtto" PopupPosition="BottomLeft"></asp:CalendarExtender>
                <asp:TextBox ID="txtto" runat="server" Width="83px"></asp:TextBox>
            </td>
            <td align="center">
                <asp:ImageButton ID="cmdsearch" runat="server" Height="25px" 
                    ImageUrl="~/images/Buttons/search.gif" Width="75px" />
            </td>
        </tr>
    </table>
    <br />
      <table style="width:100%;">
        <tr>
        <td style="width: 38px"></td>
            <td style="width: 56px">
            
                <asp:Panel ID="pnlrecsearch" runat="server" BackColor="#999999" Height="183px" 
                    Width="744px" Visible="False">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                                CellPadding="3" GridLines="Horizontal" Height="29px" Width="743px">
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <Columns>
                            <asp:BoundField HeaderText="Applicant No." ItemStyle-Width="120px" HeaderStyle-Height="25px" 
                                        ItemStyle-Height="20px">
                                <HeaderStyle BackColor="#999999" BorderColor="Black" />
                                <ItemStyle BorderColor="Black" ForeColor="Black" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="Case No." ItemStyle-Width="120px">
                                <HeaderStyle BackColor="#999999" BorderColor="Black" />
                                <ItemStyle BorderColor="Black" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="Report Date" ItemStyle-Width="120px">
                                <HeaderStyle BackColor="#999999" BorderColor="Black" />
                                <ItemStyle BorderColor="Black" ForeColor="Black" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="Resource" ItemStyle-Width="120px">
                                <HeaderStyle BackColor="#999999" BorderColor="Black" />
                                <ItemStyle BorderColor="Black" ForeColor="Black" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="Disciplinary Type" ItemStyle-Width="140px">
                                <HeaderStyle BackColor="#999999" BorderColor="Black" />
                                <ItemStyle BorderColor="Black" ForeColor="Black" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="BC" ItemStyle-Width="105px">
                                <HeaderStyle BackColor="#999999" BorderColor="Black" />
                                <ItemStyle BorderColor="Black" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="Escalation" ItemStyle-Width="80px">
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
            <td style="width: 18px"></td>
           
        </tr>
    </table>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="contentlabel">
<table style="width:100%;"><tr>
<td style="width: 553px">
<ul><li class="labeltopformflow"><asp:Label ID="dislegal" runat="server" Text="HRMD > Discipline > Workforce Administration "></asp:Label>
        <asp:Label ID="labelposition" Font-Underline="true" ForeColor="Black" runat="server" Text="> Case Status"></asp:Label>
        </li></ul> 
        </td>
        <td align="right">
        <ul><li class="labeltopformposition"><asp:Label ID="lblrigths" runat="server" Text="Read/Write Access"></asp:Label>
        </li></ul>
        </td>
        </tr>
        </table>
</asp:Content>


