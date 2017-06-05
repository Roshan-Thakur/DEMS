<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master"  AutoEventWireup="true" CodeBehind="AddExamInfo.aspx.cs" Inherits="AdminHome.ExaminationModules.AddExamInfo" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <script type="text/javascript">
        $(function () {
            $(".txt").datepicker();
            $(".txtdob").datepicker();
        });
</script>
    <%--<form id="form1" runat="server">--%>
       
        <div class="container">
        <div class="col-3" style="margin-bottom:30px; width:250px;">
             <asp:Table runat="server" ID="tb1" CssClass="table">
                <asp:TableRow>
                    <asp:TableCell>Batch:</asp:TableCell><asp:TableCell><asp:DropDownList runat="server" ID="ddlbatch" CssClass="form-control"></asp:DropDownList></asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow>
                     <asp:TableCell>ExamType:</asp:TableCell><asp:TableCell><asp:DropDownList runat="server" ID="ddlexamtyp" CssClass="form-control"></asp:DropDownList></asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow>
                     <asp:TableCell><asp:TextBox runat="server" placeholder="EndDate" ID="txtend" CssClass="form-control txt "></asp:TextBox></asp:TableCell>
                     <asp:TableCell><asp:TextBox runat="server" placeholder="StartDate" ID="txtstart" CssClass="form-control txt"></asp:TextBox></asp:TableCell>
                 </asp:TableRow>
            </asp:Table>
            <asp:Button runat="server" ID="btnsubmit" Text="Submit" CssClass="btn btn-primary" OnClick="btnsubmit_Click" />
            <asp:Button runat="server" ID="btnupdate" Text="Update" CssClass="btn btn-primary" OnClick="btnupdate_Click" />
            <asp:Label runat="server" ID="lblinfo" ForeColor="Red" Font-Size="Medium"></asp:Label>
            <asp:HiddenField runat="server" ID="hdn" />
        </div>
        <div class="col-9">           
           <asp:GridView ID="gvTerritories" EmptyDataText="No Data Found"  runat="server" AutoGenerateColumns="false" CssClass="footable"  
              GridLines="None" DataKeyNames="Id"  ShowFooter="false" AllowPaging="true" PageSize="5" OnPageIndexChanging="gvTerritories_PageIndexChanging" >
               <Columns>
                   <asp:BoundField HeaderText="ExamID" DataField="examId" />
                   <asp:TemplateField HeaderText="Update">
                       <ItemTemplate>
                           <asp:LinkButton runat="server" ID="lnkupdate" ForeColor="Red" OnCommand="lnkupdate_Command" CommandName="ViewDetails" CommandArgument='<%# Eval("Id")+"_"+Eval("examId") %>' >
                               <span class="glyphicon glyphicon-pencil">Edit</span></asp:LinkButton>
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
    <%--</form>--%>
    
     <%-- Script to responsiv grid --%>
    <script type="text/javascript">
        $(function () {
            $('[id*=gvTerritories]').footable();
        });
    </script>
</body>
</html>
</asp:Content>