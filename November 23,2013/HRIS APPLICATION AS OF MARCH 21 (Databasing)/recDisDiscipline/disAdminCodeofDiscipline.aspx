<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/AdminCodeofDiscipline.master"
    AutoEventWireup="false" CodeFile="disAdminCodeofDiscipline.aspx.vb" Inherits="DisDiscipline_disCaseApplication"
    Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="width: 195px; height: 334px;">
        <ul style="list-style: none;">
            <li class="label"><a class="name">Workforce Administration</a></li></ul>
        <br />
        <ul style="list-style: none;">
            <li style="margin-left: 15px; cursor: pointer;" class="effects2"><a style="color: Red;
                font-size: small;" href="disCaseApplication.aspx">
                <asp:Label ID="lblcaseapp" runat="server" Text="> Code of Discipline" Height="16px"
                    Width="177px" ForeColor="Red"></asp:Label></a><br />
                <asp:Image ImageAlign="Right" ID="imgcaseappline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
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
            <td style="width: 26px">
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
            <td style="width: 26px">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 111px">
                &nbsp;
            </td>
            <td style="width: 26px">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 111px">
                &nbsp;
            </td>
            <td style="width: 26px">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 111px">
                &nbsp;
            </td>
            <td style="width: 26px">
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
            <td style="width: 26px">
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
            <td style="width: 26px; height: 18px;">
            </td>
            <td style="height: 18px">
            </td>
        </tr>
        <tr>
            <td style="width: 111px">
                &nbsp;
            </td>
            <td style="width: 26px">
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
            <td style="width: 26px">
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
            <td style="width: 26px">
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
            <td style="width: 26px">
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
            <td style="width: 26px">
                &nbsp;
            </td>
            <td style="width: 26px">
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
            <td style="width: 26px">
                &nbsp;
            </td>
            <td style="width: 26px">
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
            <td style="width: 26px">
                &nbsp;
            </td>
            <td style="width: 26px">
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
            <td style="width: 26px">
                &nbsp;
            </td>
            <td style="width: 26px">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 111px; height: 15px;">
            </td>
            <td style="width: 30px; height: 15px;">
            </td>
            <td style="width: 26px; height: 15px;">
            </td>
            <td style="width: 26px; height: 15px;">
            </td>
        </tr>
        <tr>
            <td style="width: 111px">
                &nbsp;
            </td>
            <td style="width: 30px">
                &nbsp;
            </td>
            <td style="width: 26px">
                &nbsp;
            </td>
            <td style="width: 26px">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 111px">
                &nbsp;
            </td>
            <td colspan="3">
                <table style="width: 100%;">
                    <tr>
                        <td align="right" style="width: 355px">
                            <asp:ImageButton ID="cmdadd" runat="server" Height="25px" ImageUrl="~/images/Buttons/add.gif"
                                Width="75px" />
                        </td>
                        <td style="width: 73px">
                            <asp:ImageButton ID="cmdedit" runat="server" Height="25px" ImageUrl="~/images/Buttons/edit.gif"
                                Width="75px" />
                        </td>
                        <td style="width: 73px">
                            <asp:ImageButton ID="cmdsave" runat="server" Height="25px" ImageUrl="~/images/Buttons/Save.gif"
                                Width="75px" />
                        </td>
                        <td>
                            <asp:ImageButton ID="cmdcancel" runat="server" Height="25px" ImageUrl="~/images/Buttons/cancel.gif"
                                Width="75px" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
