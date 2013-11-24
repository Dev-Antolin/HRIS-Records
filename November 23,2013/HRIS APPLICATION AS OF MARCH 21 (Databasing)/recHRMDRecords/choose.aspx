<%@ Page Language="VB" MasterPageFile="~/MASTER_PAGES/MAIN_MASTER/HRIS/HRMasterPage.master" AutoEventWireup="false" CodeFile="choose.aspx.vb" Inherits="recHRMDRecords_choose" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentlabel" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Label runat="server" ID="lbl1" Font-Bold=true Font-Size="20px">Saon man ni oi...hellpppppp!!!...</asp:Label>


    <asp:GridView ID="dgchoose" runat="server" AutoGenerateColumns="False" 
        Width="761px" OnRowEditing="dgchoose_RowEditing">
        <Columns>
            <asp:BoundField DataField="ChildName" HeaderText="ChildName" />
            <asp:TemplateField HeaderText="ChildAge">
            <ItemTemplate><%#Eval("ChildAge")%>></ItemTemplate>
            <EditItemTemplate>
            <asp:DropDownList runat="server" ID="drop1" DataTextField="ChildAge" DataValueField="ChildAge"></asp:DropDownList>
            </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Edit">
            <ItemTemplate>
            <asp:LinkButton runat="server" ID="btnedit" CommandName="Edit" Text="Edit"></asp:LinkButton>
            </ItemTemplate>
            <EditItemTemplate>
            <asp:LinkButton runat="server" ID="btnupdate" CommandName="Update" Text="Update"></asp:LinkButton>
            </EditItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>

