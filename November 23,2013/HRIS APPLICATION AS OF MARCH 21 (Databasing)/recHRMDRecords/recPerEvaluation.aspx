<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/HRMasterPage.master"
    AutoEventWireup="false" CodeFile="recPerEvaluation.aspx.vb" Inherits="recHRMDinfo_recPerEvaluation"
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
    <div>
        <table style="width: 100%; height: 78px;">
            <tr>
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 114px">
                    <asp:Label ID="Label4" runat="server" Text="List" Font-Size="12px" Font-Names="Arial"
                        ForeColor="Black"></asp:Label>
                </td>
                <td style="width: 196px">
                    <asp:DropDownList ID="cmdList" runat="server" Font-Names="Arial" Font-Size="12px"
                        Height="20px" Width="176px" AutoPostBack="True">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Support</asp:ListItem>
                        <asp:ListItem>Operation</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 95px">
                    <asp:Label ID="Label6" runat="server" Text="Division/Region" Font-Size="12px" Font-Names="Arial"
                        ForeColor="Black"></asp:Label>
                </td>
                <td style="width: 192px">
                    <asp:DropDownList ID="cmdDivision" runat="server" Font-Names="Arial" Font-Size="12px"
                        Height="20px" Width="176px" Enabled="False" AutoPostBack="True">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Division</asp:ListItem>
                        <asp:ListItem>Region</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:ImageButton ID="cmdView" runat="server" Height="25px" ImageUrl="~/images/Buttons/view.gif"
                        Width="75px" />
                </td>
            </tr>
            <tr>
                <td style="width: 15px">
                    &nbsp;
                </td>
                <td style="width: 114px">
                    <asp:Label ID="Label5" runat="server" Text="Department/Branch" Font-Size="12px" Font-Names="Arial"
                        ForeColor="Black"></asp:Label>
                </td>
                <td style="width: 196px">
                    <asp:DropDownList ID="cmdBranch" runat="server" Font-Names="Arial" Font-Size="12px"
                        Height="20px" Width="176px" DataTextField="subcodename" 
                        DataValueField="subcodename">
                    </asp:DropDownList>
                </td>
                <td style="width: 95px">
                    <asp:Label ID="Label7" runat="server" Text="Category" Font-Size="12px" Font-Names="Arial"
                        ForeColor="Black"></asp:Label>
                </td>
                <td style="width: 192px">
                    <asp:DropDownList ID="cmdCategory" runat="server" Font-Names="Arial" Font-Size="12px"
                        Height="20px" Width="176px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Managerial</asp:ListItem>
                        <asp:ListItem>Contractual</asp:ListItem>
                        <asp:ListItem>Probationary</asp:ListItem>
                        <asp:ListItem>Rank and File</asp:ListItem>
                        <asp:ListItem>Regular</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 15px; height: 19px;">
                    &nbsp;
                </td>
                <td style="width: 114px; height: 19px;">
                    &nbsp;
                </td>
                <td style="width: 196px; height: 19px;">
                    &nbsp;
                </td>
                <td style="width: 95px; height: 19px;">
                    &nbsp;
                </td>
                <td style="width: 192px; height: 19px;">
                    &nbsp;
                </td>
                <td style="height: 19px">
                    &nbsp;
                </td>
            </tr>
        </table>
        <br />
        <table style="width: 100%; height: 167px;">
            <tr>
                <td style="width: 15px">
                </td>
                <td style="width: 610px">
                    <asp:Panel runat="server" BackColor="#666666" BorderColor="Black" BorderWidth="2px"
                        BorderStyle="Solid" Height="175px" Width="678px" ID="Panel2">
                        <asp:GridView runat="server" 
    AutoGenerateColumns="False" CellPadding="3" GridLines="Vertical"
                            BackColor="White" BorderColor="#999999" 
    BorderWidth="1px" BorderStyle="Solid"
                            ForeColor="Black" Height="176px" Width="678px" ID="dgrideval" 
    EmptyDataText="No Records Found" EmptyDataRowStyle-Font-Bold=true EmptyDataRowStyle-BackColor=LightBlue  
     EmptyDataRowStyle-HorizontalAlign=Center EmptyDataRowStyle-VerticalAlign=Middle 
                            EmptyDataRowStyle-Font-Size=30px >
                            <AlternatingRowStyle BackColor="#CCCCCC"></AlternatingRowStyle>
                            <EmptyDataRowStyle BackColor="LightBlue" Font-Bold="True" Font-Size="30px" 
                                HorizontalAlign="Center" VerticalAlign="Middle" />
                            <Columns>
                                <asp:BoundField HeaderText="Resource ID" 
                                    DataField="EmployeeId"></asp:BoundField>
                                <asp:BoundField HeaderText="Name" DataField="Fullname"></asp:BoundField>
                                <asp:BoundField HeaderText="Branch" 
                                    DataField="Branch"></asp:BoundField>
                                <asp:HyperLinkField HeaderText="Evaluation Details" DataNavigateUrlFields="EmployeeId, Fullname, Branch" 
                                 DataNavigateUrlFormatString="recPerEvaluation2.aspx?empid={0}&fname={1}&dept={2}&Name=(cmdCategory.selectedvalue)"
                                 Text="View Details">
                                    <HeaderStyle Width="140px" />
                                </asp:HyperLinkField>
                                
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC"></FooterStyle>
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Height="14px" 
                                Wrap="True">
                            </HeaderStyle>
                            <PagerStyle HorizontalAlign="Center" BackColor="#999999" ForeColor="Black">
                            </PagerStyle>
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White">
                            </SelectedRowStyle>
                        </asp:GridView>
                    </asp:Panel>
                </td>
                <td style="width: 28px">
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
            <td style="width: 595px">
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
