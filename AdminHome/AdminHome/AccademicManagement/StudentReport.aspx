<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" CodeBehind="StudentReport.aspx.cs" Inherits="AdminHome.AccademicManagement.StudentReport" %>
<asp:Content runat="server" ContentPlaceHolderID="head">
 <%--<script type="text/javascript">
     $(function hello() {

         $('.btnseaech').click(function (e) {
             e.preventDefault();
             $('#mytabs a[href="#menu3"]').tab('show');
         })
        // alert('hello');

     })
     function delayer() {
         document.getElementById('<%=btnseaech.ClientID%>').click(function (e) {
             e.preventDefault();
             $('#mytabs a[href="#menu3"]').tab('show');
         });
      }
 </script>--%>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server">--%>
    <div class="container">
        <div class="row" style="width:80%">
                <ul class="nav nav-tabs" id="mytabs">
                <li class="active"><a data-toggle="tab" href="#home">Student Contact List</a></li>
                <li><a data-toggle="tab" href="#menu1">Gurdian Contact List</a></li>
                <li><a data-toggle="tab" href="#menu2">Gurdian Information</a></li>
                <li><a data-toggle="tab" href="#menu3">Parents Information</a></li>
                <li><a data-toggle="tab" href="#menu4">Admid Id</a></li>
             </ul>
                <div class="tab-content">
                     <div id="home" class="tab-pane fade in active">
                         <h3 style="text-align:center;font-weight:bold;margin-top:2px;margin-bottom:10px; color:red">Student Contact List</h3>

                                  <asp:GridView runat="server" AllowPaging="true" ShowFooter="false" ID="gvTerritories1" AutoGenerateColumns="false"  DataKeyNames="FormNo" EmptyDataText="Data Not Found" PageSize="8" CssClass="footable" CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="None" OnPageIndexChanging="gvTerritories1_PageIndexChanging">
                                            <Columns>
                                                   <asp:BoundField HeaderText="RollNo" DataField="FormNo"/>
                                                   <asp:BoundField HeaderText="Student Name" DataField="StName"/>
                                                   <asp:BoundField HeaderText="Contact" DataField="Fmobile" />
                                            </Columns> 
                                               <EmptyDataRowStyle Font-Bold="true" Font-Size="14pt" ForeColor="Red" />
                                                <RowStyle CssClass="gridViewRow" />
                                                <AlternatingRowStyle CssClass="gridViewAltRow" />
                                                <PagerStyle CssClass="gridViewPager" />
                                        </asp:GridView>
                          <p style="margin-top:10px;font-weight:bold;text-align:center">R D Engineering College Duhai,UPTU Lucknow</p>
                    </div>
                    <div id="menu1" class="tab-pane fade">
                        <h3 style="text-align:center;font-weight:bold;margin-top:2px;margin-bottom:10px;color:red">Gurdian Contact List</h3>
                                 <asp:GridView runat="server" AllowPaging="true" ShowFooter="false" ID="GridView1" AutoGenerateColumns="false"  DataKeyNames="FormNo" EmptyDataText="Data Not Found" PageSize="8" CssClass="footable" CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging">
                                                <Columns>
                                                       <asp:BoundField HeaderText="RollNo" DataField="FormNo"/>
                                                       <asp:BoundField HeaderText="GuridanRelation" DataField="GRelation"/>
                                                       <asp:BoundField HeaderText="Contact" DataField="Gmobile" />
                                                </Columns> 
                                   <EmptyDataRowStyle Font-Bold="true" Font-Size="14pt" ForeColor="Red" />
                                    <RowStyle CssClass="gridViewRow" />
                                    <AlternatingRowStyle CssClass="gridViewAltRow" />
                                    <PagerStyle CssClass="gridViewPager" />
                            </asp:GridView>
                        <p style="margin-top:10px;font-weight:bold;text-align:center">R D Engineering College Duhai,UPTU Lucknow</p>
                    </div>
                    <div id="menu2" class="tab-pane fade">
                     
                         <div class="row" style="margin-top:5px;margin-left:1%">
                            <div class="col-lg-2" style="margin-top:5px;">
                                <asp:DropDownList runat="server" ID="ddlgroll" CssClass="form-control"></asp:DropDownList>
                            </div>
                            <div class="col-lg-2" style="margin-top:5px;"><asp:Button runat="server" ID="btngsearch" Text="Search" CssClass="btn btn-primary" OnClick="btngsearch_Click" /></div>
                        </div>
                           <h3 style="text-align:center;font-weight:bold;margin-bottom:10px;margin-top:2px;color:red">Gurdian Information</h3>
                        <div class="row" style="margin-left:1%">
                            <table class="table" style="font-weight:bold;margin-top:5px;border:dotted">
                                <tr><td>Student's Name</td><td><label runat="server" id="lblstname"></label></td></tr>
                                <tr><td>Gurdian's Name</td><td><label runat="server" id="lblname"></label></td></tr>
                                <tr><td>Gurdian Relation</td><td><label runat="server" id="lblrelation"></label></td></tr>
                                <tr><td>Gurdian Contact</td><td><label runat="server" id="lblcontact"></label></td></tr>
                                <tr><td>Gurdian's Email</td><td><label runat="server" id="lblemail"></label></td></tr>
                            </table>
                        </div>
                        <p style="margin-top:10px;font-weight:bold;text-align:center">R D Engineering College Duhai,UPTU Lucknow</p>
                        </div>

                    <%-- Start Parents Information --%>


                    <div id="menu3" class="tab-pane fade">
                       
                        <%--<input type="button"  class="btn btn-primary" title="Button" id="btntest" onclick="delayer();" />--%>
                        <div class="row" style="margin-top:5px;margin-left:1%">
                            <div class="col-lg-2" style="margin-top:5px;">
                                <asp:DropDownList runat="server" ID="ddlroll" CssClass="form-control"></asp:DropDownList>
                            </div>
                            <div class="col-lg-2" style="margin-top:5px;"><asp:Button runat="server" ID="btnseaech" Text="Search" CssClass="btn btn-primary" OnClick="btnseaech_Click" /></div>
                        </div>
                         <h3 style="text-align:center;font-weight:bold;margin-bottom:10px;margin-top:2px;color:red">Parents Information</h3>
                        <div class="row" style="margin-left:1%">
                            <table class="table" style="font-weight:bold;margin-top:5px;border:dotted">
                                <tr><td>Student's Name</td><td><label runat="server" id="lblstnameP"></label></td></tr>
                                <tr><td>Father's Name</td><td><label runat="server" id="lblfname"></label></td></tr>
                                <tr><td>Mother's Name</td><td><label runat="server" id="lblmname"></label></td></tr>
                                <tr><td>Father's Email</td><td><label runat="server" id="lblfemail"></label></td></tr>
                                <tr><td>Mother's Email</td><td><label runat="server" id="lblmemail"></label></td></tr>
                                <tr><td>Father's Contact</td><td><label runat="server" id="lblfcontact"></label></td></tr>
                                <tr><td>Mother's Contact</td><td><label runat="server" id="lblmcontact"></label></td></tr>
                                <tr><td>Father's Occupations</td><td><label runat="server" id="lblfoccupation"></label></td></tr>
                                <tr><td>Mother's Occupations</td><td><label runat="server" id="lblmoccupation"></label></td></tr>
                                <tr><td>Adddress</td><td><label runat="server" id="lbladdress"></label></td></tr>
                            </table>
                        </div>
                        <p style="margin-top:10px;font-weight:bold;text-align:center">R D Engineering College Duhai,UPTU Lucknow</p>
                    </div>
                     <div id="menu4" class="tab-pane fade">
                        
                           <div class="row" style="margin-top:5px;margin-left:1%">
                            <div class="col-lg-2" style="margin-top:5px;">
                                <asp:DropDownList runat="server" ID="ddladmidroll" CssClass="form-control"></asp:DropDownList>
                            </div>
                            <div class="col-lg-2" style="margin-top:5px;"><asp:Button runat="server" ID="btnadmid" Text="Search" CssClass="btn btn-primary" OnClick="btnadmid_Click" /></div>
                        </div>
                         <h3 style="text-align:center;font-weight:bold;margin-bottom:10px;margin-top:2px;color:red">Admid ID</h3>
                        <div class="row" style="margin-left:1%;margin-top:5px;"><div class="col-lg-3"></div>
                            <div class="col-lg-3" style="border:solid;color:red;">
                              <label style="text-align:center;color:red;font-weight:bold;font-size:small;margin-bottom:2px;margin-top:5px;">R D Engineering College Duhai,UPTU Lucknow</label>
                            <img runat="server" class="img-responsive" id="img" style="width:70%;height:80px;margin-left:15%;border:solid;color:black;" src="~/ImageIcones/TeachersImages.jpg" />
                            <table class="table" style="font-weight:bold;margin-top:5px;font-size:x-small;color:black;">
                                <tr><td>Student's Name</td><td><label runat="server" id="lblcardstname"></label></td></tr>
                                <tr><td>Father's Name</td><td><label runat="server" id="lblcardfname"></label></td></tr>
                                <tr><td>Email</td><td><label runat="server" id="lblcardstemail"></label></td></tr>
                                <tr><td>Contact</td><td><label runat="server" id="lblcardphone"></label></td></tr>
                                <tr><td>RollNo</td><td><label runat="server" id="lblcardroll"></label></td></tr>
                                <tr><td>Batch</td><td><label runat="server" id="lblcardbatch"></label></td></tr>
                                <tr><td>Adddress</td><td><label runat="server" id="lblcardaddress"></label></td></tr>
                            </table>
                            </div>
                            <div class="col-lg-3" style="border:solid;color:red;">
                            <img runat="server" class="img-responsive" id="img1" style="width:100%;height:60px; border:solid;margin-top:40px;margin-bottom:50px;color:black;" src="~/ImageIcones/banners.png" />
                            <div style="text-align:center;font-weight:bold;font-size:x-small;color:black;margin-bottom:56px;">
                                <span>
                                                You are not born a winner.

                                                You are not born a loser.

                                                You are born a chooser.

                                                Life gives endless opportunities,

                                                sometimes encouragement in the form of a win and

                                                sometimes discouragement in the form of loss.

                                                The point is to take out the positive from these opportunities

                                                and choose the path to follow for future.
                                </span>
                            </div>
                            <table class="table" style="font-weight:bold;margin-top:10px;font-size:x-small">
                                <tr><td>Email</td><td><label runat="server" id="lblclgemail">: rdecuptu@gmail.com</label></td></tr>
                            </table>
                            </div>
                        </div>
                        <p style="margin-top:10px;font-weight:bold;text-align:center">R D Engineering College Duhai,UPTU Lucknow</p>
                    </div>
               </div>
            </div>
    </div>
    <%--</form>--%>
      <script type="text/javascript">
          $(function () {
              $('[id*=gvTerritories1]').footable();
          });
          $(function () {
              $('[id*=GridView1]').footable();
          });
    </script>
</body>
</html>
</asp:Content>