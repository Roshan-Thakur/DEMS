<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="AddmissnFeeParti.aspx.cs" Inherits="AdminHome.AttendenceSystem.FeeMgt.AddmissnFeeParti" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
     <style>
        .form-control {
            display: block;
            width: 38%;
            margin-left: 167px;
            margin-top: -21px;
            height: 34px;
        }
   
    </style>
    <form id="form1" runat="server">
      <div class="container" style="background-color:whitesmoke">
                <div class="row">
                    <div class="col-md-12">
                        <div id="MainContent_updatepanelFeesSett">
	
                                <div class="tgPanel">
                                    <div class="panel-heading" style="background-color:skyblue">Assign Admission Particulars </div>
                                <div class="a1" style="margin-left:300px;margin-top:10px">Class Name
                                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                                                    <asp:ListItem>...Select...</asp:ListItem>
                                                    <asp:ListItem>Six2015</asp:ListItem>
                                                    <asp:ListItem>Nine2016</asp:ListItem>
                                                    <asp:ListItem>HSC2016</asp:ListItem>
                                                    <asp:ListItem>Ten2016</asp:ListItem>
                                                    <asp:ListItem>Degree2017</asp:ListItem>
                                                    <asp:ListItem>Honur2016</asp:ListItem>
                                                </asp:DropDownList></div>
                                               
                                             <div class="a2" style="margin-left:300px;margin-top:10px">   Admission Fees Category
                                     <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                                                    <asp:ListItem>...Select...</asp:ListItem></asp:DropDownList>
                                                   <div class="btncat" style="margin-left:500px;margin-top:-33px">
                                            <asp:Button ID="Button1" runat="server" Text="Add Category" CssClass="btn btn-primary" /></div>
                                                  <div class="a3" style="margin-left:0px;margin-top:10px">  Particular
                                     <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control">
                                                    <asp:ListItem>...Select...</asp:ListItem>
                                         <asp:ListItem>Tiffin Fee</asp:ListItem>
                                         <asp:ListItem>Software Fee</asp:ListItem>
                                         <asp:ListItem>Others</asp:ListItem>
                                         <asp:ListItem>Monthly Fee</asp:ListItem>
                                         <asp:ListItem>Library</asp:ListItem>
                                         <asp:ListItem>Incourse Exam</asp:ListItem>
                                         <asp:ListItem>Form filup</asp:ListItem>
                                         <asp:ListItem>Admit Card Fee</asp:ListItem>
                                         <asp:ListItem>Admission Fee</asp:ListItem>
                                    
                                       </asp:DropDownList></div>
                                    <div class="btnpar" style="margin-left:500px;margin-top:-30px">
                                           <asp:Button ID="Button2" runat="server" Text="Add Particulars" CssClass="btn btn-primary" /></div>
                                                Amount
                                         <asp:TextBox runat="server" ID="txtAmount" CssClass="form-control"></asp:TextBox>
                                                  <div class="btnadd" style="margin-left:170px;margin-top:10px">    
                                       <asp:Button runat="server" ID="btnadd" Text="Add" CssClass="btn btn-primary" /></div>
                                                  <div class="btnsave" style="margin-left:230px;margin-top:-33px"> 
                                         <asp:Button runat="server" ID="btnsave" Text="Save" CssClass="btn btn-primary" /></div>
                                                  <div class="btnclear" style="margin-left:300px;margin-top:-32px"> 
                                         <asp:Button runat="server" ID="btnclear" Text="Clear" CssClass="btn btn-primary" /></div>
                                                
                                </div>
                            
</div>
                        </div>
                        <div class="col-md-12">
                        <div class="tgPanel">

                        <div class="row">
                        <div id="MainContent_updatepanel1">
	
                                <div class="col-md-3"></div>
                                <div class="col-md-6">
                                    <div class="tgPanel">
                                        <div id="divscroll" style="min-height: 80px; overflow: auto; overflow-x: hidden;">
                                            <div>
		         </div>
                                    </div>
                                </div>
                            
</div>
                        <div class="col-md-3"></div>
                        </div> 
                            </div> 
                    </div>                    
                                          
                </div>
                        <div class="container">
                    <div id="MainContent_updatepanel2">
	
                         

                    <div class="col-md-12">
                        <div class="tgpanel">

                            <div class="table-responsive">         
  <table class="table">
    <thead>
      <tr>
        <th>Particulars</th>
        <th>Amount</th>
       
      </tr>
    </thead>
    <tbody>
      <tr>
        <td></td>
        <td></td>
     
      </tr>
    </tbody>
  </table>
  </div></div>
                <div class="row">
                            <div class="panel-heading" style="background-color:skyblue">Filter By Category</div>
                            <div class="a"  style="margin-top:10px;margin-left:300px">
                                Class
                                <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control">
                                    <asp:ListItem>...Select...</asp:ListItem>
                                    <asp:ListItem>Six2015</asp:ListItem>
                                                    <asp:ListItem>Nine2016</asp:ListItem>
                                                    <asp:ListItem>HSC2016</asp:ListItem>
                                                    <asp:ListItem>Ten2016</asp:ListItem>
                                                    <asp:ListItem>Degree2017</asp:ListItem>
                                                    <asp:ListItem>Honur2016</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="fee1" style="margin-top:10px;margin-left:300px" >	Fees Category
                                <asp:DropDownList ID="DropDownList5" runat="server" CssClass="form-control">
                                    <asp:ListItem>...Select...</asp:ListItem>
                                </asp:DropDownList>
                            </div>
        <div class="btnedit" style="margin-left:800px;margin-top:-30px">
            <asp:Button ID="Button3" runat="server" Text="Edit" CssClass="btn btn-primary" />
        </div>
                        </div>
                    </div>                   
                </div>                                
</div>
            </div>  </div></div>
    </form>
</body>
</html>
</asp:Content>