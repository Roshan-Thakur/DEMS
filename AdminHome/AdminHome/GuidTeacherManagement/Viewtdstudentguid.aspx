<%@ Page Language="C#" MasterPageFile="~/TeacherDesboard/TeacherMasterpage.Master" AutoEventWireup="true" CodeBehind="Viewtdstudentguid.aspx.cs" Inherits="AdminHome.GuidTeacherManagement.Viewtdstudentguid" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="conntent">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
   <fieldset><legend style="text-align:center;font-size:medium;">View List of Student to under guidiance</legend>
    <div class="container">
            <asp:Label runat="server" ID="lblmsg" ForeColor="Red"></asp:Label>
            <div class="row" id="showdiv" runat="server">
                <div class="col-lg-6">
                    <textarea id="txtnoti" runat="server" style="height:120px; width:100%;"></textarea>
                </div>
                <div class="col-lg-6"><asp:Button runat="server" Text="Send" CssClass="btn btn-primary" ID="btnsendmessage" OnClick="btnsendmessage_Click" /></div>
            </div>
            <asp:Label runat="server" ID="lblno" CssClass="label" Font-Size="Medium"></asp:Label>
            <asp:LinkButton runat="server" ID="lnknotify" OnClick="lnknotify_Click" ForeColor="Red"><span class="glyphicon glyphicon-paperclip">AttacheNotification</span></asp:LinkButton>
            <div style="height:480px;min-width:220px; overflow:auto">
            <asp:GridView ID="gvTerritories" EmptyDataText="No Data Found"  runat="server" AutoGenerateColumns="false" CssClass="footable"  
              GridLines="None" DataKeyNames="FormNo"  ShowFooter="true"  OnRowDataBound="gvTerritories_RowDataBound" >
               <Columns>
                   <%--FormNoSection shift batch assignteacherId--%>
                   <asp:TemplateField HeaderText="StudentID">
                       <ItemTemplate>
                           <asp:Label runat="server" ID="lblid" Text='<%# Eval("FormNo") %>'></asp:Label>
                       </ItemTemplate>
                   </asp:TemplateField>
                   <asp:BoundField HeaderText="Section." DataField="Section"/>
                   <asp:BoundField HeaderText="Shift." DataField="Shift" />
                   <asp:BoundField HeaderText="Batch" DataField="Batch" />
                   <asp:BoundField HeaderText="TeacherID" DataField="assignteacherId" />
                   <asp:TemplateField HeaderText="ViewDetails">
                       <ItemTemplate>
                           <asp:LinkButton runat="server" ID="btnview" CommandName="ViewDetails" OnCommand="btnview_Command" ForeColor="Red" CommandArgument='<%# Eval("FormNo") %>' ><span class="glyphicon glyphicon-eye-open">View</span></asp:LinkButton>
                       </ItemTemplate>
                   </asp:TemplateField>
               </Columns>
               <EmptyDataRowStyle Font-Bold="true" Font-Size="14pt" ForeColor="Red" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <%--<HeaderStyle CssClass="gridViewHeader" />--%>
                <RowStyle CssClass="gridViewRow" />
                <AlternatingRowStyle CssClass="gridViewAltRow" />
                <PagerStyle CssClass="gridViewPager" />
            </asp:GridView>
        </div>
    </div>
</fieldset>
     <script type="text/javascript">
         $(function () {
             $('[id*=gvTerritories]').footable();
         });
    </script>
</body>
</html>
</asp:Content>