<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="FreeCatogry.aspx.cs" Inherits="AdminHome.AttendenceSystem.FeeMgt.FreeCatogry" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <form id="form1" runat="server">
     <div class="container" style="background-color:whitesmoke; margin-top:50px;">
                <input type="hidden" name="ctl00$MainContent$lblFeesCateId" id="lblFeesCateId" />
            <div class="">
                <div class="row">
                    <div class="col-md-7"><h4 class="text-right" style="float:left">Fees Category Information</h4></div>
                    <div class="col-md-5"></div>
                </div>
                <div class="row">
                    <div class="col-md-7">
                        <asp:Label runat="server" ID="lblid" Visible="false"></asp:Label>
                       <asp:Label runat="server" ID="lblmsg" ForeColor="Red"></asp:Label>
                       <asp:GridView runat="server" ID="gvTerritories" AllowPaging="true" DataKeyNames="FId" OnPageIndexChanging="gvTerritories_PageIndexChanging" PageSize="3" AutoGenerateColumns="false"  EmptyDataText="Data Not Found"  CssClass="footable" CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="None">
            <Columns>
                   <asp:BoundField HeaderText="Batch Name" DataField="batch"/>
                   <asp:BoundField HeaderText="FeeCatName" DataField="feecategory"/>
                   <asp:BoundField HeaderText="Start Date" DataField="fgstartdate" />
                   <asp:BoundField HeaderText="End Date" DataField="fgenddate"/>
                   <asp:BoundField HeaderText="Fee Fine" DataField="feefine"/>
                   <asp:BoundField HeaderText="Created On" DataField="fgcreateddate"/>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkbtn" runat="server" CssClass="btn btn-info btn-xm" CommandArgument='<%# Eval("batch")+","+ Eval("feecategory")+","+Eval("fgstartdate")+","+Eval("fgenddate")+","+Eval("FId")+","+Eval("feefine") %>' CommandName="viewname" OnCommand="lnkbtn_Command" >
                            <span class="glyphicon glyphicon-pencil"></span>
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
                    <div class="col-md-5">
                        <div id="MainContent_updatepanel1">
	
                                <div class="tgPanel">

                                    <div class="panel-heading" style="background-color:skyblue">Fees Category</div>
                                    <div class="batchname" style="margin-left:10px;margin-top:10px">
                                        Batch Name*
                                        <asp:DropDownList ID="ddlbatch" runat="server" CssClass="form-control">
                                            <asp:ListItem Value="">None</asp:ListItem>
                                        </asp:DropDownList>
                                        Fees Category
                                        <asp:TextBox runat="server" ID="txtFeesCatName" CssClass="form-control"></asp:TextBox>
                                        Date of Start*<asp:TextBox runat="server" ID="txtDateStart" CssClass="form-control txtDateStart"></asp:TextBox>
                                        Date of End*<asp:TextBox runat="server" ID="txtDateEnd" CssClass="form-control txtDateEnd"></asp:TextBox>
                                        Fine Amount* <asp:TextBox runat="server" ID="txtFeesFine" CssClass="form-control"></asp:TextBox> 
                                        <asp:RegularExpressionValidator ID="rqdfine" ControlToValidate="txtFeesFine" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator> 
                                        <%--<asp:Button runat="server" ID="btnsave" Text="Save" CssClass="btn btn-primary" OnClick="btnsave_Click"  />   --%>
                                        <asp:Button runat="server" ID="btnUpdate" Text="Update" CssClass="btn btn-primary" OnClick="btnUpdate_Click"  />   
                                                                     
                                    </div>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
       </div>
    </form>
     <style>
        .form-control {
           display: block;
            width: 55%;
            margin-left: 90px;
            margin-top: -13px;
        }
         .btn-primary 
         {
             margin-left:90px;
             margin-top:2px;
             Width:55%;
         }
    </style>
     <%-- Script to responsiv grid --%>
    <script type="text/javascript">
        $(function () {
            $('[id*=gvTerritories]').footable();
        });
    </script>
    <%-- Time and Date --%>
    <script type="text/javascript">
        $(function () {
            $(".txtDateEnd").datepicker();
            $(".txtDateStart").datepicker();
        });
</script>
</body>
</html>
</asp:Content>