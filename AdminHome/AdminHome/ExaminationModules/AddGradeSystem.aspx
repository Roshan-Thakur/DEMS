<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="AddGradeSystem.aspx.cs" Inherits="AdminHome.ExaminationModules.AddGradeSystem" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server">--%>
       
    <div class="container">
        <div class="col-3" style="margin-bottom:5px; width:250px;">
             <asp:Table runat="server" ID="tb1" CssClass="table">
                <asp:TableRow>
                    <asp:TableCell>Add Grade:</asp:TableCell><asp:TableCell><asp:TextBox runat="server" ID="txtgrade" CssClass="form-control"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow>
                     <asp:TableCell><asp:TextBox runat="server" ID="txtmarkmin" placeholder="MarkMin" CssClass="form-control"></asp:TextBox>
                     </asp:TableCell>
                     <asp:TableCell><asp:TextBox runat="server" placeholder="MarkMax" ID="txtmarkmax" CssClass="form-control"></asp:TextBox>
                     
                     </asp:TableCell>
                    </asp:TableRow>
                 <asp:TableRow>
                      <asp:TableCell><asp:TextBox runat="server" ID="txtpointmin" placeholder="PointMin" CssClass="form-control"></asp:TextBox>
                      
                      </asp:TableCell>
                     <asp:TableCell><asp:TextBox runat="server" placeholder="PointMax" ID="txtpointmax" CssClass="form-control"></asp:TextBox>
                     
                     </asp:TableCell>
                 </asp:TableRow>
            </asp:Table>
            <asp:Button runat="server" ID="btnsubmit" Text="Submit" CssClass="btn btn-primary" OnClick="btnsubmit_Click" />
            <asp:Button runat="server" ID="btnupdate" Text="Update" CssClass="btn btn-primary" OnClick="btnupdate_Click" />
            <asp:Label runat="server" ID="lblinfo" ForeColor="Red" Font-Bold="true" Font-Size="Medium"></asp:Label>
            <asp:HiddenField runat="server" ID="hdn" /><br />
            <asp:RangeValidator ID="RangeValidator1" runat="server" Type="Integer" MinimumValue="0" MaximumValue="400" ControlToValidate="txtmarkmin" ErrorMessage="MarkMin must be float or ineteger" />
             <asp:RangeValidator ID="RangeValidator2" runat="server" Type="Integer" MinimumValue="0" MaximumValue="400" ControlToValidate="txtmarkmax" ErrorMessage="MarkMax must be float or ineteger" />
             <asp:RangeValidator ID="RangeValidator3" runat="server" Type="Integer" MinimumValue="0" MaximumValue="400" ControlToValidate="txtpointmin" ErrorMessage="PointMin must be float or ineteger" />
             <asp:RangeValidator ID="RangeValidator4" runat="server" Type="Integer" MinimumValue="0" MaximumValue="400" ControlToValidate="txtpointmax" ErrorMessage="PointMax must be float or ineteger" />
        </div>
        <div class="col-9">
           
           <asp:GridView ID="gvTerritories" EmptyDataText="No Data Found"  runat="server" AutoGenerateColumns="false" CssClass="footable"  
              GridLines="None" DataKeyNames="Id"  ShowFooter="false" AllowPaging="true" PageSize="5" OnPageIndexChanging="gvTerritories_PageIndexChanging" >
               <Columns>
                   <%-- grade,markmin,markmax,pointmin,pointmax --%>
                   <asp:BoundField HeaderText="Grade" DataField="grade" />
                   <asp:BoundField HeaderText="MarkMin" DataField="markmin"/>
                   <asp:BoundField HeaderText="MarkMax" DataField="markmax" />
                   <asp:BoundField HeaderText="PointMin" DataField="pointmin" />
                   <asp:BoundField HeaderText="PointMin" DataField="pointmax" />
                   <asp:TemplateField HeaderText="Update">
                       <ItemTemplate>
                           <asp:LinkButton runat="server" ID="lnkupdate" OnCommand="lnkupdate_Command" CommandName="ViewDetails" CommandArgument='<%# Eval("Id")+","+Eval("grade")+","+Eval("markmin")+","+Eval("markmax")+","+Eval("pointmin")+","+Eval("pointmax") %>' >
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