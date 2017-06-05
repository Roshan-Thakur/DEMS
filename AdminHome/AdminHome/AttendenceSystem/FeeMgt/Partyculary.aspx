<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="Partyculary.aspx.cs" Inherits="AdminHome.AttendenceSystem.FeeMgt.Partyculary" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <form id="form1" runat="server">
    <div class="container" style="background-color:whitesmoke">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-4">
                 <h4 class="text-right" style="float:left">Particulars Information</h4></div> 
                <div class="dataTables_filter_New">
                     <label style="margin-left:10px;margin-top:10px">
                         Search:
                         <asp:TextBox ID="TextBox1" runat="server" placeholder="type here" CssClass="form-control"></asp:TextBox>
                      <%--   <input type="text" style="width:168px;margin-right:-7px" class="Search_New" placeholder="type here" />--%>
                     </label>
                               
            </div>
            <div class="col-md-6"></div>
        </div>
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-4">
                <div id="MainContent_UpdatePanel1">
	
                        <div class="tgPanel">
                        <div id="MainContent_divFeesType" class="datatables_wrapper" style="width: 100%; height: auto; max-height: 350px; overflow: auto; overflow-x: hidden;">

                         <table id='tblDesignationList' class='display'  > <thead><tr><th class="panel-heading" style="background-color:skyblue">Fees Type</th>
                             <th class="panel-heading" style="background-color:skyblue">Edit</th></tr></thead>
                             <tbody>
                                 <tr>
                                     <td>
                                        <asp:TextBox runat="server" ID="r_1"></asp:TextBox>
                                         <img src='/Images/gridImages/edit.png' class='editImg'   onclick='editFeesType(1);'  />
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>
                                         <asp:TextBox runat="server" ID="r_2"></asp:TextBox>
                                           <img src='/Images/gridImages/edit.png' class='editImg'   onclick='editFeesType(1);'  />
                                     </td>
                                 </tr>
                                  <tr>
                                     <td>
                                         <asp:TextBox runat="server" ID="TextBox2"></asp:TextBox>
                                           <img src='/Images/gridImages/edit.png' class='editImg'   onclick='editFeesType(1);'  />
                                     </td>
                                 </tr>
                                  <tr>
                                     <td>
                                         <asp:TextBox runat="server" ID="TextBox3"></asp:TextBox>
                                           <img src='/Images/gridImages/edit.png' class='editImg'   onclick='editFeesType(1);'  />
                                     </td>
                                 </tr>
                                  <tr>
                                     <td>
                                         <asp:TextBox runat="server" ID="TextBox4"></asp:TextBox>
                                           <img src='/Images/gridImages/edit.png' class='editImg'   onclick='editFeesType(1);'  />
                                     </td>
                                 </tr>
                                  <tr>
                                     <td>
                                         <asp:TextBox runat="server" ID="TextBox5"></asp:TextBox>
                                           <img src='/Images/gridImages/edit.png' class='editImg'   onclick='editFeesType(1);'  />
                                     </td>
                                 </tr>
                                  <tr>
                                     <td>
                                         <asp:TextBox runat="server" ID="TextBox6"></asp:TextBox>
                                           <img src='/Images/gridImages/edit.png' class='editImg'   onclick='editFeesType(1);'  />
                                     </td>
                                 </tr>
                                  <tr>
                                     <td>
                                         <asp:TextBox runat="server" ID="TextBox7"></asp:TextBox>
                                           <img src='/Images/gridImages/edit.png' class='editImg'   onclick='editFeesType(1);'  />
                                     </td>
                                 </tr> <tr>
                                     <td>
                                         <asp:TextBox runat="server" ID="TextBox8"></asp:TextBox>
                                           <img src='/Images/gridImages/edit.png' class='editImg'   onclick='editFeesType(1);'  />
                                     </td>
                                 </tr>
                             </tbody>
                           
                             <tfoot></table></div>
                            </div>
                        <input type="hidden" name="ctl00$MainContent$lblFId" id="lblFId" />
                    
</div>
            </div>
            <div class="col-md-6">
                <div id="MainContent_UpdatePanel2">
	
                        <div class="tgPanel">
                            <div class="panel-heading" style="background-color:skyblue">Add Particulars</div>
                           Name<asp:TextBox runat="server" ID="txtname" CssClass="form-control"></asp:TextBox>  
                            <div class="aa" style="margin-top:10px;margin-left:80px">
                          <asp:Button runat="server" ID="btns" Text="Save" CssClass="btn btn-primary" />
                                 <asp:Button runat="server" ID="Button1" Text="Clear" CssClass="btn btn-primary" /></div>
                      </div>  
                       
                    
</div>
            </div>
        </div>
    </div>

    </form>
</body>
</html>
    </asp:Content>