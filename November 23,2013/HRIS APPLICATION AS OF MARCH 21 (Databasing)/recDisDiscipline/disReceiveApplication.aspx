<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/DisciplineMasterPage.master"
    AutoEventWireup="false" CodeFile="disReceiveApplication.aspx.vb" Inherits="DisDiscipline_disCaseApplication"
    Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="width: 195px; height: 334px;">
        <ul style="list-style: none;">
            <li class="label"><a class="name">Workforce Administration</a></li></ul>
        <br />
        <ul style="list-style: none;">
            <li style="margin-left: 20px; cursor: pointer;" class="effects2"><a href="disCaseApplication.aspx">
                <asp:Label ID="lblcaseapp" runat="server" Text="> Case Application" Height="16px"
                    Width="177px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="imgcaseappline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" /><br />
                <a style="color: red; font-size: small;">
                    <asp:Label ID="lblrecapp" runat="server" Text="> Receive Application" Height="16px"
                        Width="177px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="Imgrecappline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" /><br />
                <a href="disCaseStatus.aspx">
                    <asp:Label ID="lblcasestat" runat="server" Text="> Case Status" Height="16px" Width="177px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="imgcasestatline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" /><br />
                <a href="disCodeofDiscipline.aspx">
                    <asp:Label ID="lblcodedis" runat="server" Text="> Code of Discipline" Height="16px"
                        Width="177px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="Imgcodedisline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" /><br />
            </li>
        </ul>
        <ul style="list-style: none; margin-top: 120px;">
            <li class="label"><a class="name">Reports</a></li></ul>
        <br />
        <ul style="list-style: none;">
            <li class="effects2"><a href="disDisciplineSummaryReport.aspx">
                <asp:Label ID="dissum" runat="server" Text="> Discipline Summary" Height="16px" Width="177px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="imgdissumline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" /><br />
                <a href="disDisciplineScorecardReport.aspx">
                    <asp:Label ID="disscore" runat="server" Text="> Discipline Scorecard" Height="16px"
                        Width="177px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="Imgdisscoreline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" /><br />
                <a href="disDisciplineCaseFile.aspx">
                    <asp:Label ID="empfile" runat="server" Text="> Employee Case File" Height="16px"
                        Width="177px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="imgempfileline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" /><br />
            </li>
        </ul>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 100%;">
        <tr>
            <td style="width: 56px">
                &nbsp;
            </td>
            <td style="width: 91px">
                <asp:Label ID="lblappno" runat="server" Font-Names="Arial" Font-Size="Small" Text="Applicant No."></asp:Label>
            </td>
            <td style="width: 140px">
                <asp:TextBox ID="txtapp" runat="server" Width="137px"></asp:TextBox>
            </td>
            <td style="width: 28px">
                <asp:ImageButton ID="imgsearch" runat="server" Height="20px" ImageUrl="~/images/searchlens.jpg" />
            </td>
            <td style="width: 36px">
                <asp:Label ID="lblfrom" runat="server" Font-Names="Arial" Font-Size="Small" Text="From"></asp:Label>
            </td>
            <td style="width: 130px">
                <asp:CalendarExtender ID="cal1" runat="server" TargetControlID="txtfrom" PopupPosition="BottomLeft">
                </asp:CalendarExtender>
                <asp:TextBox ID="txtfrom" runat="server" Width="131px"></asp:TextBox>
            </td>
            <td style="width: 21px">
                <asp:Label ID="lblto" runat="server" Font-Names="Arial" Font-Size="Small" Text="To"></asp:Label>
            </td>
            <td style="width: 134px">
                <asp:CalendarExtender ID="cal2" runat="server" TargetControlID="txtto" PopupPosition="BottomLeft">
                </asp:CalendarExtender>
                <asp:TextBox ID="txtto" runat="server" Width="145px"></asp:TextBox>
            </td>
            <td align="center">
                <asp:ImageButton ID="cmdsearch" runat="server" Height="25px" ImageUrl="~/images/Buttons/search.gif"
                    Width="75px" />
            </td>
        </tr>
    </table>
    <br />
    <table style="width: 100%;">
        <tr>
            <td style="width: 38px">
            </td>
            <td style="width: 56px">
                <asp:Panel ID="pnlrecsearch" runat="server" BackColor="#999999" Height="183px" Width="744px"
                    Visible="False">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                        BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal"
                        Height="29px" Width="743px">
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <Columns>
                            <asp:BoundField HeaderText="Applicant No." ItemStyle-Width="130px" HeaderStyle-Height="25px"
                                ItemStyle-Height="20px">
                                <HeaderStyle BackColor="#999999" BorderColor="Black" />
                                <ItemStyle BorderColor="Black" ForeColor="Black" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="Report Date" ItemStyle-Width="120px">
                                <HeaderStyle BackColor="#999999" BorderColor="Black" />
                                <ItemStyle BorderColor="Black" ForeColor="Black" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="Resource" ItemStyle-Width="130px">
                                <HeaderStyle BackColor="#999999" BorderColor="Black" />
                                <ItemStyle BorderColor="Black" ForeColor="Black" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="Disciplinary Type" ItemStyle-Width="150px">
                                <HeaderStyle BackColor="#999999" BorderColor="Black" />
                                <ItemStyle BorderColor="Black" ForeColor="Black" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="BC" ItemStyle-Width="120px">
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
            <td style="width: 18px">
            </td>
        </tr>
    </table>
</asp:Content>
