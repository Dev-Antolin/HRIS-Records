<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/HRMasterPage.master"
    AutoEventWireup="false" CodeFile="Discipline.aspx.vb" Inherits="recHRMDinfo_Documents_Discipline"
    Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="width: 195px; height: 374px;">
        <div style="height: 172px">
            <ul style="list-style: none;">
                <li class="label"><a class="name">HRMD Documents</a></li></ul>
            <br />
            <ul style="list-style: none;">
                <li class="effects2"><a href="Attachments.aspx">
                    <asp:Label ID="trainingmod" runat="server" Text="> Attachments" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Imgmanpowerline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a style="color: red; font-size: small;">
                        <asp:Label ID="newregular" runat="server" Text="> Discipline" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="imgnewline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <asp:Label ID="resigned" runat="server" Text="> Undertakings" Height="16px" Width="177px"
                        CssClass="def"></asp:Label><br />
                    <asp:Image ImageAlign="Right" ID="Imgresignedline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a href="UndertakingSearch.aspx" style="margin-left: 25px">
                        <asp:Label ID="newhired" runat="server" Text="> Search" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="imgnewhiredline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="156px" /><br />
                    <a href="UndertakingUpload.aspx" style="margin-left: 25px">
                        <asp:Label ID="lblunderUp" runat="server" Text="> Upload" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Image1" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="156px" /><br />
                    <asp:Label ID="lblApeR" runat="server" Text="> APE Results" Height="16px" Width="177px"
                        CssClass="def"></asp:Label><br />
                    <asp:Image ImageAlign="Right" ID="Image2" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a href="APESearch.aspx" style="margin-left: 25px">
                        <asp:Label ID="lblApeSe" runat="server" Text="> Search" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Image3" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="156px" /><br />
                    <a href="APEUpload.aspx" style="margin-left: 25px">
                        <asp:Label ID="lblapeUp" runat="server" Text="> Upload" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Image4" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="156px" /><br />
                    <asp:Label ID="lblempHis" runat="server" Text="> Employment History" Height="16px"
                        Width="177px" CssClass="def"></asp:Label><br />
                    <asp:Image ImageAlign="Right" ID="Image5" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                    <a href="HistoryInternal.aspx" style="margin-left: 25px">
                        <asp:Label ID="lblHIn" runat="server" Text="> Internal" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Image6" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="156px" /><br />
                    <a href="HistoryExternal.aspx" style="margin-left: 25px">
                        <asp:Label ID="lblHEx" runat="server" Text="> External" Height="16px" Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="Image7" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="156px" /><br />
                </li>
            </ul>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <table style="width: 100%;">
            <tr>
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 59px">
                    <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Case No."></asp:Label>
                </td>
                <td style="width: 194px">
                    <asp:TextBox runat="server" Font-Names="Arial" Height="16px" Width="184px" ID="txtCaseNo"></asp:TextBox>
                    <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" TargetControlID="txtCaseNo"
                        FilterType="Numbers">
                    </asp:FilteredTextBoxExtender>
                </td>
                <td style="width: 72px">
                    <asp:Label ID="Label5" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="From"></asp:Label>
                </td>
                <td style="width: 265px">
                    <asp:TextBox runat="server" Font-Names="Arial" Font-Size="12px" Height="16px" Width="115px"
                        ID="txtcaseFrm" ReadOnly="True"></asp:TextBox>
                    &nbsp;<asp:Label ID="Label168" runat="server" Font-Names="Arial" Font-Size="12px"
                        ForeColor="Black" Text="To"></asp:Label>
                    <asp:CalendarExtender ID="calex" runat="server" TargetControlID="txtcaseFrm">
                    </asp:CalendarExtender>
                    &nbsp;<asp:TextBox runat="server" Font-Names="Arial" Font-Size="12px" Height="16px"
                        Width="115px" ID="txtcaseTo" ReadOnly="True"></asp:TextBox>
                    <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtcaseTo">
                    </asp:CalendarExtender>
                </td>
                <td>
                    <asp:ImageButton ID="cmdSearch" runat="server" Height="25px" ImageUrl="~/images/Buttons/search.gif"
                        Width="75px" />
                </td>
            </tr>
        </table>
        <table style="width: 100%; height: 20px;">
            <tr>
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 59px">
                    <asp:Label ID="Label169" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Case Title"></asp:Label>
                </td>
                <td style="width: 194px">
                    <asp:TextBox runat="server" Font-Names="Arial" Height="16px" Width="184px" ID="txtCaseTitle"></asp:TextBox>
                </td>
                <td style="width: 72px">
                    <asp:Label ID="Label8" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                        Text="Resource ID"></asp:Label>
                </td>
                <td style="width: 369px">
                    <asp:TextBox runat="server" Font-Names="Arial" Height="16px" Width="99px" ID="txtResourceID"></asp:TextBox>
                    <asp:ImageButton ID="cmdBrowse" runat="server" Height="16px" ImageUrl="~/images/searchlens.jpg"
                        Width="20px" />
                    &nbsp;<asp:Label ID="Label170" runat="server" Font-Names="Arial" Font-Size="12px"
                        ForeColor="Black" Text="Name"></asp:Label>
                    &nbsp;<asp:TextBox runat="server" Font-Names="Arial" Height="16px" Width="169px"
                        ID="txtName"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
        <table style="width: 100%; height: 146px;">
            <tr>
                <td style="width: 15px">
                </td>
                <td style="width: 610px">
                    <asp:Panel ID="panelGrid" runat="server" BackColor="#666666" BorderColor="Black"
                        BorderStyle="Solid" BorderWidth="2px" Height="126px" Width="662px" Visible="False">
                        <asp:GridView ID="dgridChildren0" runat="server" AutoGenerateColumns="False" BackColor="White"
                            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black"
                            GridLines="Vertical" Height="130px" Width="663px">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:BoundField HeaderText="Case No." />
                                <asp:BoundField HeaderText="Disciplinary Type" />
                                <asp:BoundField HeaderText="Report Date" />
                                <asp:BoundField HeaderText="Branch" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Height="14px" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        </asp:GridView>
                    </asp:Panel>
                </td>
                <td style="width: 28px">
                    &nbsp;
                </td>
            </tr>
        </table>
        <table style="width: 100%; height: 115px;">
            <tr>
                <td style="width: 38px">
                    &nbsp;
                </td>
                <td rowspan="3" style="width: 634px">
                    <asp:Panel ID="panelCase" runat="server" Height="127px" Width="615px">
                        <table style="border: 1px solid #000000; width: 101%; height: 100px;">
                            <tr>
                                <td style="width: 12px">
                                    &nbsp;
                                </td>
                                <td style="width: 105px">
                                    &nbsp;
                                </td>
                                <td style="width: 134px">
                                    &nbsp;
                                </td>
                                <td style="width: 92px">
                                    &nbsp;
                                </td>
                                <td style="width: 103px">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 12px">
                                    &nbsp;
                                </td>
                                <td style="width: 105px">
                                    &nbsp;
                                    <asp:Label ID="Label171" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                        Text="Case No."></asp:Label>
                                </td>
                                <td style="width: 134px">
                                    <asp:TextBox runat="server" Font-Names="Arial" Height="16px" Width="159px" ID="txtCnum"></asp:TextBox>
                                    <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" TargetControlID="txtCnum"
                                        FilterType="Numbers">
                                    </asp:FilteredTextBoxExtender>
                                </td>
                                <td style="width: 92px">
                                    <asp:Label ID="Label175" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                        Text="Reported Date"></asp:Label>
                                </td>
                                <td style="width: 103px">
                                    <asp:TextBox runat="server" Font-Names="Arial" Height="16px" Width="159px" ID="txtReportedDate"
                                        ReadOnly="True"></asp:TextBox>
                                    <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txtReportedDate">
                                    </asp:CalendarExtender>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 12px">
                                    &nbsp;
                                </td>
                                <td style="width: 105px">
                                    &nbsp;
                                    <asp:Label ID="Label172" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                        Text="Case Title"></asp:Label>
                                </td>
                                <td style="width: 134px">
                                    <asp:TextBox runat="server" Font-Names="Arial" Height="16px" Width="159px" ID="txtCTitle"></asp:TextBox>
                                </td>
                                <td style="width: 92px">
                                    <asp:Label ID="Label176" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                        Text="Resource"></asp:Label>
                                </td>
                                <td style="width: 103px">
                                    <asp:TextBox runat="server" Font-Names="Arial" Height="16px" Width="159px" ID="txtResource"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 12px">
                                    &nbsp;
                                </td>
                                <td style="width: 105px">
                                    &nbsp;
                                    <asp:Label ID="Label173" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                        Text="Disciplinary Type"></asp:Label>
                                </td>
                                <td style="width: 134px">
                                    <asp:TextBox runat="server" Font-Names="Arial" Height="16px" Width="159px" ID="txtDispType"></asp:TextBox>
                                </td>
                                <td style="width: 92px">
                                    <asp:Label ID="Label177" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                        Text="Manager"></asp:Label>
                                </td>
                                <td style="width: 103px">
                                    <asp:TextBox runat="server" Font-Names="Arial" Height="16px" Width="159px" ID="txtManager"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 12px">
                                    &nbsp;
                                </td>
                                <td style="width: 105px">
                                    &nbsp;
                                    <asp:Label ID="Label174" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                        Text="Value"></asp:Label>
                                </td>
                                <td style="width: 134px">
                                    <asp:TextBox runat="server" Font-Names="Arial" Height="16px" Width="159px" ID="txtValue"></asp:TextBox>
                                </td>
                                <td style="width: 92px">
                                    <asp:Label ID="Label178" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                        Text="BC"></asp:Label>
                                </td>
                                <td style="width: 103px">
                                    <asp:TextBox runat="server" Font-Names="Arial" Height="16px" Width="159px" ID="txtBC"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 12px">
                                    &nbsp;
                                </td>
                                <td style="width: 105px">
                                    &nbsp;
                                </td>
                                <td style="width: 134px">
                                    &nbsp;
                                </td>
                                <td style="width: 92px">
                                    <asp:Label ID="Label179" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Black"
                                        Text="Status"></asp:Label>
                                </td>
                                <td style="width: 103px">
                                    <asp:TextBox runat="server" Font-Names="Arial" Height="16px" Width="159px" ID="txtStatus"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 12px">
                                    &nbsp;
                                </td>
                                <td style="width: 105px">
                                    &nbsp;
                                </td>
                                <td style="width: 134px">
                                    &nbsp;
                                </td>
                                <td style="width: 92px">
                                    &nbsp;
                                </td>
                                <td style="width: 103px">
                                    &nbsp;
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 38px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 38px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
        <br />
        &nbsp;
        <br />
        &nbsp;&nbsp;
        <asp:Label ID="Label180" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="12px"
            Text="Attachments" ForeColor="Black"></asp:Label>
        <table style="width: 100%; height: 115px;">
            <tr>
                <td style="width: 38px">
                    &nbsp;
                </td>
                <td rowspan="3" style="width: 620px">
                    <asp:Panel ID="panelAttach" runat="server" Height="109px">
                        <table style="border: 1px solid #000000; width: 100%; height: 105px;">
                            <tr>
                                <td style="width: 12px">
                                    &nbsp;
                                </td>
                                <td style="width: 188px">
                                    &nbsp;
                                </td>
                                <td style="width: 31px">
                                    &nbsp;
                                </td>
                                <td style="width: 157px">
                                    &nbsp;
                                </td>
                                <td style="width: 257px">
                                    &nbsp;
                                </td>
                                <td style="width: 103px">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 12px">
                                    &nbsp;
                                </td>
                                <td style="width: 188px">
                                    &nbsp;
                                    <asp:Label ID="Label181" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Blue"
                                        Text="IR" Font-Italic="True" Font-Underline="True"></asp:Label>
                                </td>
                                <td style="width: 31px">
                                    &nbsp;
                                </td>
                                <td style="width: 157px">
                                    &nbsp;
                                </td>
                                <td style="width: 257px">
                                    <asp:Label ID="Label182" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Blue"
                                        Text="Notice of Admin Hearing" Font-Italic="True" Font-Underline="True"></asp:Label>
                                </td>
                                <td style="width: 103px">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 12px">
                                    &nbsp;
                                </td>
                                <td style="width: 188px">
                                    &nbsp;
                                    <asp:Label ID="Label183" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Blue"
                                        Text="AEF" Font-Italic="True" Font-Underline="True"></asp:Label>
                                </td>
                                <td style="width: 31px">
                                    &nbsp;
                                </td>
                                <td style="width: 157px">
                                    &nbsp;
                                </td>
                                <td style="width: 257px">
                                    <asp:Label ID="Label184" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Blue"
                                        Text="Minutes of Admin Hearing" Font-Italic="True" Font-Underline="True"></asp:Label>
                                </td>
                                <td style="width: 103px">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 12px">
                                    &nbsp;
                                </td>
                                <td style="width: 188px">
                                    &nbsp;
                                    <asp:Label ID="Label185" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Blue"
                                        Text="Inquiry/Show Cause Memo" Font-Italic="True" Font-Strikeout="False" Font-Underline="True"></asp:Label>
                                </td>
                                <td style="width: 31px">
                                    &nbsp;
                                </td>
                                <td style="width: 157px">
                                    &nbsp;
                                </td>
                                <td style="width: 257px">
                                    <asp:Label ID="Label186" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Blue"
                                        Text="Recommendation by AM noted by RM" Font-Italic="True" Font-Underline="True"></asp:Label>
                                </td>
                                <td style="width: 103px">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 12px">
                                    &nbsp;
                                </td>
                                <td style="width: 188px">
                                    &nbsp;
                                    <asp:Label ID="Label187" runat="server" Font-Names="Arial" Font-Size="12px" ForeColor="Blue"
                                        Text="Written Reply" Font-Italic="True" Font-Underline="True"></asp:Label>
                                </td>
                                <td style="width: 31px">
                                    &nbsp;
                                </td>
                                <td style="width: 157px">
                                    &nbsp;
                                </td>
                                <td style="width: 257px">
                                    &nbsp;
                                </td>
                                <td style="width: 103px">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 12px">
                                    &nbsp;
                                </td>
                                <td style="width: 188px">
                                    &nbsp;
                                </td>
                                <td style="width: 31px">
                                    &nbsp;
                                </td>
                                <td style="width: 157px">
                                    &nbsp;
                                </td>
                                <td style="width: 257px">
                                    &nbsp;
                                </td>
                                <td style="width: 103px">
                                    &nbsp;
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 38px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 38px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
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
            <td style="width: 568px">
                <asp:Label ID="lblheader" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="DodgerBlue" Text="HRMD &gt; Records &gt; Documents &gt; HRMD Documents ">
                </asp:Label>
                <asp:Label ID="lblheader2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Black" Text="&gt; Discipline" Font-Underline="True">
                </asp:Label>
            </td>
            <td style="text-align: right">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Gray" Text="View Access"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
