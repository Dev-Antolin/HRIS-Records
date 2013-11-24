<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/HRMasterPage.master"
    AutoEventWireup="false" CodeFile="recClearanceStatus3.aspx.vb" Inherits="recHRMDinfo_recClearanceStatus3"
    Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="width: 195px; height: 374px;">
        <div style="height: 172px">
            <ul style="list-style: none;">
                <li class="label"><a class="name">Resignation Clearance</a></li></ul>
            <br />
            <ul style="list-style: none;">
                <li class="effects2"><a href="recClearCreate.aspx">
                    <asp:Label ID="trainingmod" runat="server" Text="> Create Clearance" Height="16px"
                        Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Imgmanpowerline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a style="color: red; font-size: small;">
                        <asp:Label ID="Label2" runat="server" Text="> Clearance Status" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Image1" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a href="recClearanceCert.aspx">
                        <asp:Label ID="newregular" runat="server" Text="> Clearance Certificate" Height="16px"
                            Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="imgnewline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                </li>
            </ul>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <table style="width: 100%;">
            <tr style="text-align: center">
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 17px">
                    &nbsp;
                </td>
                <td style="width: 182px">
                    &nbsp;
                </td>
                <td style="width: 149px">
                    <asp:Label ID="Label172" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="12px"
                        ForeColor="Black" Text="Accountability"></asp:Label>
                </td>
                <td style="width: 202px">
                    <asp:Label ID="Label171" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="12px"
                        ForeColor="Black" Text="Cleared by"></asp:Label>
                </td>
                <td style="width: 97px">
                    <asp:Label ID="Label170" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="12px"
                        ForeColor="Black" Text="Date"></asp:Label>
                </td>
                <td style="width: 99px">
                    <asp:Label ID="Label169" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="12px"
                        ForeColor="Black" Text="Status"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 17px">
                    &nbsp;
                </td>
                <td style="width: 182px">
                    &nbsp;
                </td>
                <td style="width: 149px">
                    &nbsp;
                </td>
                <td style="width: 202px">
                    &nbsp;
                </td>
                <td style="width: 97px">
                    &nbsp;
                </td>
                <td style="width: 99px">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 15px; height: 25px;">
                </td>
                <td style="width: 17px; height: 25px;">
                    <asp:Label ID="Label173" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="13."></asp:Label>
                </td>
                <td style="width: 182px; height: 25px;">
                    <asp:Label ID="Label183" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="ML FUND"></asp:Label>
                </td>
                <td style="width: 149px; height: 25px;">
                    <asp:TextBox ID="txtaMLFUND" runat="server" Font-Names="Arial" Height="16px" Width="150px"></asp:TextBox>
                </td>
                <td style="width: 202px; height: 25px;">
                    <asp:TextBox ID="txtcMLFUND" runat="server" Font-Names="Arial" Height="16px" Width="200px"></asp:TextBox>
                </td>
                <td style="width: 97px; height: 25px;">
                    <asp:TextBox ID="txtdMLFUND" runat="server" Font-Names="Arial" Height="16px" Width="100px"
                        ReadOnly="True"></asp:TextBox>
                    <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtdMLFUND">
                    </asp:CalendarExtender>
                </td>
                <td style="width: 99px; height: 25px;">
                    <asp:TextBox ID="txtsMLFUND" runat="server" Font-Names="Arial" Height="16px" Width="100px"></asp:TextBox>
                </td>
            </tr>
            <tr style="height: 29px">
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 17px">
                    <asp:Label ID="Label184" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="14."></asp:Label>
                </td>
                <td style="width: 182px">
                    <asp:Label ID="Label185" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="SAKO"></asp:Label>
                </td>
                <td style="width: 149px">
                    <asp:TextBox ID="txtaSAKO" runat="server" Font-Names="Arial" Height="16px" Width="150px"></asp:TextBox>
                </td>
                <td style="width: 202px">
                    <asp:TextBox ID="txtcSAKO" runat="server" Font-Names="Arial" Height="16px" Width="200px"></asp:TextBox>
                </td>
                <td style="width: 97px">
                    <asp:TextBox ID="txtdSAKO" runat="server" Font-Names="Arial" Height="16px" Width="100px"
                        ReadOnly="True"></asp:TextBox>
                    <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txtdSAKO">
                    </asp:CalendarExtender>
                </td>
                <td style="width: 99px">
                    <asp:TextBox ID="txtsSAKO" runat="server" Font-Names="Arial" Height="16px" Width="100px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <table style="width: 100%;">
            <tr>
                <td>
                    <hr style="border: 1px solid #000000; font-family: Arial; background-color: #000000;
                        width: 780; float: inherit" />
                </td>
            </tr>
        </table>
        <br />
        <table style="width: 100%;">
            <tr>
                <td style="width: 53px; height: 29px">
                </td>
                <td style="width: 133px; height: 29px">
                    <asp:Label ID="Label186" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="GROSS AMOUNT"></asp:Label>
                </td>
                <td style="width: 13px; height: 29px">
                    <asp:Label ID="Label189" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text=":"></asp:Label>
                </td>
                <td style="height: 29px">
                    <asp:TextBox ID="txtgross" runat="server" Font-Names="Arial" Height="16px" Width="100px"></asp:TextBox>
                    <asp:FilteredTextBoxExtender ID="ftbeGross" runat="server" TargetControlID="txtgross"
                        FilterType="Custom , Numbers" ValidChars=",.">
                    </asp:FilteredTextBoxExtender>
                </td>
            </tr>
            <tr>
                <td style="width: 53px; height: 29px">
                </td>
                <td style="width: 133px; height: 29px">
                    <asp:Label ID="Label187" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Less: Accountabilities"></asp:Label>
                </td>
                <td style="width: 13px; height: 29px">
                    <asp:Label ID="Label190" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text=":"></asp:Label>
                </td>
                <td style="height: 29px">
                    <asp:TextBox ID="txtLess" runat="server" Font-Names="Arial" Height="16px" Width="100px"></asp:TextBox>
                    <asp:FilteredTextBoxExtender ID="ftbeless" runat="server" TargetControlID="txtless"
                        FilterType="Custom , Numbers" ValidChars=",.">
                    </asp:FilteredTextBoxExtender>
                </td>
            </tr>
            <tr>
                <td style="width: 53px">
                    &nbsp;
                </td>
                <td style="width: 133px">
                    <asp:Label ID="Label188" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="NET PAY"></asp:Label>
                </td>
                <td style="width: 13px">
                    <asp:Label ID="Label191" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text=":"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtNetPay" runat="server" Font-Names="Arial" Height="16px" Width="100px"></asp:TextBox>
                    <asp:FilteredTextBoxExtender ID="ftbenet" runat="server" TargetControlID="txtNetPay"
                        FilterType="Custom , Numbers" ValidChars=",.">
                    </asp:FilteredTextBoxExtender>
                </td>
            </tr>
        </table>
        <br />
        <table style="width: 100%;">
            <tr>
                <td>
                    <hr style="border: 1px solid #000000; font-family: Arial; background-color: #000000;
                        width: 780; float: inherit" />
                </td>
            </tr>
        </table>
        <br />
        <table style="width: 100%;">
            <tr>
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 249px">
                    <asp:Label ID="Label198" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Approved by:" Font-Bold="False"></asp:Label>
                </td>
                <td style="width: 250px">
                    &nbsp;
                </td>
                <td style="width: 249px">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 249px">
                    &nbsp;
                </td>
                <td style="width: 250px">
                    &nbsp;
                </td>
                <td style="width: 249px">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 249px">
                    &nbsp;
                </td>
                <td style="width: 250px">
                    &nbsp;
                </td>
                <td style="width: 249px">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 249px">
                    &nbsp;
                </td>
                <td style="width: 250px">
                    &nbsp;
                </td>
                <td style="width: 249px">
                    &nbsp;
                </td>
            </tr>
            <tr style="text-align: center">
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 249px">
                    <asp:Label ID="Label192" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="MYRNA JIMENEZ" Font-Bold="True"></asp:Label>
                </td>
                <td style="width: 250px">
                    <asp:Label ID="Label193" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="LORENZO ESCAÑO" Font-Bold="True"></asp:Label>
                </td>
                <td style="width: 249px">
                    <asp:Label ID="Label194" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="MICHAEL L. LHUILLIER" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr style="text-align: center">
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 249px">
                    <asp:Label ID="Label195" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="HRMD Manager" Font-Bold="False"></asp:Label>
                </td>
                <td style="width: 250px">
                    <asp:Label ID="Label196" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="General Manager" Font-Bold="False"></asp:Label>
                </td>
                <td style="width: 249px">
                    <asp:Label ID="Label197" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Vice President" Font-Bold="False"></asp:Label>
                </td>
            </tr>
            <tr style="text-align: center">
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 249px">
                    &nbsp;
                </td>
                <td style="width: 250px">
                    &nbsp;
                </td>
                <td style="width: 249px">
                    &nbsp;
                </td>
            </tr>
            <tr style="text-align: center">
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 249px">
                    <asp:Label ID="Label202" runat="server" ForeColor="Black" Text="___________________________"></asp:Label>
                </td>
                <td style="width: 250px">
                    <asp:Label ID="Label201" runat="server" ForeColor="Black" Text="___________________________"></asp:Label>
                </td>
                <td style="width: 249px">
                    <asp:Label ID="Label200" runat="server" ForeColor="Black" Text="___________________________"></asp:Label>
                </td>
            </tr>
            <tr style="text-align: center">
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 249px">
                    &nbsp;
                </td>
                <td style="width: 250px">
                    &nbsp;
                </td>
                <td style="width: 249px">
                    &nbsp;
                </td>
            </tr>
        </table>
        <br />
        <table style="width: 100%;">
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
                <td style="width: 364px">
                    &nbsp;
                </td>
                <td style="width: 179px">
                    &nbsp;
                </td>
                <td style="width: 61px">
                    &nbsp;
                </td>
                <td style="width: 71px">
                    &nbsp;
                </td>
                <td style="width: 65px">
                    <asp:ImageButton ID="cmdBack" runat="server" Height="25px" ImageUrl="~/images/Buttons/back.gif"
                        Width="75px" />
                </td>
                <td>
                    <asp:ImageButton ID="cmdPrint" runat="server" Height="25px" ImageUrl="~/images/Buttons/print.gif"
                        Width="75px" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="contentlabel">
    <table style="width: 100%; height: 1px">
        <tr>
            <td style="width: 15px">
                &nbsp;
            </td>
            <td style="width: 575px">
                <asp:Label ID="lblheader" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="DodgerBlue" Text="HRMD &gt; Records &gt; Resignation Clearance ">
                </asp:Label>
                <asp:Label ID="lblheader2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Black" Text="&gt; Clearance Status" Font-Underline="True">
                </asp:Label>
            </td>
            <td style="text-align: right">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Gray" Text="Read/Write Access"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
