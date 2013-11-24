<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/HRMasterPage.master"
    AutoEventWireup="false" CodeFile="recPerEvaluation2.aspx.vb" Inherits="recHRMDinfo_Evaluation_recPerEvaluation2"
    Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="width: 195px; height: 374px;">
        <div style="height: 68px">
            <ul style="list-style: none;">
                <li class="label"><a class="name">Evaluation</a></li></ul>
            <br />
            <ul style="list-style: none;">
                <li class="effects2"><a style="color: red; font-size: small;">
                    <asp:Label ID="Label2" runat="server" Text="> Performance Evaluation" Height="16px"
                        Width="177px"></asp:Label></a><br />
                    <asp:Image ImageAlign="Right" ID="imgpersonalline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
                        Width="170px" /><br />
                </li>
            </ul>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div unselectable="off">
        <table style="width: 100%; height: 420px;">
            <tr>
                <td style="width: 14px">
                    &nbsp;
                </td>
                <td style="width: 743px">
                    <asp:Panel ID="panelDisplay" runat="server" Height="415px" Width="735px" 
                        HorizontalAlign="Center" ScrollBars="Vertical">
                        <asp:Panel ID="pnlperformance" runat="server" Height="1700px" Width="690px" 
                            HorizontalAlign=Left BackColor="White" ForeColor="Red" BorderColor="Black" 
                            BorderStyle="Solid" BorderWidth="1px">
                            <asp:Image ID="mllogo" runat="server" Height="59px" ImageAlign="Right" 
                                ImageUrl="~/images/mllogo.jpg" Width="221px" />
                            <br />
                            <br />
                            <br />
                            &nbsp;&nbsp;
                            <asp:Label ID="lblpereval" runat="server" Font-Bold="True" Font-Names="Arial" 
                                Font-Size="11px" ForeColor="Black" Text="Performance Evaluation Factor"></asp:Label>
                            <br />
                            ___________________________________________________________________________________________________________________<br />
                            <br />
                            <br />
                            <br />
                            &nbsp;&nbsp;
                            <table width=100%>
                                <tr>
                                <td style="width: 17px"></td>
                                    <td style="width: 502px">
                                        <asp:Label ID="lblq1" runat="server" Font-Bold="True" Font-Names="Arial" 
                                            Font-Size="10px" ForeColor="Black" Height="16px" Width="494px"></asp:Label>
                                    </td>
                                    <td align="center">
                                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Arial" 
                                            Font-Size="10px" ForeColor="Black" Text="Rating:"></asp:Label>
                                        &nbsp;<asp:Label ID="lblr1" runat="server"></asp:Label>
                                        &nbsp;=
                                        <asp:Label ID="pts1" runat="server"></asp:Label>
                                        <asp:Label ID="points1" runat="server" ForeColor="Black">pts</asp:Label>
                                    </td>
                                </tr>
                            </table>
                            
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblquestion1" runat="server" Height="16px" Width="612px"></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="9px" 
                                ForeColor="Black" Text="Reason "></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtreason1" runat="server" Height="44px" TextMode="MultiLine" 
                                Width="581px"></asp:TextBox>
                            <br />
                            &nbsp;&nbsp;
                            <table width="100%">
                                <tr>
                                <td style="width: 17px"></td>
                                    <td style="width: 502px">
                                        <asp:Label ID="lblq2" runat="server" Font-Bold="True" Font-Names="Arial" 
                                            Font-Size="10px" ForeColor="Black" Height="16px" Width="494px"></asp:Label>
                                    </td>
                                    <td align="center">
                                        <asp:Label ID="lblrating" runat="server" Font-Bold="True" Font-Names="Arial" 
                                            Font-Size="10px" ForeColor="Black" Text="Rating:"></asp:Label>
                                        &nbsp;<asp:Label ID="lblr2" runat="server"></asp:Label>
                                        &nbsp;=
                                        <asp:Label ID="pts2" runat="server"></asp:Label>
                                        <asp:Label ID="points2" runat="server" ForeColor="Black">pts</asp:Label>
                                    </td>
                                </tr>
                            </table>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblquestion2" runat="server" Width="614px" Height="16px"></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="9px" 
                                ForeColor="Black" Text="Reason "></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtreason2" runat="server" Height="44px" TextMode="MultiLine" 
                                Width="581px"></asp:TextBox>
                            <br />
                            &nbsp;&nbsp;
                            <table width=100%>
                                <tr>
                                <td style="width: 17px"></td>
                                    <td style="width: 502px">
                                        <asp:Label ID="lblq3" runat="server" Font-Bold="True" Font-Names="Arial" 
                                            Font-Size="10px" ForeColor="Black" Height="16px" Width="494px"></asp:Label>
                                    </td>
                                    <td align=center>
                                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Arial" 
                                            Font-Size="10px" ForeColor="Black" Text="Rating:"></asp:Label>
                                        &nbsp;<asp:Label ID="lblr3" runat="server"></asp:Label>
                                        &nbsp;=
                                        <asp:Label ID="pts3" runat="server"></asp:Label>
                                        <asp:Label ID="points3" runat="server" ForeColor="Black">pts</asp:Label>
                                    </td>
                                </tr>
                            </table>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblquestion3" runat="server" Width="613px"></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="9px" 
                                ForeColor="Black" Text="Reason "></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtreason3" runat="server" Height="44px" TextMode="MultiLine" 
                                Width="581px"></asp:TextBox>
                            <br />
                            &nbsp;&nbsp;
                            <table width=100%>
                                <tr>
                                <td style="width: 17px"></td>
                                    <td style="width: 502px">
                                        <asp:Label ID="lblq4" runat="server" Font-Bold="True" Font-Names="Arial" 
                                            Font-Size="10px" ForeColor="Black" Height="16px" Width="494px"></asp:Label>
                                    </td>
                                    <td align=center>
                                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Arial" 
                                            Font-Size="10px" ForeColor="Black" Text="Rating:"></asp:Label>
                                        &nbsp;<asp:Label ID="lblr4" runat="server"></asp:Label>
                                        &nbsp;=
                                        <asp:Label ID="pts4" runat="server"></asp:Label>
                                        <asp:Label ID="points4" runat="server" ForeColor="Black">pts</asp:Label>
                                    </td>
                                </tr>
                            </table>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblquestion4" runat="server" Width="574px"></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="9px" 
                                ForeColor="Black" Text="Reason "></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtreason4" runat="server" Height="44px" TextMode="MultiLine" 
                                Width="581px"></asp:TextBox>
                            <br />
                            &nbsp;&nbsp;
                            <table width=100%>
                                <tr>
                                <td style="width: 17px"></td>
                                    <td style="width: 502px">
                                        <asp:Label ID="lblq5" runat="server" Font-Bold="True" Font-Names="Arial" 
                                            Font-Size="10px" ForeColor="Black" Height="16px" Width="494px"></asp:Label>
                                    </td>
                                    <td align=center>
                                        <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Arial" 
                                            Font-Size="10px" ForeColor="Black" Text="Rating:"></asp:Label>
                                        &nbsp;<asp:Label ID="lblr5" runat="server"></asp:Label>
                                        &nbsp;=
                                        <asp:Label ID="pts5" runat="server"></asp:Label>
                                        <asp:Label ID="points5" runat="server" ForeColor="Black">pts</asp:Label>
                                    </td>
                                </tr>
                            </table>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblquestion5" runat="server" Width="574px"></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="9px" 
                                ForeColor="Black" Text="Reason "></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtreason5" runat="server" Height="44px" TextMode="MultiLine" 
                                Width="581px"></asp:TextBox>
                            &nbsp;
                            <br />
                            &nbsp;&nbsp;
                            <table width=100%>
                                <tr>
                                <td style="width: 17px"></td>
                                    <td style="width: 502px">
                                        <asp:Label ID="lblq6" runat="server" Font-Bold="True" Font-Names="Arial" 
                                            Font-Size="10px" ForeColor="Black" Height="16px" Width="494px"></asp:Label>
                                    </td>
                                    <td align=center>
                                        <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Arial" 
                                            Font-Size="10px" ForeColor="Black" Text="Rating:"></asp:Label>
                                        &nbsp;<asp:Label ID="lblr6" runat="server"></asp:Label>
                                        &nbsp;=
                                        <asp:Label ID="pts6" runat="server"></asp:Label>
                                        <asp:Label ID="points6" runat="server" ForeColor="Black">pts</asp:Label>
                                    </td>
                                </tr>
                            </table>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblquestion6" runat="server" Width="574px"></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Size="9px" 
                                ForeColor="Black" Text="Reason "></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtreason6" runat="server" Height="44px" TextMode="MultiLine" 
                                Width="581px"></asp:TextBox>
                            &nbsp;
                            <br />
                            &nbsp;&nbsp;
                           <table width=100%>
                                <tr>
                                <td style="width: 17px"></td>
                                    <td style="width: 502px">
                                        <asp:Label ID="lblq7" runat="server" Font-Bold="True" Font-Names="Arial" 
                                            Font-Size="10px" ForeColor="Black" Height="16px" Width="494px"></asp:Label>
                                    </td>
                                    <td align=center>
                                        <asp:Label ID="rating7" runat="server" Font-Bold="True" Font-Names="Arial" 
                                            Font-Size="10px" ForeColor="Black" Text="Rating:"></asp:Label>
                                        &nbsp;<asp:Label ID="lblr7" runat="server"></asp:Label>
                                        &nbsp;=
                                        <asp:Label ID="pts7" runat="server"></asp:Label>
                                        <asp:Label ID="points7" runat="server" ForeColor="Black">pts</asp:Label>
                                    </td>
                                </tr>
                            </table>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblquestion7" runat="server" Width="574px"></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label26" runat="server" Font-Bold="True" Font-Size="9px" 
                                ForeColor="Black" Text="Reason "></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtreason7" runat="server" Height="44px" TextMode="MultiLine" 
                                Width="581px"></asp:TextBox>
                            &nbsp;
                            <br />
                            &nbsp;&nbsp;
                           <table width=100%>
                                <tr>
                                <td style="width: 17px"></td>
                                    <td style="width: 502px">
                                        <asp:Label ID="lblq8" runat="server" Font-Bold="True" Font-Names="Arial" 
                                            Font-Size="10px" ForeColor="Black" Height="16px" Width="494px"></asp:Label>
                                    </td>
                                    <td align=center>
                                        <asp:Label ID="rating8" runat="server" Font-Bold="True" Font-Names="Arial" 
                                            Font-Size="10px" ForeColor="Black" Text="Rating:"></asp:Label>
                                        &nbsp;<asp:Label ID="lblr8" runat="server"></asp:Label>
                                        &nbsp;=
                                        <asp:Label ID="pts8" runat="server"></asp:Label>
                                        <asp:Label ID="points8" runat="server" ForeColor="Black">pts</asp:Label>
                                    </td>
                                </tr>
                            </table>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblquestion8" runat="server" Width="574px"></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label33" runat="server" Font-Bold="True" Font-Size="9px" 
                                ForeColor="Black" Text="Reason "></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtreason8" runat="server" Height="44px" TextMode="MultiLine" 
                                Width="581px"></asp:TextBox>
                            &nbsp;
                            <br />
                            &nbsp;&nbsp;
                           <table width=100%>
                                <tr>
                                <td style="width: 17px"></td>
                                    <td style="width: 502px">
                                        <asp:Label ID="lblq9" runat="server" Font-Bold="True" Font-Names="Arial" 
                                            Font-Size="10px" ForeColor="Black" Height="16px" Width="494px"></asp:Label>
                                    </td>
                                    <td align=center>
                                        <asp:Label ID="rating9" runat="server" Font-Bold="True" Font-Names="Arial" 
                                            Font-Size="10px" ForeColor="Black" Text="Rating:"></asp:Label>
                                        &nbsp;<asp:Label ID="lblr9" runat="server"></asp:Label>
                                        &nbsp;=
                                        <asp:Label ID="pts9" runat="server"></asp:Label>
                                        <asp:Label ID="points9" runat="server" ForeColor="Black">pts</asp:Label>
                                    </td>
                                </tr>
                            </table>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblquestion9" runat="server" Width="574px"></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label40" runat="server" Font-Bold="True" Font-Size="9px" 
                                ForeColor="Black" Text="Reason "></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtreason9" runat="server" Height="44px" TextMode="MultiLine" 
                                Width="581px"></asp:TextBox>
                            &nbsp;
                            <br />
                            &nbsp;&nbsp;
                            <table width=100%>
                                <tr>
                                <td style="width: 17px"></td>
                                    <td style="width: 502px">
                                        <asp:Label ID="lblq10" runat="server" Font-Bold="True" Font-Names="Arial" 
                                            Font-Size="10px" ForeColor="Black" Height="16px" Width="494px"></asp:Label>
                                    </td>
                                    <td align=center>
                                        <asp:Label ID="rating10" runat="server" Font-Bold="True" Font-Names="Arial" 
                                            Font-Size="10px" ForeColor="Black" Text="Rating:"></asp:Label>
                                        &nbsp;<asp:Label ID="lblr10" runat="server"></asp:Label>
                                        &nbsp;=
                                        <asp:Label ID="pts10" runat="server"></asp:Label>
                                        <asp:Label ID="points10" runat="server" ForeColor="Black">pts</asp:Label>
                                    </td>
                                </tr>
                            </table>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblquestion10" runat="server" Width="574px"></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label47" runat="server" Font-Bold="True" Font-Size="9px" 
                                ForeColor="Black" Text="Reason "></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtreason10" runat="server" Height="44px" TextMode="MultiLine" 
                                Width="581px"></asp:TextBox>
                            &nbsp;
                            <br />
                            &nbsp;&nbsp;
                           <table width=100%>
                                <tr>
                                <td style="width: 17px"></td>
                                    <td style="width: 502px">
                                        <asp:Label ID="lblq11" runat="server" Font-Bold="True" Font-Names="Arial" 
                                            Font-Size="10px" ForeColor="Black" Height="16px" Width="494px"></asp:Label>
                                    </td>
                                    <td align=center>
                                        <asp:Label ID="rating11" runat="server" Font-Bold="True" Font-Names="Arial" 
                                            Font-Size="10px" ForeColor="Black" Text="Rating:"></asp:Label>
                                        &nbsp;<asp:Label ID="lblr11" runat="server"></asp:Label>
                                        &nbsp;=
                                        <asp:Label ID="pts11" runat="server"></asp:Label>
                                        <asp:Label ID="points11" runat="server" ForeColor="Black">pts</asp:Label>
                                    </td>
                                </tr>
                            </table>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblquestion11" runat="server" Width="574px"></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label54" runat="server" Font-Bold="True" Font-Size="9px" 
                                ForeColor="Black" Text="Reason "></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtreason11" runat="server" Height="44px" TextMode="MultiLine" 
                                Width="581px"></asp:TextBox>
                            &nbsp;
                            <br />
                            &nbsp;&nbsp;
                            <table width=100%>
                                <tr>
                                <td style="width: 17px"></td>
                                    <td style="width: 502px">
                                        <asp:Label ID="lblq12" runat="server" Font-Bold="True" Font-Names="Arial" 
                                            Font-Size="10px" ForeColor="Black" Height="16px" Width="494px"></asp:Label>
                                    </td>
                                    <td align=center>
                                        <asp:Label ID="rating12" runat="server" Font-Bold="True" Font-Names="Arial" 
                                            Font-Size="10px" ForeColor="Black" Text="Rating:"></asp:Label>
                                        &nbsp;<asp:Label ID="lblr12" runat="server"></asp:Label>
                                        &nbsp;=
                                        <asp:Label ID="pts12" runat="server"></asp:Label>
                                        <asp:Label ID="points12" runat="server" ForeColor="Black">pts</asp:Label>
                                    </td>
                                </tr>
                            </table>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblquestion12" runat="server" Width="574px"></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label61" runat="server" Font-Bold="True" Font-Size="9px" 
                                ForeColor="Black" Text="Reason "></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtreason12" runat="server" Height="44px" TextMode="MultiLine" 
                                Width="581px"></asp:TextBox>
                            &nbsp;
                            <br />
                            &nbsp;&nbsp;
                           <table width=100%>
                                <tr>
                                <td style="width: 17px"></td>
                                    <td style="width: 502px">
                                        <asp:Label ID="lblq13" runat="server" Font-Bold="True" Font-Names="Arial" 
                                            Font-Size="10px" ForeColor="Black" Height="16px" Width="494px"></asp:Label>
                                    </td>
                                    <td align=center>
                                        <asp:Label ID="rating13" runat="server" Font-Bold="True" Font-Names="Arial" 
                                            Font-Size="10px" ForeColor="Black" Text="Rating:"></asp:Label>
                                        &nbsp;<asp:Label ID="lblr13" runat="server"></asp:Label>
                                        &nbsp;=
                                        <asp:Label ID="pts13" runat="server"></asp:Label>
                                        <asp:Label ID="points13" runat="server" ForeColor="Black">pts</asp:Label>
                                    </td>
                                </tr>
                            </table>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblquestion13" runat="server" Width="574px"></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label68" runat="server" Font-Bold="True" Font-Size="9px" 
                                ForeColor="Black" Text="Reason "></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtreason13" runat="server" Height="44px" TextMode="MultiLine" 
                                Width="581px"></asp:TextBox>
                            &nbsp;
                            <br />
                            &nbsp;&nbsp;
                            <table width=100%>
                                <tr>
                                <td style="width: 17px"></td>
                                    <td style="width: 502px">
                                        <asp:Label ID="lblq14" runat="server" Font-Bold="True" Font-Names="Arial" 
                                            Font-Size="10px" ForeColor="Black" Height="16px" Width="494px"></asp:Label>
                                    </td>
                                    <td align=center>
                                        <asp:Label ID="rating14" runat="server" Font-Bold="True" Font-Names="Arial" 
                                            Font-Size="10px" ForeColor="Black" Text="Rating:" Visible=false></asp:Label>
                                        &nbsp;<asp:Label ID="lblr14" runat="server" Visible=false></asp:Label>
                                        &nbsp;<asp:Label ID="eq14" runat="server" ForeColor="red" Visible=false Text="="></asp:Label>
                                        <asp:Label ID="pts14" runat="server" Visible=false></asp:Label>
                                        <asp:Label ID="points14" runat="server" ForeColor="Black" Visible=false>pts</asp:Label>
                                    </td>
                                </tr>
                            </table>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblquestion14" runat="server" Width="574px" Visible="False"></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblres14" runat="server" Font-Bold="True" Font-Size="9px" 
                                ForeColor="Black" Text="Reason " Visible="False"></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtreason14" runat="server" Height="44px" TextMode="MultiLine" 
                                Width="581px" Visible="False"></asp:TextBox>
                            &nbsp;
                            <br />
                            &nbsp;&nbsp;
                            <table width=100%>
                                <tr>
                                <td style="width: 17px"></td>
                                    <td style="width: 502px">
                                        <asp:Label ID="lblq15" runat="server" Font-Bold="True" Font-Names="Arial" 
                                            Font-Size="10px" ForeColor="Black" Height="16px" Width="494px"></asp:Label>
                                    </td>
                                    <td align=center>
                                       <asp:Label ID="rating15" runat="server" Font-Bold="True" Font-Names="Arial" 
                                            Font-Size="10px" ForeColor="Black" Text="Rating:" Visible=false></asp:Label>
                                        &nbsp;<asp:Label ID="lblr15" runat="server" Visible=false></asp:Label>
                                        &nbsp;<asp:Label ID="eq15" runat="server" ForeColor="red" Visible=false Text="="></asp:Label>
                                        <asp:Label ID="pts15" runat="server" Visible=false></asp:Label>
                                        <asp:Label ID="points15" runat="server" ForeColor="Black" Visible=false>pts</asp:Label>
                                    </td>
                                </tr>
                            </table>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblquestion15" runat="server" Width="574px" Visible="False"></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblres15" runat="server" Font-Bold="True" Font-Size="9px" 
                                ForeColor="Black" Text="Reason " Visible="False"></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtreason15" runat="server" Height="44px" TextMode="MultiLine" 
                               Width="581px" Visible="False"></asp:TextBox>
                            &nbsp;
                            <br />
                            &nbsp;&nbsp;
                            <table width=100%>
                                <tr>
                                <td style="width: 17px"></td>
                                    <td style="width: 502px">
                                        <asp:Label ID="lblq16" runat="server" Font-Bold="True" Font-Names="Arial" 
                                            Font-Size="10px" ForeColor="Black" Height="16px" Width="494px" Visible=false></asp:Label>
                                    </td>
                                    <td align=center>
                                        <asp:Label ID="rating16" runat="server" Font-Bold="True" Font-Names="Arial" 
                                            Font-Size="10px" ForeColor="Black" Text="Rating:" Visible=false></asp:Label>
                                        &nbsp;<asp:Label ID="lblr16" runat="server" Visible=false></asp:Label>
                                        &nbsp;<asp:Label ID="eq16" runat="server" ForeColor="red" Visible=false Text="="></asp:Label>
                                        <asp:Label ID="pts16" runat="server" Visible=false></asp:Label>
                                        <asp:Label ID="points16" runat="server" ForeColor="Black" Visible=false>pts</asp:Label>
                                    </td>
                                </tr>
                            </table>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblquestion16" runat="server" Width="574px" Visible="False"></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblres16" runat="server" Font-Bold="True" Font-Size="9px" 
                                ForeColor="Black" Text="Reason " Visible="False"></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtreason16" runat="server" Height="44px" TextMode="MultiLine" 
                                Width="581px" Visible="False"></asp:TextBox>
                            &nbsp;</asp:Panel>
                    </asp:Panel>
                </td>
                <td>
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
                <td style="width: 358px">
                    &nbsp;
                </td>
                <td style="width: 126px">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
                <td style="width: 71px">
                    <asp:ImageButton ID="cmdBack" runat="server" Height="25px" ImageUrl="~/images/buttons/Back.gif"
                        Width="75px" Visible="False" />
                </td>
                <td style="width: 65px">
                    <asp:ImageButton ID="cmdNext" runat="server" Height="25px" ImageUrl="~/images/Buttons/Next.gif"
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
            <td style="width: 597px">
                <asp:Label ID="lblheader" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="DodgerBlue" Text="HRMD &gt; Records &gt; Evaluation ">
                </asp:Label>
                <asp:Label ID="lblheader2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Black" Text="&gt; Performanc Evaluation" Font-Underline="True">
                </asp:Label>
            </td>
            <td style="text-align: right">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial"
                    Font-Size="13px" ForeColor="Gray" Text="View Access"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
