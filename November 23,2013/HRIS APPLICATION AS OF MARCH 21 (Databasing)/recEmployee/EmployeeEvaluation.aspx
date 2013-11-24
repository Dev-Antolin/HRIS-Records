<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/EmployeeMasterPage.master"
    AutoEventWireup="false" CodeFile="EmployeeEvaluation.aspx.vb" Inherits="recEmployee_EmployeeEvaluation"
    Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div style="width: 195px;">
        <ul style="list-style: none;">
            <li class="label"><a class="name">Evaluation</a></li></ul>
        <br />
        <ul style="list-style: none;">
            <li class="effects2"><a style="color: Red; font-size: small;">
                <asp:Label ID="Label1" runat="server" Text="> Performance Evaluation" Height="16px"
                    Width="180px"></asp:Label>
            </a></li>
        </ul>
        <asp:Image ImageAlign="Right" ID="Image15" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg"
            Width="170px" />
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="width: 100%; height: 480px;">
        <table style="width: 100%;">
            <tr>
                <td style="width: 102px">
                    <asp:Label ID="Label4" runat="server" Text="Status" Font-Size="Small"></asp:Label>
                </td>
                <td style="width: 118px">
                    <asp:DropDownList ID="dropstatus" runat="server" Width="160px" AutoPostBack="true"
                        ForeColor="Black" Height="23px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Contractual</asp:ListItem>
                        <asp:ListItem>Probationary</asp:ListItem>
                        <asp:ListItem>Regular</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 126px">
                    <asp:Label ID="Label5" runat="server" Text="Evaluation Period" Font-Size="Small"></asp:Label>
                </td>
                <td style="width: 201px">
                    <asp:DropDownList ID="dropevalperiod" runat="server" Width="230px" 
                        Height="23px">
                    </asp:DropDownList>
                </td>
                <td style="width: 30px; text-align: left;">
                    <asp:Label ID="Label6" runat="server" Text="Year" Font-Size="Small"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtyear" runat="server" Width="81px" BorderColor="Black" BorderWidth="1px"
                        Style="margin-left: 10px">2011</asp:TextBox>
                </td>
            </tr>
        </table>
        <table style="width: 82%;">
            <tr>
                <td style="width: 101px">
                    <asp:Label ID="Label7" runat="server" Text="Name of Ratee" Font-Size="Small"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtnameofratee" runat="server" Width="289px" BackColor="Silver"
                        BorderColor="Black" BorderWidth="1px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table style="width: 97%;">
            <tr>
                <td style="width: 101px">
                    <asp:Label ID="Label8" runat="server" Text="Division/Region" Font-Size="Small"></asp:Label>
                </td>
                <td style="width: 223px">
                    <asp:TextBox ID="txtdiv" runat="server" Width="223px" BackColor="Silver" BorderColor="Black"
                        BorderWidth="1px" ReadOnly="True"></asp:TextBox>
                </td>
                <td style="width: 61px">
                    <asp:Label ID="Label9" runat="server" Font-Size="Small" Text="Dept./Area"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtarea" runat="server" Width="242px" BorderColor="Black" BorderWidth="1px"
                        ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table style="width: 99%;">
            <tr>
                <td style="width: 101px">
                    <asp:Label ID="Label10" runat="server" Text="Branch" Font-Size="Small"></asp:Label>
                </td>
                <td style="width: 505px">
                    <asp:TextBox ID="txtdept" runat="server" Width="289px" BackColor="Silver" BorderColor="Black"
                        BorderWidth="1px" ReadOnly="True"></asp:TextBox>
                </td>
                <td align="right">
                    <asp:ImageButton runat="server" Width="75px" Height="25px" ImageUrl="~/images/Buttons/Preview.gif"
                        ID="cmdpreview" />
                </td>
            </tr>
        </table>
        <table style="width: 99%;">
            <tr>
                <td style="width: 101px" align="center">
                    <asp:Image ImageUrl="~/images/dividerFooter.jpg" Width="700px" Height="3px" runat="server" />
                </td>
            </tr>
        </table>
        <br />
        <table style="width: 100%;">
            <tr>
                <td style="width: 138px">
                    <asp:Label ID="Label11" runat="server" Font-Size="Small" 
                        Text="Reason for Evaluation :"></asp:Label>
                </td>
                <td style="width: 262px">
                    <asp:Label ID="lblperformance" runat="server" Font-Size="Small"></asp:Label>
                </td>
                <td align="right" style="width: 129px">
                    <asp:Label ID="Label13" runat="server" Font-Size="Small" Text="Evaluation Date :"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblevaldate" runat="server" Font-Size="Small"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 131px">
                    <asp:Label ID="Label12" runat="server" Font-Size="Small" Text="Total Grade :"></asp:Label>
                </td>
                <td style="width: 262px">
                    <asp:Label ID="lbltotalgrade" runat="server" Font-Size="Small"></asp:Label>
                </td>
                <td align="right" style="width: 129px">
                    <asp:Label ID="Label14" runat="server" Font-Size="Small" Text="Rating :"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblaverage" runat="server" Font-Size="Small"></asp:Label>
                </td>
            </tr>
        </table>
        <table style="width: 82%;">
            <tr>
                <td style="width: 101px">
                    <asp:Label ID="Label15" runat="server" Font-Size="Small" Text="Major Accomplishments during the six (6) months"
                        Width="600px"></asp:Label>
                </td>
            </tr>
        </table>
        <table style="width: 99%;">
            <tr>
                <td style="width: 43px">
                    &nbsp;
                </td>
                <td>
                    <asp:TextBox ID="txtmajor" runat="server" Height="68px" Width="717px" Font-Names="Arial"
                        TextMode="MultiLine" BackColor="#F1EFEF" BorderColor="Black" BorderWidth="1px"
                        ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table style="width: 82%;">
            <tr>
                <td style="width: 101px">
                    <asp:Label ID="Label16" runat="server" Font-Size="Small" Text="Recomendation for improvement and career development"
                        Width="600px"></asp:Label>
                </td>
            </tr>
        </table>
        <table style="width: 99%;">
            <tr>
                <td style="width: 43px">
                    &nbsp;
                </td>
                <td>
                    <asp:TextBox ID="txtrecomendation" runat="server" Height="65px" Width="717px" Font-Names="Arial"
                        TextMode="MultiLine" BackColor="#F1EFEF" BorderColor="Black" BorderWidth="1px"
                        ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table style="width: 82%;">
            <tr>
                <td style="width: 101px">
                    <asp:Label ID="Label17" runat="server" Font-Size="Small" Text="Self Assessment" Width="600px"></asp:Label>
                </td>
            </tr>
        </table>
        <table style="width: 99%;">
            <tr>
                <td style="width: 43px">
                    &nbsp;
                </td>
                <td>
                    <asp:TextBox ID="txtassessment" runat="server" Height="68px" Width="717px" TextMode="MultiLine"
                        Font-Names="Arial" BorderColor="Black" BorderWidth="1px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table style="width: 99%;">
            <tr>
                <td style="width: 700px" align="right">
                    <asp:ImageButton runat="server" Width="75px" Height="25px" 
                        ImageUrl="~/images/Buttons/submit.gif" ID="cmdsumbit" Visible="False" />
                </td>
                <td align="right">
                    <asp:ImageButton runat="server" Width="75px" Height="25px" 
                        ImageUrl="~/images/Buttons/details.gif" ID="cmddetail" Visible="False" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="contentlabel">
    <table style="width: 100%;">
        <tr>
            <td style="width: 553px">
                <ul>
                    <li class="labeltopformflow">
                        <asp:Label ID="employeeevaluation" runat="server" Text="Employee > Records > Evaluation "></asp:Label>
                        <asp:Label ID="labelposition" Font-Underline="true" ForeColor="Black" runat="server"
                            Text="> Personal Evaluation"></asp:Label>
                    </li>
                </ul>
            </td>
            <td align="right">
                <ul>
                    <li class="labeltopformposition">
                        <asp:Label ID="lblrigths" runat="server" Text="Read/Write Access"></asp:Label>
                    </li>
                </ul>
            </td>
        </tr>
    </table>
</asp:Content>
