<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" CodeBehind="AddBloodReligionDeprtfrm.aspx.cs" Inherits="AdminHome.AdminSettingView.AddBloodReligionDeprtfrm" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server">--%>
     
        <div class="container"><div><span style="text-align:center"><asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label></span></div>
        <div class="col-lg-4"><fieldset id="Fieldset3" runat="server"><legend>Department</legend><br />
        <span>Add Department </span><asp:TextBox runat="server" ID="txtdpt" CssClass="form-control"></asp:TextBox><br />
            <asp:Button runat="server" Text="ADD" ID="btndept" CssClass="btn btn-primary" OnClick="btndept_Click" />
            <asp:Button runat="server" Text="Update" ID="btnupdatedept" CssClass="btn btn-primary" OnClick="btnupdatedept_Click" />
           </fieldset>
           <br />
            <asp:HiddenField runat="server" ID="hdn" />
            <asp:GridView ID="grddept" EmptyDataText="No Data Found" runat="server" AutoGenerateColumns="false" CssClass="footable" 
              GridLines="None"
              AllowPaging="true" DataKeyNames="Id"
              PageSize="6" OnPageIndexChanging="grddept_PageIndexChanging" >
               <Columns>
                   <asp:BoundField HeaderText="Sr.No" DataField="Id" />
                   <asp:BoundField HeaderText="Department" DataField="department" />
                   <asp:TemplateField HeaderText="Delete">
                   <ItemTemplate>
                           <asp:LinkButton ID="lnkbtnupdate" runat="server" ForeColor="Red" CommandArgument='<%# Eval("Id") %>' CommandName="ViewDetails" OnCommand="lnkbtnupdate_Command" >
                           <span class="glyphicon glyphicon-trash">Delete |</span>
                           </asp:LinkButton>
                           <asp:LinkButton ID="lnlbtnedit" runat="server" ForeColor="Red" CommandArgument='<%# Eval("Id")+","+Eval("department") %>' CommandName="ViewDetails" OnCommand="lnlbtnedit_Command" >
                           <span class="glyphicon glyphicon-edit"> Edit</span>
                           </asp:LinkButton>
                   </ItemTemplate>
                   </asp:TemplateField>
               </Columns>
               <EmptyDataRowStyle Font-Bold="true" Font-Size="14pt" ForeColor="Red" />
                <%--<HeaderStyle CssClass="gridViewHeader" />--%>
                <RowStyle CssClass="gridViewRow" />
                <AlternatingRowStyle CssClass="gridViewAltRow" />
                <PagerStyle CssClass="gridViewPager" />
            </asp:GridView>
        </div> 
        <div class="col-lg-4"><fieldset id="Fieldset2" runat="server"><legend>Religion</legend><br />
        <span>Add Religion </span><asp:TextBox runat="server" ID="txtreli" CssClass="form-control"></asp:TextBox><br />
            <asp:Button runat="server" Text="ADD" ID="btnreli" CssClass="btn btn-primary" OnClick="btnreli_Click" />
            <asp:Button runat="server" Text="UPDATE" ID="btnreliupdate" CssClass="btn btn-primary" OnClick="btnreliupdate_Click" />
            </fieldset>
            <br />
           <asp:GridView ID="grdreli" EmptyDataText="No Data Found" runat="server" AutoGenerateColumns="false" CssClass="footable" 
              GridLines="None"
              AllowPaging="true" DataKeyNames="Id"
              PageSize="6" OnPageIndexChanging="grdreli_PageIndexChanging"  >
               <Columns>
                   <asp:BoundField HeaderText="Sr.No" DataField="Id" />
                   <asp:BoundField HeaderText="Religion" DataField="religion" />
                   <asp:TemplateField HeaderText="Delete">
                   <ItemTemplate>
                           <asp:LinkButton ID="lnkbtnupdate" runat="server" ForeColor="Red" CommandArgument='<%# Eval("Id") %>' CommandName="ViewDetails" OnCommand="lnkbtnupdate_Command1" >
                           <span class="glyphicon glyphicon-trash">Delete |</span>
                           </asp:LinkButton>
                           <asp:LinkButton ID="lnlbtnedit" runat="server" ForeColor="Red" CommandArgument='<%# Eval("Id")+","+Eval("religion") %>' CommandName="ViewDetails" OnCommand="lnlbtnedit_Command1" >
                           <span class="glyphicon glyphicon-edit"> Edit</span>
                           </asp:LinkButton>
                   </ItemTemplate>
                   </asp:TemplateField>
               </Columns>
               <EmptyDataRowStyle Font-Bold="true" Font-Size="14pt" ForeColor="Red" />
                <%--<HeaderStyle CssClass="gridViewHeader" />--%>
                <RowStyle CssClass="gridViewRow" />
                <AlternatingRowStyle CssClass="gridViewAltRow" />
                <PagerStyle CssClass="gridViewPager" />
            </asp:GridView>
        </div>
        <div class="col-lg-4"><fieldset id="Fieldset1" runat="server"><legend>Blood Group</legend><br />
        <span>Add Blood Groop </span><asp:TextBox runat="server" ID="txtbld" CssClass="form-control"></asp:TextBox><br />
            <asp:Button runat="server" Text="ADD" ID="btnbld" CssClass="btn btn-primary" OnClick="btnbld_Click" />
            <asp:Button runat="server" Text="Update" ID="btnbldupdate" CssClass="btn btn-primary" OnClick="btnbldupdate_Click" />
        </fieldset>
       <br /> 
            <asp:GridView ID="grdblod" EmptyDataText="No Data Found" runat="server" AutoGenerateColumns="false" CssClass="footable" 
              GridLines="None"
              AllowPaging="true" DataKeyNames="Id"
              PageSize="6" OnPageIndexChanging="grdblod_PageIndexChanging"  >
               <Columns>
                   <asp:BoundField HeaderText="Sr.No" DataField="Id" />
                   <asp:BoundField HeaderText="Blood Groop" DataField="bloodgrp" />
                   <asp:TemplateField HeaderText="Delete">
                   <ItemTemplate>
                           <asp:LinkButton ID="lnkbtnupdate" runat="server" ForeColor="Red" CommandArgument='<%# Eval("Id") %>' CommandName="ViewDetails" OnCommand="lnkbtnupdate_Command2"  >
                           <span class="glyphicon glyphicon-trash">Delete |</span>
                           </asp:LinkButton>
                           <asp:LinkButton ID="lnlbtnedit" runat="server" ForeColor="Red" CommandArgument='<%# Eval("Id")+","+Eval("bloodgrp") %>' CommandName="ViewDetails" OnCommand="lnlbtnedit_Command2"  >
                           <span class="glyphicon glyphicon-edit"> Edit</span>
                           </asp:LinkButton>
                   </ItemTemplate>
                   </asp:TemplateField>
               </Columns>
               <EmptyDataRowStyle Font-Bold="true" Font-Size="14pt" ForeColor="Red" />
                <%--<HeaderStyle CssClass="gridViewHeader" />--%>
                <RowStyle CssClass="gridViewRow" />
                <AlternatingRowStyle CssClass="gridViewAltRow" />
                <PagerStyle CssClass="gridViewPager" />
            </asp:GridView>
        </div> 
        </div>   
        <div class="col"></div>          
     <%--</form>--%>
    <script type="text/javascript">
        $(function () {
            $('[id*=grddept]').footable();
        });
    </script>
    <script type="text/javascript">
        $(function () {
            $('[id*=grdreli]').footable();
        });
    </script>
    <script type="text/javascript">
        $(function () {
            $('[id*=grdblod]').footable();
        });
    </script>
</body>
</html>
</asp:Content>