<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="ClassWiseSubjectSetup.aspx.cs" Inherits="AdminHome.ExaminationModules.ClassWiseSubjectSetup" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server">--%>
       
    <div class="row">
      <div class="col-lg-8">
          <asp:HiddenField  runat="server" ID="hdnfield" />
          <asp:Label runat="server" ID="lblinfo" CssClass="label" Font-Size="Medium"></asp:Label>
           <asp:GridView ID="gvTerritories" EmptyDataText="No Data Found"  runat="server" AutoGenerateColumns="false" CssClass="footable"  
              GridLines="None" DataKeyNames="Id"  ShowFooter="false" AllowPaging="true" PageSize="5" OnPageIndexChanging="gvTerritories_PageIndexChanging"  OnRowDataBound="gvTerritories_RowDataBound" >
               <Columns>
                   <asp:BoundField HeaderText="Class" DataField="class" />
                   <asp:BoundField HeaderText="Code." DataField="code"/>
                   <asp:BoundField HeaderText="Subject." DataField="sub" />
                   <asp:BoundField HeaderText="Optional" DataField="optional" />
                   <asp:BoundField HeaderText="Mandatory+Optional" DataField="mandatoryoptional" />
                   <asp:BoundField HeaderText="Marks" DataField="marks" />
                   <asp:TemplateField HeaderText="Update">
                       <ItemTemplate>
                           <asp:LinkButton runat="server" ID="btnupdate" ForeColor="Red" OnCommand="btnupdate_Command" CommandName="ViewDetails" CommandArgument='<%# Eval("Id")+","+Eval("class")+","+Eval("code")+","+Eval("sub")+","+Eval("optional")+","+Eval("mandatoryoptional")+","+Eval("marks") %>' >
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
      <div class="col-lg-3" style="margin-top:20px;">
           <asp:Table ID="Table1" CssClass="table" runat="server">
            <asp:TableRow>
                <asp:TableCell>Subject:</asp:TableCell>
                <asp:TableCell><asp:DropDownList runat="server" ID="ddlsubject" CssClass="form-control"></asp:DropDownList></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Class:</asp:TableCell>
                <asp:TableCell><asp:DropDownList runat="server" ID="ddlclass" CssClass="form-control"></asp:DropDownList></asp:TableCell>
            </asp:TableRow>
           <asp:TableRow>
               <asp:TableCell>Code</asp:TableCell>
               <asp:TableCell><asp:TextBox ID="txtcode" runat="server" placeholder="Code" CssClass="form-control"></asp:TextBox></asp:TableCell>
           </asp:TableRow>
             <asp:TableRow>
                 <asp:TableCell>Marks:</asp:TableCell>
               <asp:TableCell><asp:TextBox ID="txtmarks" runat="server" placeholder="Marks" CssClass="form-control"></asp:TextBox>
                   <asp:RangeValidator ID="rng" runat="server" Type="Integer" MinimumValue="0" MaximumValue="400" ControlToValidate="txtmarks" 
                        ErrorMessage="Value must be a whole number between 0 and 400" />
               </asp:TableCell>
           </asp:TableRow>
        </asp:Table>
        <asp:CheckBox runat="server" ID="chkoptional" Text="Optional"  />&nbsp;&nbsp;
        <asp:CheckBox runat="server" ID="chkmandatory" Text="Mandatory+Optional" />
        <asp:Button ID="btnsave" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="btnsave_Click"/>
        <asp:Button ID="btnedit" runat="server" Text="Update" CssClass="btn btn-primary" OnClick="btnedit_Click"  />
          <asp:Label runat="server" ForeColor="Red" Font-Bold="true" ID="lblmsg"></asp:Label>
      </div>
    </div>
    <%--</form>--%>
    <style>
        .spac {
           margin-left:0px;
           
        }
    </style>
     <%-- Script to responsiv grid --%>
    <script type="text/javascript">
        $(function () {
            $('[id*=gvTerritories]').footable();
        });
    </script>
</body>
</html>
</asp:Content>