<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/DisciplineMasterPage.master"
    AutoEventWireup="false" CodeFile="disReceiveApplication2.aspx.vb" Inherits="DisDiscipline_disCaseApplication"
    Title="Untitled Page" %>

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
    <asp:Panel runat="server" ID="pnlrecapplication2" Width="99%" Height="479px" ScrollBars="Vertical">
        <table style="width: 100%;" align="right">
            <tr>
                <td style="width: 102px">
                    <asp:Label ID="lblappno" runat="server" Font-Names="Arial" Font-Size="Small" ForeColor="Black"
                        Text="Applicant No."></asp:Label>
                </td>
                <td style="width: 184px">
                    <asp:TextBox ID="TextBox1" runat="server" Width="193px" BackColor="#D4D0C8"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                </td>
                <td style="width: 90px">
                    <asp:Label ID="lblrepdate" runat="server" Font-Names="Arial" Font-Size="Small" ForeColor="Black"
                        Text="Report Date"></asp:Label>
                </td>
                <td style="width: 244px">
                    <asp:TextBox ID="TextBox4" runat="server" Width="193px" BackColor="#D4D0C8"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 102px">
                    <asp:Label ID="lbldistype" runat="server" Font-Names="Arial" Font-Size="Small" ForeColor="Black"
                        Text="Disciplinary Type"></asp:Label>
                </td>
                <td style="width: 184px">
                    <asp:TextBox ID="TextBox2" runat="server" Width="193px" BackColor="#D4D0C8"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                </td>
                <td style="width: 90px">
                    <asp:Label ID="lblres" runat="server" Font-Names="Arial" Font-Size="Small" ForeColor="Black"
                        Text="Resource"></asp:Label>
                </td>
                <td style="width: 244px">
                    <asp:TextBox ID="TextBox5" runat="server" Width="193px" BackColor="#D4D0C8"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 102px">
                    <asp:Label ID="lblvalue" runat="server" Font-Names="Arial" Font-Size="Small" ForeColor="Black"
                        Text="Value"></asp:Label>
                </td>
                <td style="width: 184px">
                    <asp:TextBox ID="TextBox3" runat="server" Width="193px" BackColor="#D4D0C8"></asp:TextBox>
                </td>
                <td>
                    &nbsp;
                </td>
                <td style="width: 90px">
                    <asp:Label ID="lblmanager" runat="server" Font-Names="Arial" Font-Size="Small" ForeColor="Black"
                        Text="Manager"></asp:Label>
                </td>
                <td style="width: 244px">
                    <asp:TextBox ID="TextBox6" runat="server" Width="193px" BackColor="#D4D0C8"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 102px">
                    &nbsp;
                </td>
                <td style="width: 184px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
                <td style="width: 90px">
                    <asp:Label ID="lblbc" runat="server" Font-Names="Arial" Font-Size="Small" ForeColor="Black"
                        Text="BC"></asp:Label>
                </td>
                <td style="width: 244px">
                    <asp:TextBox ID="TextBox8" runat="server" Width="193px" BackColor="#D4D0C8"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <table style="width: 100%;">
            <tr>
                <td style="width: 39px">
                </td>
                <td style="width: 353px">
                    <asp:Label ID="lbldesc" runat="server" Font-Names="Arial" Font-Size="Small" Text="Description"
                        ForeColor="Black"></asp:Label>
                </td>
                <td style="width: 87px" align="right">
                    <asp:Label ID="lblattach" runat="server" Font-Names="Arial" Font-Size="Small" ForeColor="Black"
                        Text="Attachment"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 39px; height: 61px;">
                </td>
                <td style="width: 353px; height: 61px;" align="right">
                    <asp:TextBox ID="TextBox7" runat="server" Width="352px" Height="66px" TextMode="MultiLine"
                        Font-Names="Arial" Font-Size="Small" BackColor="#D4D0C8"></asp:TextBox>
                </td>
                <td style="width: 87px; height: 61px;">
                </td>
                <td rowspan="3">
                    <table style="width: 96%;">
                        <tr>
                            <td>
                                <asp:Label ID="lblir" runat="server" Font-Names="Arial" Font-Size="Small" Text="- IR"
                                    ForeColor="Black"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblaef" runat="server" Font-Names="Arial" Font-Size="Small" Text="- AEF"
                                    ForeColor="Black"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblinquiry" runat="server" Font-Names="Arial" Font-Size="Small" Text="- Inquiry/Show cause memo"
                                    ForeColor="Black"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblwritten" runat="server" Font-Names="Arial" Font-Size="Small" Text="- Written Reply"
                                    ForeColor="Black"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblnotice" runat="server" Font-Names="Arial" Font-Size="Small" Text="- Notice of Admin Hearing"
                                    ForeColor="Black"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblminutes" runat="server" Font-Names="Arial" Font-Size="Small" Text="- Minutes of Admin Hearing"
                                    ForeColor="Black"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 18px">
                                <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="Small" Text="- Recomendation by AM noted by RM"
                                    ForeColor="Black"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="width: 39px">
                </td>
                <td style="width: 353px">
                    <asp:Label ID="lblassess" runat="server" Font-Names="Arial" Font-Size="Small" Text="Immediate Head Assessment"
                        ForeColor="Black"></asp:Label>
                </td>
                <td style="width: 87px">
                </td>
            </tr>
            <tr>
                <td style="width: 39px">
                </td>
                <td style="width: 353px" align="right">
                    <asp:TextBox ID="TextBox9" runat="server" Width="351px" Height="68px" TextMode="MultiLine"
                        Font-Names="Arial" Font-Size="Small" BackColor="#D4D0C8"></asp:TextBox>
                </td>
                <td style="width: 87px">
                    <table style="width: 100%; height: 75px;">
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="lblcase" runat="server" Font-Names="Arial" Font-Size="Small" ForeColor="Black"
                                    Text="Case File"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="height: 117px; width: 39px;">
                </td>
                <td style="height: 117px">
                    <table style="width: 100%; height: 100px;">
                        <tr>
                            <td>
                                <asp:Label ID="lblhr" runat="server" Font-Names="Arial" Font-Size="Small" ForeColor="Black"
                                    Text="HRMD Assessment"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="TextBox10" runat="server" Font-Names="Arial" Font-Size="Small" Height="71px"
                                    TextMode="MultiLine" Width="351px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
                <td style="height: 117px;" align="center" colspan="2">
                    <asp:Panel ID="Panel1" runat="server" BackColor="Gray" Height="102px" Width="328px">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                            BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Overline="False"
                            GridLines="None" Height="29px" HorizontalAlign="Center" Width="331px">
                            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                            <Columns>
                                <asp:BoundField HeaderStyle-Height="25px" HeaderText="Date" ItemStyle-Height="20px"
                                    ItemStyle-Width="120px">
                                    <HeaderStyle BackColor="#999999" BorderColor="Black" VerticalAlign="Middle" />
                                    <ItemStyle BorderColor="Black" ForeColor="Black" Width="30px" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="Case No." ItemStyle-Width="120px">
                                    <HeaderStyle BackColor="#999999" BorderColor="Black" />
                                    <ItemStyle BorderColor="Black" Width="30px" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="Disciplinary Type" ItemStyle-Width="140px">
                                    <HeaderStyle BackColor="#999999" BorderColor="Black" />
                                    <ItemStyle BorderColor="Black" ForeColor="Black" Width="30px" />
                                </asp:BoundField>
                                <asp:BoundField HeaderText="Status" ItemStyle-Width="105px">
                                    <HeaderStyle BackColor="#999999" BorderColor="Black" />
                                    <ItemStyle BorderColor="Black" Width="30px" />
                                </asp:BoundField>
                            </Columns>
                            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <AlternatingRowStyle BackColor="#F7F7F7" />
                        </asp:GridView>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td style="height: 34px; width: 39px;">
                </td>
                <td rowspan="2">
                    <table style="width: 100%;">
                        <tr>
                            <td>
                                <asp:Label ID="lblcomments" runat="server" Font-Names="Arial" Font-Size="Small" ForeColor="Black"
                                    Text="Comment/s"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="TextBox11" runat="server" BackColor="#D4D0C8" Font-Names="Arial"
                                    Font-Size="Small" Height="48px" TextMode="MultiLine" Width="351px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="TextBox12" runat="server" Font-Names="Arial" Font-Size="Small" Height="47px"
                                    TextMode="MultiLine" Width="351px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
                <td style="height: 34px; width: 87px;">
                </td>
                <td style="height: 34px">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="height: 34px; width: 39px;">
                </td>
                <td style="height: 34px; width: 87px;">
                </td>
                <td style="height: 34px; text-align: justify;">
                    <table style="width: 100%; height: 1px;">
                        <tr style="height: 50px">
                            <td style="width: 72px">
                            </td>
                            <td style="width: 70px">
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 72px">
                                <asp:ImageButton ID="cmdpending" runat="server" Height="25px" ImageUrl="~/images/Buttons/Pending.gif"
                                    Width="75px" />
                            </td>
                            <td style="width: 70px">
                                <asp:ImageButton ID="cmdabsolve" runat="server" Height="25px" ImageUrl="~/images/Buttons/absolve.gif"
                                    Width="75px" />
                            </td>
                            <td>
                                <asp:ImageButton ID="cmdescalate" runat="server" Height="25px" ImageUrl="~/images/Buttons/escalate.gif"
                                    Width="75px" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
