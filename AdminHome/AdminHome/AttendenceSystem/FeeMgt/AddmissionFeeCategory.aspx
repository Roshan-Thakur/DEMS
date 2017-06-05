<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="AddmissionFeeCategory.aspx.cs" Inherits="AdminHome.AttendenceSystem.FeeMgt.AddmissionFeeCategory" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
      <style>
            input, optgroup, select, textarea {
            margin: 0;
            width: 110px;
        }
    </style>
    <form id="form1" runat="server">
       <div class="container" style="background-color:whitesmoke;margin-top:50px;" >
         <div id="MainContent_updatepanelFeesSett">
	
            <div class="">
                <div class="row">
                    <div class="col-md-7">
                        <h4 class="text-right" style="float:left">Admission Fees Category Information</h4>                
                    </div>
                    <div class="col-md-5"></div>
                </div>
                <div class="row">

                    <div class="col-md-7">
                       <asp:Label runat="server" ID="lblid" Visible="false"></asp:Label>
                       <asp:Label runat="server" ID="lblmsg" ForeColor="Red"></asp:Label>
                       <asp:GridView runat="server" ID="gvTerritories" AllowPaging="true" DataKeyNames="FId" OnPageIndexChanging="gvTerritories_PageIndexChanging" PageSize="3" AutoGenerateColumns="false"  EmptyDataText="Data Not Found"  CssClass="footable" CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="None">
            <Columns>
                   <asp:BoundField HeaderText="ClassName" DataField="classname"/>
                   <asp:BoundField HeaderText="Fee CatName" DataField="feecategory"/>
                   <asp:BoundField HeaderText="Start Date" DataField="fgstartdate" />
                   <asp:BoundField HeaderText="End Date" DataField="fgenddate"/>
                   <asp:BoundField HeaderText="Created On" DataField="fgcreateddate"/>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkbtn" runat="server" CssClass="btn btn-info btn-xm" CommandArgument='<%# Eval("classname")+","+ Eval("feecategory")+","+Eval("fgstartdate")+","+Eval("fgenddate")+","+Eval("FId") %>' CommandName="viewname" OnCommand="lnkbtn_Command" >
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
                        <div class="tgPanel">
                            <div class="panel-heading" style="background-color:skyblue">Fees Category</div>
                            <table class="tbl-controlPanel">
                                <tr>
                                    <td>Class Name*
                                    </td>
                                    <td><br />
                                      <asp:DropDownList runat="server" ID="ddlclassname" CssClass="form-control"></asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Fees Category*
                                    </td>
                                    <td><br />
                                 <asp:TextBox runat="server" ID="txtFeesCatName" CssClass="form-control"></asp:TextBox>
                                 
                                    </td>
                                </tr>
                                <tr>
                                    <td>Date of Start*
                                    </td>
                                    <td><br />
                                      <asp:TextBox runat="server" ID="txt" CssClass="form-control txt"></asp:TextBox>
                                     
                                    </td>
                                </tr>
                                <tr>
                                    <td>Date of End*
                                    </td>
                                    <td><br />
                                      <asp:TextBox runat="server" ID="txtend" CssClass="form-control txtdob"></asp:TextBox>
                                    </td>
                                </tr>
                               
                                <tr>
                                    <td></td>
                                    <td><br />
                                       <asp:Button runat="server" Text="Save" ID="btnSave" CssClass="btn btn-primary" OnClick="btnSave_Click" Width="100%" />
                                       <asp:Button ID="btupdate" runat="server" Text="Update" CssClass="btn btn-primary" Width="100%" OnClick="btupdate_Click" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        
</div>
        </div>
    </form>
     <%-- Script to responsiv grid --%>
    <script type="text/javascript">
        $(function () {
            $('[id*=gvTerritories]').footable();
        });
    </script>
    <%-- Time and Date --%>
    <script type="text/javascript">
        $(function () {
            $(".txt").datepicker();
            $(".txtdob").datepicker();
        });
</script>
</body>
</html>
</asp:Content>