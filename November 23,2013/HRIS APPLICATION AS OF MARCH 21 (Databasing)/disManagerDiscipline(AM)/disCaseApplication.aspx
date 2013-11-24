<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/ManagerMaster.master" AutoEventWireup="false" CodeFile="disCaseApplication.aspx.vb" Inherits="DisDiscipline_disCaseApplication" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="width:195px; height: 334px;">
<ul style="list-style:none;"><li class="label"><a class="name">Workforce Administration</a></li></ul><br />
<ul style="list-style:none;">
<li style="margin-left:20px; cursor:pointer;" class="effects2">
<a style="color:red; font-size:small;"><asp:Label ID="lblcaseapp" runat="server" Text="> Case Application" Height="16px" Width="177px"></asp:Label></a><br />
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
<a href="disDisciplineCaseFile.aspx"><asp:Label ID="empfile" runat="server" Text="> Employee Case File" Height="16px" Width="177px"></asp:Label></a><br />
<asp:Image ImageAlign="Right" ID="imgempfileline" runat="server" Height="3px" ImageUrl="~/images/dividerPayrollSubMenu.jpg" Width="170px" /><br />
</li></ul>
</div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td style="width: 107px">
                <asp:Label ID="txtapplication" runat="server" Font-Names="Arial" 
                    Font-Size="Small" Text="Application No." ForeColor="Black"></asp:Label>
            </td>
            <td style="width: 144px">
                <asp:TextBox ID="TextBox1" runat="server" Width="205px" BackColor="Gainsboro" ReadOnly="true"></asp:TextBox>
            </td>
            <td style="width: 78px">
                &nbsp;</td>
                <td style="width: 80px">
                    <asp:Label ID="lbldate" runat="server" Font-Names="Arial" Font-Size="Small" 
                        Text="Report Date" ForeColor="Black"></asp:Label>
            </td>
                <td style="width: 187px">
                <asp:TextBox ID="TextBox3" runat="server" Width="205px" ReadOnly="true" BackColor="Gainsboro"></asp:TextBox>
            </td>
            <td></td>
        </tr>
        <tr>
            <td style="width: 107px">
                <asp:Label ID="txttype" runat="server" Font-Names="Arial" Font-Size="Small" 
                    Text="Disciplinary Type" ForeColor="Black"></asp:Label>
            </td>
            <td style="width: 144px">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="23px" Width="208px">
                <asp:ListItem>Tardiness</asp:ListItem>
                <asp:ListItem>Sexual Harasment</asp:ListItem>
                <asp:ListItem>Theft</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 78px">
                &nbsp;</td>
                <td style="width: 80px"><asp:Label ID="lblresource" runat="server" 
                        Font-Names="Arial" Font-Size="Small" 
                        Text="Resource" ForeColor="Black"></asp:Label></td>
                <td style="width: 187px"> 
                <asp:TextBox ID="TextBox4" runat="server" Width="205px" ReadOnly="true" BackColor="Gainsboro"></asp:TextBox>
            </td>
            <td><asp:ImageButton runat="server" ID="imgsearchemployee" 
                    ImageUrl="~/images/t.png" Height="22px" /></td>
        </tr>
        <tr>
            <td style="width: 107px">
                <asp:Label ID="txtvalue" runat="server" Font-Names="Arial" Font-Size="Small" 
                    Text="Value" ForeColor="Black"></asp:Label>
            </td>
            <td style="width: 144px">
                <asp:TextBox ID="TextBox2" runat="server" Width="205px"></asp:TextBox>
            </td>
            <td style="width: 78px">
                &nbsp;</td>
                <td style="width: 80px"><asp:Label ID="lblmanager" runat="server" 
                        Font-Names="Arial" Font-Size="Small" 
                        Text="Manager" ForeColor="Black"></asp:Label></td>
                <td style="width: 187px">
                <asp:TextBox ID="TextBox5" runat="server" Width="205px" BackColor="Gainsboro" ReadOnly="true"></asp:TextBox>
            </td>
            <td></td>
        </tr>
        <tr>
            <td style="width: 107px">
                &nbsp;</td>
            <td style="width: 144px">
                &nbsp;</td>
            <td style="width: 78px">
                &nbsp;</td>
                <td style="width: 80px">
                    <asp:Label ID="lblbc" runat="server" Font-Names="Arial" Font-Size="Small" 
                        Text="BC" ForeColor="Black"></asp:Label></td>
                <td style="width: 187px">
                <asp:TextBox ID="TextBox6" runat="server" Width="205px" BackColor="Gainsboro" ReadOnly="true"></asp:TextBox>
            </td>
            <td></td>
        </tr>
        <tr>
            <td style="width: 107px" align="right">
                <asp:Label ID="lbldescription" runat="server" Font-Names="Arial" Font-Size="Small" 
                        Text="Description" ForeColor="Black"></asp:Label></td>
            <td style="width: 144px">
                &nbsp;</td>
            <td style="width: 78px">
                &nbsp;</td>
                <td style="width: 80px"><asp:Label ID="lblattachment" runat="server" 
                        Font-Names="Arial" Font-Size="Small" 
                        Text="Attachment" ForeColor="Black"></asp:Label></td>
                <td style="width: 187px">
                <asp:TextBox ID="TextBox7" runat="server" Width="205px" BackColor="Gainsboro" ReadOnly="true"></asp:TextBox>
            </td>
            <td><asp:ImageButton runat="server" ID="cmdbrowse" ImageUrl="~/images/Buttons/browse.gif" 
                    Height="25px" Width="75px"/></td>
        </tr>
    </table>
    <table style="width:100%;">
    <tr>
    <td style="width: 39px; height: 61px;"></td>
    <td style="width: 353px; height: 61px;" align="right">
        <asp:TextBox ID="TextBox8" runat="server" Width="352px" Height="85px" 
            TextMode="MultiLine" Font-Names="Arial" Font-Size="Small"></asp:TextBox>
        </td>
    <td style="width: 87px; height: 61px;"></td>
    <td rowspan="3">
        <table style="width:100%;">
            <tr><td>
                <asp:Label ID="lblir" runat="server" Font-Names="Arial" Font-Size="Small" 
                    Text="- IR" ForeColor="Black"></asp:Label>
                </td></tr>
            <tr><td>
                <asp:Label ID="lblaef" runat="server" Font-Names="Arial" Font-Size="Small" 
                    Text="- AEF" ForeColor="Black"></asp:Label>
                </td></tr>
            <tr><td>
                <asp:Label ID="lblinquiry" runat="server" Font-Names="Arial" Font-Size="Small" 
                    Text="- Inquiry/Show cause memo" ForeColor="Black"></asp:Label>
                </td></tr>
            <tr><td>
                <asp:Label ID="lblwritten" runat="server" Font-Names="Arial" Font-Size="Small" 
                    Text="- Written Reply" ForeColor="Black"></asp:Label>
                </td></tr>
            <tr><td>
                <asp:Label ID="lblnotice" runat="server" Font-Names="Arial" Font-Size="Small" 
                    Text="- Notice of Admin Hearing" ForeColor="Black"></asp:Label>
                </td></tr>
            <tr><td>
                <asp:Label ID="lblminutes" runat="server" Font-Names="Arial" Font-Size="Small" 
                    Text="- Minutes of Admin Hearing" ForeColor="Black"></asp:Label>
                </td></tr>
            <tr><td style="height: 18px">
                <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="Small" 
                    Text="- Recomendation by AM noted by RM" ForeColor="Black"></asp:Label>
                </td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr><td>&nbsp;</td></tr>
                                    
        </table>
        </td>
    </tr>
    <tr>
    <td style="width: 39px"></td>
    <td style="width: 353px">

                <asp:Label ID="lblcomments" runat="server" Font-Names="Arial" Font-Size="Small" 
                        Text="Comment/s" ForeColor="Black"></asp:Label></td>
    <td style="width: 87px"></td>
    </tr>
    <tr>
    <td style="width: 39px"></td>
    <td style="width: 353px" align="right">
        <asp:TextBox ID="TextBox9" runat="server" Width="351px" Height="86px" 
            TextMode="MultiLine" Font-Names="Arial" Font-Size="Small"></asp:TextBox>
        </td>
    <td style="width: 87px"></td>
    </tr>
    <tr>
    <td style="height: 117px; width: 39px;"></td>
     <td style="height: 117px"></td>
      <td style="height: 117px; width: 87px;"></td>
       <td style="height: 117px"></td>
    </tr>
     <tr>
    <td style="height: 34px; width: 39px;"></td>
     <td style="height: 34px"></td>
      <td style="height: 34px; width: 87px;"></td>
       <td style="height: 34px">
           <table style="width: 100%;">
               <tr>
                   <td style="width: 72px">
                       <asp:ImageButton ID="cmdpending" runat="server" Height="25px" 
                           ImageUrl="~/images/Buttons/Pending.gif" Width="75px" />
                   </td>
                   <td style="width: 70px">
                       <asp:ImageButton ID="cmdabsolve" runat="server" Height="25px" 
                           ImageUrl="~/images/Buttons/absolve.gif" Width="75px" />
                   </td>
                   <td>
                       <asp:ImageButton ID="cmdescalate" runat="server" Height="25px" 
                           ImageUrl="~/images/Buttons/escalate.gif" Width="75px" />
                   </td>
               </tr>
           </table>
         </td>
    </tr>
    </table>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="contentlabel">
    <table style="width:100%;"><tr>
<td style="width: 553px">
<ul><li class="labeltopformflow"><asp:Label ID="managerdis" runat="server" Text="Manager > Discipline > Workforce Administration "></asp:Label>
        <asp:Label ID="labelposition" Font-Underline="true" ForeColor="Black" runat="server" Text="> Case Application"></asp:Label>
        </li></ul> 
        </td>
        <td align="right">
        <ul><li class="labeltopformposition"><asp:Label ID="lblrigths" runat="server" Text="Read/Write Access"></asp:Label>
        </li></ul>
        </td>
        </tr>
        </table> 
</asp:Content>


