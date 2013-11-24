<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/HRMasterPage.master"
    AutoEventWireup="false" CodeFile="Movements.aspx.vb" Inherits="recHRMDinfo_Movements_Movements"
    Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="width: 195px; height: 374px;">
        <div style="height: 172px">
            <ul style="list-style: none;">
                <li class="label"><a class="name">Movements</a></li></ul>
            <br />
            <ul style="list-style: none;">
                <li class="effects2"><a style="color: red; font-size: small;">
                    <asp:Label ID="trainingmod" runat="server" Text="> Receive Movements" Height="16px"
                        Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Imgmanpowerline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                </li>
            </ul>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <table style="width: 100%; height: 133px;">
            <tr>
                <td style="width: 15px">
                </td>
                <td style="width: 642px">
                    <asp:Panel ID="Panel2" runat="server" BackColor="#666666" BorderColor="Black" BorderStyle="Solid"
                        BorderWidth="2px" Height="127px" Width="704px">
                        <asp:GridView ID="dgridChildren0" runat="server" AutoGenerateColumns="False" BackColor="White"
                            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black"
                            GridLines="Vertical" Height="132px" Width="704px">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:BoundField HeaderText="Resource ID" DataField="employeeId" 
                                    ReadOnly="True" >
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="Name" DataField="Fullname" >
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="Region/Division" DataField="divFrom" >
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="Reason" DataField="reason" >
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="Date Requested" DataField="DateRequested" >
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="divFrom" HeaderText="Division From" ReadOnly="True" 
                                    Visible="False">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="divTo" HeaderText="Division To" ReadOnly="True" 
                                    Visible="False">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="depFrom" HeaderText="Department From" 
                                    ReadOnly="True" Visible="False">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="depTo" HeaderText="Department To" ReadOnly="True" 
                                    Visible="False">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="dateHired" HeaderText="Date Hired" ReadOnly="True" 
                                    Visible="False">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="designationFrom" HeaderText="Designation From" 
                                    ReadOnly="True" Visible="False">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="designationTo" HeaderText="Designation To" 
                                    ReadOnly="True" Visible="False">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="EffectiveDate" HeaderText="Effective Date" 
                                    ReadOnly="True" Visible="False">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:ButtonField HeaderText="View" Text="Details" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Height="14px" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        </asp:GridView>
                    </asp:Panel>
                </td>
            </tr>
        </table>
        <br />
        <asp:Panel ID="panelApp" runat="server" BackColor="#F1EFEF" BorderStyle="None" Height="338px"
                    Width="686px" Visible="False">
        <table style="width: 100%; margin-bottom: 0px;">
            <tr>
                <td style="width: 50px">
                    &nbsp;
                </td>
                <td style="width: 192px">
                    <asp:Label ID="Label169" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Resource ID"></asp:Label>
                </td>
                <td style="width: 194px">
                    <asp:TextBox ID="txtresource" runat="server" Font-Names="Arial" Height="16px" Width="158px"></asp:TextBox>
                    <asp:ImageButton ID="cmdBrowse" runat="server" Height="16px" ImageUrl="~/images/searchlens.jpg"
                        Width="20px" Visible="False" />
                </td>
                <td style="width: 14px">
                    &nbsp;
                </td>
                <td align="right" style="width: 176px">
                    <asp:Label ID="Label180" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Date Hired"></asp:Label>
                </td>
                <td style="width: 329px">
                    &nbsp;
                    <asp:TextBox ID="txtdateHired" runat="server" Font-Names="Arial" Height="16px" Width="180px"
                        ReadOnly="True"></asp:TextBox>
                    <asp:CalendarExtender ID="calexhired" runat="server" TargetControlID="txtdateHired"
                        Enabled="true">
                    </asp:CalendarExtender>
                </td>
                <td style="width: 143px">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 50px">
                    &nbsp;
                </td>
                <td style="width: 192px">
                    &nbsp;
                </td>
                <td style="width: 194px">
                    <asp:TextBox ID="txtname" runat="server" Font-Names="Arial" Height="16px" 
                        Width="180px" Visible="False"></asp:TextBox>
                </td>
                <td style="width: 14px">
                    &nbsp;
                </td>
                <td align="right" style="width: 176px">
                    <asp:Label ID="Label181" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Date Requested"></asp:Label>
                </td>
                <td style="width: 329px">
                    &nbsp;
                    <asp:TextBox ID="txtdateRequested" runat="server" Font-Names="Arial" Height="16px"
                        Width="180px" ReadOnly="True"></asp:TextBox>
                    <asp:CalendarExtender ID="calextender" runat="server" TargetControlID="txtdateRequested"
                        Enabled="true">
                    </asp:CalendarExtender>
                </td>
                <td style="width: 143px">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 50px">
                    &nbsp;
                </td>
                <td style="width: 192px">
                    <asp:Label ID="Label170" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Reason of Movement"></asp:Label>
                </td>
                <td style="width: 194px">
                    <asp:DropDownList runat="server" Font-Names="Arial" Height="20px" Width="184px" ID="cboReason">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Promotion</asp:ListItem>
                        <asp:ListItem>Demotion</asp:ListItem>
                        <asp:ListItem>Terminated</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 14px">
                    &nbsp;
                </td>
                <td align="right" style="width: 176px">
                    <asp:Label ID="Label187" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Effective Date of Movement"></asp:Label>
                </td>
                <td style="width: 329px">
                    &nbsp;
                    <asp:TextBox ID="txtEffectivity" runat="server" Font-Names="Arial" Height="16px"
                        Width="180px" ReadOnly="True"></asp:TextBox>
                    <asp:CalendarExtender ID="calxtend" runat="server" TargetControlID="txtEffectivity"
                        Enabled="true">
                    </asp:CalendarExtender>
                </td>
                <td style="width: 143px">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 50px">
                    &nbsp;
                </td>
                <td style="width: 192px">
                    <asp:Label ID="Label171" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Division/Region"></asp:Label>
                </td>
                <td style="width: 194px">
                    <asp:TextBox ID="txtDivision" runat="server" Font-Names="Arial" Height="16px" Width="180px"></asp:TextBox>
                </td>
                <td style="width: 14px">
                    <asp:Label ID="Label177" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="To"></asp:Label>
                </td>
                <td style="width: 176px">
                    <asp:TextBox ID="txtToDivision" runat="server" Font-Names="Arial" Height="16px" Width="140px"></asp:TextBox>
                </td>
                <td style="width: 329px">
                    &nbsp;
                </td>
                <td style="width: 143px">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 50px">
                    &nbsp;
                </td>
                <td style="width: 192px">
                    <asp:Label ID="Label172" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Department/Branch"></asp:Label>
                </td>
                <td style="width: 194px">
                    <asp:TextBox ID="txtDepartment" runat="server" Font-Names="Arial" Height="16px" Width="180px"></asp:TextBox>
                </td>
                <td style="width: 14px">
                    <asp:Label ID="Label178" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="To"></asp:Label>
                </td>
                <td style="width: 176px">
                    <asp:TextBox ID="txtToDepartment" runat="server" Font-Names="Arial" Height="16px"
                        Width="140px"></asp:TextBox>
                </td>
                <td style="width: 329px">
                    &nbsp;
                </td>
                <td style="width: 143px">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 50px">
                    &nbsp;
                </td>
                <td style="width: 192px">
                    <asp:Label ID="Label173" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Designation"></asp:Label>
                </td>
                <td style="width: 194px">
                    <asp:TextBox ID="txtDesignation" runat="server" Font-Names="Arial" Height="16px"
                        Width="180px"></asp:TextBox>
                </td>
                <td style="width: 14px">
                    <asp:Label ID="Label179" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="To"></asp:Label>
                </td>
                <td style="width: 176px">
                    <asp:TextBox ID="txtToDesignation" runat="server" Font-Names="Arial" Height="16px"
                        Width="140px"></asp:TextBox>
                </td>
                <td style="width: 329px">
                    &nbsp;
                </td>
                <td style="width: 143px">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 50px">
                    &nbsp;
                </td>
                <td style="width: 192px">
                    <asp:Label ID="Label174" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="DM/BM Allowance"></asp:Label>
                </td>
                <td style="width: 194px">
                    <asp:TextBox ID="txtDMAllowance" runat="server" Font-Names="Arial" Height="16px"
                        Width="180px"></asp:TextBox>
                    <asp:FilteredTextBoxExtender ID="ftbeDM" runat="server" TargetControlID="txtDMAllowance"
                        FilterType="Custom, Numbers" ValidChars=".,">
                    </asp:FilteredTextBoxExtender>
                </td>
                <td style="width: 14px">
                    &nbsp;
                </td>
                <td align="right" style="width: 176px">
                    <asp:Label ID="Label183" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Housing Allowance"></asp:Label>
                </td>
                <td style="width: 329px">
                    &nbsp;
                    <asp:TextBox ID="txtHAllowance" runat="server" Font-Names="Arial" Height="16px" Width="180px"></asp:TextBox>
                    <asp:FilteredTextBoxExtender ID="ftbeH" runat="server" TargetControlID="txtHAllowance"
                        FilterType="Custom, Numbers" ValidChars=".,">
                    </asp:FilteredTextBoxExtender>
                </td>
                <td style="width: 143px">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 50px">
                    &nbsp;
                </td>
                <td style="width: 192px">
                    <asp:Label ID="Label175" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Asst. BM Allowance"></asp:Label>
                </td>
                <td style="width: 194px">
                    <asp:TextBox ID="txtBMAllowance" runat="server" Font-Names="Arial" Height="16px"
                        Width="180px"></asp:TextBox>
                    <asp:FilteredTextBoxExtender ID="ftbeBM" runat="server" TargetControlID="txtBMAllowance"
                        FilterType="Custom, Numbers" ValidChars=".,">
                    </asp:FilteredTextBoxExtender>
                </td>
                <td style="width: 14px">
                    &nbsp;
                </td>
                <td align="right" style="width: 176px">
                    <asp:Label ID="Label184" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Branch Allowance"></asp:Label>
                </td>
                <td style="width: 329px">
                    &nbsp;
                    <asp:TextBox ID="txtBAllowance" runat="server" Font-Names="Arial" Height="16px" Width="180px"></asp:TextBox>
                    <asp:FilteredTextBoxExtender ID="ftbeB" runat="server" TargetControlID="txtBAllowance"
                        FilterType="Custom, Numbers" ValidChars=".,">
                    </asp:FilteredTextBoxExtender>
                </td>
                <td style="width: 143px">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 50px; height: 20px;">
                </td>
                <td style="width: 192px; height: 20px">
                    <asp:Label ID="Label176" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Single Post Allowance"></asp:Label>
                </td>
                <td style="width: 194px; height: 20px">
                    <asp:TextBox ID="txtSinglePost" runat="server" Font-Names="Arial" Height="16px" Width="180px"></asp:TextBox>
                    <asp:FilteredTextBoxExtender ID="ftbeSingle" runat="server" TargetControlID="txtSinglePost"
                        FilterType="Custom, Numbers" ValidChars=".,">
                    </asp:FilteredTextBoxExtender>
                </td>
                <td style="width: 14px; height: 20px">
                </td>
                <td align="right" style="width: 176px; height: 20px">
                    <asp:Label ID="Label185" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Auditor's Allowance"></asp:Label>
                </td>
                <td style="width: 329px; height: 20px">
                    &nbsp;
                    <asp:TextBox ID="txtAAllowance" runat="server" Font-Names="Arial" Height="16px" Width="180px"></asp:TextBox>
                    <asp:FilteredTextBoxExtender ID="ftbeA" runat="server" TargetControlID="txtAAllowance"
                        FilterType="Custom, Numbers" ValidChars=".,">
                    </asp:FilteredTextBoxExtender>
                </td>
                <td style="width: 143px; height: 20px">
                </td>
            </tr>
           <%-- <tr style="height: 5px">
                <td style="width: 50px">
                    &nbsp;
                </td>
                <td style="width: 192px">
                    &nbsp;
                </td>
                <td style="width: 194px">
                    &nbsp;
                </td>
                <td style="width: 14px">
                    &nbsp;
                </td>
                <td style="width: 176px">
                    &nbsp;
                </td>
                <td style="width: 329px">
                    &nbsp;
                </td>
                <td style="width: 143px">
                    &nbsp;
                </td>
            </tr>--%>
            <tr>
                <td style="width: 50px">
                    &nbsp;
                </td>
                <td style="width: 192px">
                    <asp:Label ID="Label186" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Purpose/Reason"></asp:Label>
                </td>
                <td colspan="4">
                    <asp:TextBox ID="txtpurpose" runat="server" Height="85px" TextMode="MultiLine" Width="549px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
        
        <table style="width: 100%;">
            <tr>
                <td>
                    &nbsp;
                </td>
                <td style="width: 53px">
                    &nbsp;
                </td>
                <td style="width: 308px">
                    &nbsp;
                </td>
                <td style="width: 61px">
                    &nbsp;
                </td>
                <td style="width: 71px">
                    <asp:ImageButton ID="cmdApprove" runat="server" Height="25px" ImageUrl="~/images/Buttons/approve.gif"
                        Width="90px" />
                </td>
                <td style="width: 65px">
                    <asp:ImageButton ID="cmdDisapprove" runat="server" Height="25px" ImageUrl="~/images/Buttons/disapprove.gif"
                        Width="90px" />
                </td>
                <td>
                    <asp:ImageButton ID="cmdPrint" runat="server" Height="25px" ImageUrl="~/images/Buttons/print.gif"
                        Width="75px" Visible="False" />
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
        </asp:Panel>
    </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="contentlabel">
    <table style="width: 100%; height: 1px">
        <tr>
            <td style="width: 15px">
                &nbsp;
            </td>
            <td style="width: 608px">
                <asp:Label ID="lblheader" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="DodgerBlue" Text="HRMD &gt; Records &gt; Employee Movement ">
                </asp:Label>
                <asp:Label ID="lblheader2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Black" Text="&gt; Receive Movement" Font-Underline="True">
                </asp:Label>
            </td>
            <td style="text-align: right">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Gray" Text="View Access"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
