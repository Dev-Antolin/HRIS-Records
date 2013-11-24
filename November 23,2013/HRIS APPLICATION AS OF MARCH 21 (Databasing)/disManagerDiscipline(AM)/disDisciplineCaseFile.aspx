﻿<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/ManagerMaster.master" AutoEventWireup="false" CodeFile="disDisciplineCaseFile.aspx.vb" Inherits="DisDiscipline_disCaseApplication" title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="width:195px; height: 334px;">
<ul style="list-style:none;"><li class="label"><a class="name">Workforce Administration</a></li></ul><br />
<ul style="list-style:none;">
<li style="margin-left:20px; cursor:pointer;" class="effects2">
<a href="disCaseApplication.aspx"><asp:Label ID="lblcaseapp" runat="server" Text="> Case Application" Height="16px" Width="177px"></asp:Label></a><br />
<asp:Image ImageAlign="Right" ID="imgcaseappline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg" Width="170px" /><br />
<a href="disCaseStatus.aspx"><asp:Label ID="lblcasestat" runat="server" Text="> Case Status" Height="16px" Width="177px"></asp:Label></a><br />
<asp:Image ImageAlign="Right" ID="imgcasestatline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg" Width="170px" /><br />
<a href="disCodeofDiscipline.aspx"><asp:label id="lblcodedis" runat="server" Text="> Code of Discipline" height="16px" width="177px"></asp:label></a><br />
<asp:Image ImageAlign="Right" ID="Imgcodedisline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg" Width="170px" /><br />

</li>
</ul>
<ul style="list-style:none; margin-top:120px;"><li class="label"><a class="name">Reports</a></li></ul><br />
<ul style="list-style:none;">
<li class="effects2">
<a href="disDisciplineSummaryReport.aspx"><asp:Label ID="dissum" runat="server" Text="> Discipline Summary" Height="16px" Width="177px"></asp:Label></a><br />
<asp:Image ImageAlign="Right" ID="imgdissumline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg" Width="170px" /><br />
<a href="disDisciplineScorecardReport.aspx"><asp:label id="disscore" runat="server" Text="> Discipline Scorecard" height="16px" width="177px"></asp:label></a><br />
<asp:Image ImageAlign="Right" ID="Imgdisscoreline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg" Width="170px" /><br />
<a  style="color:red; font-size:small;"><asp:Label ID="empfile" runat="server" Text="> Employee Case File" Height="16px" Width="177px"></asp:Label></a><br />
<asp:Image ImageAlign="Right" ID="imgempfileline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg" Width="170px" /><br />
</li></ul>
</div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td style="width: 56px">
                &nbsp;</td>
            <td style="width: 53px">
                &nbsp;</td>
            <td style="width: 79px">
                
                <asp:Label ID="lblResid" runat="server" Font-Names="Arial" Font-Size="Small" 
                    Text="Resource ID" ForeColor="Black"></asp:Label>
            </td>
            <td style="width: 28px">
                <asp:TextBox ID="txtfrom0" runat="server" Width="132px" Height="20px"></asp:TextBox>
            </td>
            <td style="width: 36px">
                <asp:ImageButton ID="imgsearch" runat="server" Height="20px" 
                    ImageUrl="~/images/searchlens.jpg" />
            </td>
            <td style="width: 60px">
                <asp:Label ID="lblstatus" runat="server" Font-Names="Arial" Font-Size="Small" 
                    Text="Status" ForeColor="Black"></asp:Label>
            </td>
            <td style="width: 134px">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="23px" Width="129px">
                <asp:ListItem>All</asp:ListItem>
                <asp:ListItem>Open</asp:ListItem>
                <asp:ListItem>Pending</asp:ListItem>
                <asp:ListItem>Closed</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td align="left">
                <asp:ImageButton ID="cmdpreview" runat="server" Height="25px" 
                    ImageUrl="~/images/Buttons/Preview.gif" Width="75px" />
            </td>
        </tr>
    </table>
    <br />
    <table id="report" width="100%">
    <tr>
    <td style="width: 23px"></td>
    <td style="width: 641px">
        <asp:Panel ID="pnlreport" runat="server" Height="318px" Visible="False" 
            Width="726px">
            <asp:Image ID="Image15" runat="server" Height="313px" 
                ImageUrl="~/images/discasefile.jpg" Width="722px" />
        </asp:Panel>
        </td>
    <td></td>
    </tr>
    <tr>
    <td style="width: 23px"></td>
    <td style="width: 641px"></td>
    <td></td>
    </tr>
    </table>
    <table style="width:100%">
    <tr>
    <td style="height: 64px"></td>
    <td style="height: 64px"></td>
    </tr>
    <tr>
    <td align="right" style="width: 743px">
                <asp:ImageButton ID="cmdprint" runat="server" Height="23px" 
                    ImageUrl="~/images/Buttons/print.gif" Width="71px" Visible="false" />
            </td>
    <td></td>
    </tr>
    </table>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="contentlabel">
<table style="width:100%;"><tr>
<td style="width: 553px">
<ul><li class="labeltopformflow"><asp:Label ID="managerdis" runat="server" Text="Manager > Discipline > Reports "></asp:Label>
        <asp:Label ID="labelposition" Font-Underline="true" ForeColor="Black" runat="server" Text="> Employee Case File"></asp:Label>
        </li></ul> 
        </td>
        <td align="right">
        <ul><li class="labeltopformposition"><asp:Label ID="lblrigths" runat="server" Text="View/Print Access"></asp:Label>
        </li></ul>
        </td>
        </tr>
        </table>
</asp:Content>


