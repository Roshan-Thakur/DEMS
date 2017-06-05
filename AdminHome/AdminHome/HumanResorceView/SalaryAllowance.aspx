<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="SalaryAllowance.aspx.cs" Inherits="AdminHome.HumanResorceView.SalaryAllowance" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<body>
     
    <%--<form id="form1" runat="server">--%>
    <asp:Label runat="server" ID="lblmsg" ForeColor="Red"></asp:Label>
    <div class="container">
         <div class="col-lg-5">
            <div class="panel-heading" style="background-color:skyblue;margin-top:55px">Salary Allowance Type</div>
            <div class="allowance" style=" margin-top:20px">Allowance Type
            <asp:TextBox runat="server" ID="txttype" CssClass="form-control"></asp:TextBox><asp:Label runat="server" ID="lbl" Visible="false"></asp:Label>
            </div> 
            <div class="allowance" style="margin-top:20px">Percentage
            <asp:TextBox runat="server" ID="txtpercent" CssClass="form-control"></asp:TextBox>
            </div> 
            <asp:CheckBox runat="server" ID="chkstatus" /><span> Active</span>
            <div class="allowance" style="margin-top:20px">
            <asp:Button runat="server" ID="btnsave" Text="Save" CssClass="btn btn-primary" OnClick="btnsave_Click" />
            <asp:Button runat="server" ID="btnupdate" Text="Update" CssClass="btn btn-primary" OnClick="btnupdate_Click" />
            <asp:Button runat="server" ID="btndelete" Text="Delete" CssClass="btn btn-primary" OnClick="btndelete_Click" />
            </div>
        </div>
        <div class="col-lg-7">
        <div class="col-lg-7" style="width:100%; margin-top:55px">
        <asp:GridView runat="server" ID="gvTerritories" AllowPaging="true" PageSize="3" OnPageIndexChanging="gvTerritories_PageIndexChanging" AutoGenerateColumns="false"  DataKeyNames="Id"  EmptyDataText="Data Not Found"  CssClass="footable" CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="None">
            <Columns>
                   <asp:BoundField HeaderText="Allowance Type" DataField="allownctype"/>
                   <asp:BoundField HeaderText="Percentage" DataField="percentage"/>
                   <asp:BoundField HeaderText="Status" DataField="status" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkbtnupdate" runat="server" ForeColor="Red" OnClick="lnkbtnupdate_Click" CommandArgument='<%# Eval("allownctype")+","+Eval("percentage")+","+Eval("status")+","+Eval("Id") %>' >
                            <span class="glyphicon glyphicon-pencil">Edit</span>
                           </asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
            </Columns> 
               <EmptyDataRowStyle Font-Bold="true" Font-Size="14pt" ForeColor="Red" />
                <RowStyle CssClass="gridViewRow" />
                <AlternatingRowStyle CssClass="gridViewAltRow" />
                <PagerStyle CssClass="gridViewPager" />
        </asp:GridView>
        </div>
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
