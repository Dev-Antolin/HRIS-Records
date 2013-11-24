<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/DisciplineMasterPage.master"
    AutoEventWireup="false" CodeFile="disCodeofDiscipline.aspx.vb" Inherits="DisDiscipline_disCaseApplication"
    Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="width: 195px; height: 334px;">
        <ul style="list-style: none;">
            <li class="label"><a class="name">Workforce Administration</a></li></ul>
        <br />
        <ul style="list-style: none;">
            <li style="margin-left: 15px; cursor: pointer;" class="effects2"><a href="disCaseApplication.aspx">
                <asp:Label ID="lblcaseapp" runat="server" Text="> Case Application" Height="16px"
                    Width="177px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="imgcaseappline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" /><br />
                <a href="disReceiveApplication.aspx">
                    <asp:Label ID="lblrecapp" runat="server" Text="> Receive Application" Height="16px"
                        Width="177px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="Imgrecappline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" /><br />
                <a href="disCaseStatus.aspx">
                    <asp:Label ID="lblcasestat" runat="server" Text="> Case Status" Height="16px" Width="177px"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="imgcasestatline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                    Width="170px" /><br />
                <a style="color: red; font-size: small;">
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
            <td style="width: 111px">
                <asp:Label ID="lblcode" runat="server" Font-Names="Arial" Font-Size="Small" ForeColor="Black"
                    Text="Code"></asp:Label>
            </td>
            <td style="width: 166px">
                <asp:TextBox ID="TextBox1" runat="server" BackColor="#DEDCDD" Width="173px"></asp:TextBox>
            </td>
            <td style="width: 30px">
                <asp:ImageButton ID="imgsearch" runat="server" Height="20px" ImageUrl="~/images/searchlens.jpg" />
            </td>
            <td style="width: 182px">
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 111px">
                <asp:Label ID="lbldistype" runat="server" Font-Names="Arial" Font-Size="Small" ForeColor="Black"
                    Text="Disciplinary Type"></asp:Label>
            </td>
            <td style="width: 166px">
                <asp:TextBox ID="TextBox2" runat="server" BackColor="#DEDCDD" Width="173px"></asp:TextBox>
            </td>
            <td style="width: 30px">
                &nbsp;
            </td>
            <td style="width: 182px">
                &nbsp;
            </td>
            <td>
                <asp:Label ID="lblincidents" runat="server" Font-Names="Arial" Font-Size="Small"
                    ForeColor="Black" Text="Incidents"></asp:Label>
            </td>
        </tr>
    </table>
    <table style="width: 100%;">
        <tr>
            <td style="width: 111px">
                <asp:Label ID="lbldescription" runat="server" Font-Names="Arial" Font-Size="Small"
                    ForeColor="Black" Text="Description"></asp:Label>
            </td>
            <td style="width: 28px" rowspan="5">
                <asp:TextBox ID="TextBox3" runat="server" BackColor="#DEDCDD" Width="359px" Font-Names="Arial"
                    ForeColor="Black" Height="85px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td style="width: 30px">
                &nbsp;
            </td>
            <td rowspan="5">
                <asp:TextBox ID="TextBox4" runat="server" BackColor="#DEDCDD" Width="256px" Font-Names="Arial"
                    ForeColor="Black" Height="85px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 111px">
                &nbsp;
            </td>
            <td style="width: 30px">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 111px">
                &nbsp;
            </td>
            <td style="width: 30px">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 111px">
                &nbsp;
            </td>
            <td style="width: 30px">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 111px">
                &nbsp;
            </td>
            <td style="width: 30px">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 111px">
                &nbsp;
            </td>
            <td style="width: 28px">
                <table style="width: 1816%; height: 26px;">
                    <tr>
                        <td style="width: 35px">
                            <asp:Label ID="lblnote" runat="server" Font-Names="Arial Unicode MS" Font-Size="11px"
                                ForeColor="Red" Text="NOTE:"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblmessage" runat="server" Font-Names="Arial Unicode MS" ForeColor="Black"
                                Text="Always crosscheck with the Manual for final Code description."></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td style="width: 30px">
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 111px; height: 18px;">
                <asp:Label ID="lblpenalty" runat="server" Font-Names="Arial" Font-Size="Small" ForeColor="Black"
                    Text="Penalty"></asp:Label>
            </td>
            <td style="width: 28px" rowspan="5">
                <asp:Panel ID="pnlpenalty" runat="server" BackColor="Gray" BorderColor="#993300"
                    Height="97px" Width="360px">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White"
                        BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" GridLines="None"
                        Height="26px" Width="359px">
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <Columns>
                            <asp:BoundField HeaderText="Penalty Code" HeaderStyle-Width="100px">
                                <HeaderStyle BackColor="#999999" BorderColor="Black" Height="20px" />
                                <ItemStyle BorderColor="Black" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="Description">
                                <HeaderStyle BackColor="#999999" BorderColor="Black" />
                                <ItemStyle BorderColor="Black" Height="15px" />
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
            <td style="width: 30px; height: 18px;">
            </td>
            <td style="height: 18px">
            </td>
        </tr>
        <tr>
            <td style="width: 111px">
                &nbsp;
            </td>
            <td style="width: 30px">
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 111px">
                &nbsp;
            </td>
            <td style="width: 30px">
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 111px">
                &nbsp;
            </td>
            <td style="width: 30px">
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 111px">
                &nbsp;
            </td>
            <td style="width: 30px">
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
