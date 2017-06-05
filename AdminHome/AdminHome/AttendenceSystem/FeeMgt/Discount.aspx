<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="Discount.aspx.cs" Inherits="AdminHome.AttendenceSystem.FeeMgt.Discount" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <form id="form1" runat="server">
    <div class="container" style="background-color:whitesmoke;margin-top:50px;">
           <div class="row">
              <div class="col-md-6">              
                    <div class="panel-heading" style="background-color:skyblue">Discount Set</div>                  
	                  <div style="margin-left:50px;margin-top:20px" >Shift
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                            <asp:ListItem>..SElect...</asp:ListItem>
                            <asp:ListItem>Morning</asp:ListItem>
                            <asp:ListItem>Evening</asp:ListItem>
                            <asp:ListItem>day</asp:ListItem>
                        </asp:DropDownList>
                        <div style="margin-left:260px;margin-top:-30px" >Batch
                             <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" Width="60%">
                            <asp:ListItem>..SElect...</asp:ListItem>
                            <asp:ListItem>Six2015</asp:ListItem>
                            <asp:ListItem>Nine2016</asp:ListItem>
                            <asp:ListItem>HSC2016</asp:ListItem>
                            <asp:ListItem>Ten2016</asp:ListItem>
                            <asp:ListItem>Degree2017</asp:ListItem>
                            <asp:ListItem>Degree2016</asp:ListItem>
                            <asp:ListItem>Honurs2016</asp:ListItem></asp:DropDownList></div></div>
	                      <div style="margin-left:50px;margin-top:20px">Group
                            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control">
                            <asp:ListItem>..SElect...</asp:ListItem></asp:DropDownList> 
                          <div  style="margin-left:260px;margin-top:-30px">Section                               
                             <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control"  Width="60%">
                             <asp:ListItem>..SElect...</asp:ListItem></asp:DropDownList></div></div>
                          <div  style="margin-left:50px;margin-top:20px">Roll
                              <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                            <div style="margin-left:260px;margin-top:-30px">Particulars
                               <asp:DropDownList ID="DropDownList5" runat="server" CssClass="form-control" Width="60%">
                                <asp:ListItem>Tiffin Fee</asp:ListItem>
                                 <asp:ListItem>Software Fee</asp:ListItem>
                                 <asp:ListItem>Others</asp:ListItem>
                                  <asp:ListItem>Monthly Fee</asp:ListItem>
                                  <asp:ListItem>Library</asp:ListItem>
                                   <asp:ListItem>Incourse Exam Fe</asp:ListItem>
                                   <asp:ListItem>Form filup</asp:ListItem>
                                    <asp:ListItem>Admit Card Fee</asp:ListItem>
                                     </asp:DropDownList></div></div>
                                  
                               <div style="margin-left:50px;margin-top:20px">  Discount (%)
                                  <asp:TextBox runat="server" ID="txtDiscountAmpoount" CssClass="form-control"></asp:TextBox> 
                                   <div style="margin-left:260px;margin-top:-30px">
                                   <asp:Button ID="Button1" runat="server" Text="Add" CssClass="btn btn-primary" />
                                   <asp:Button ID="Button2" runat="server" Text="Save" CssClass="btn btn-primary" />
                                   <asp:Button ID="Button3" runat="server" Text="Clear" CssClass="btn btn-primary"/></div></div>                                      
                            <div id="divscroll" style="height: 200px; max-height: 200px; overflow: auto; overflow-x: hidden;margin-top:10px">                            
		                       <table class="table table-bordered"  border="1" id="gvDiscount" style="border-collapse:collapse;">
		                        	<tr class="panel-heading" style="background-color:skyblue;font-size:16px">
				                       <th>Particulars Name</th>
                                       <th>Discount (%)</th>
                                        <th scope="col" ></th>
			                        </tr></table></div>
                            </div>
            <div class="col-md-6">                             
              	            <div class="panel-heading" style="background-color:skyblue">Discount List</div>                  
	                  <div style="margin-left:50px;margin-top:20px" >Shift
                        <asp:DropDownList ID="DropDownList6" runat="server" CssClass="form-control">
                            <asp:ListItem>..SElect...</asp:ListItem>
                            <asp:ListItem>Morning</asp:ListItem>
                            <asp:ListItem>Evening</asp:ListItem>
                            <asp:ListItem>day</asp:ListItem>
                        </asp:DropDownList>
                        <div style="margin-left:260px;margin-top:-30px" >Batch
                             <asp:DropDownList ID="DropDownList7" runat="server" CssClass="form-control" Width="60%">
                            <asp:ListItem>..SElect...</asp:ListItem>
                            <asp:ListItem>Six2015</asp:ListItem>
                            <asp:ListItem>Nine2016</asp:ListItem>
                            <asp:ListItem>HSC2016</asp:ListItem>
                            <asp:ListItem>Ten2016</asp:ListItem>
                            <asp:ListItem>Degree2017</asp:ListItem>
                            <asp:ListItem>Degree2016</asp:ListItem>
                            <asp:ListItem>Honurs2016</asp:ListItem></asp:DropDownList></div></div>
	                      <div style="margin-left:50px;margin-top:20px">Group
                            <asp:DropDownList ID="DropDownList8" runat="server" CssClass="form-control">
                            <asp:ListItem>..SElect...</asp:ListItem></asp:DropDownList> 
                          <div  style="margin-left:260px;margin-top:-30px">Section                               
                             <asp:DropDownList ID="DropDownList9" runat="server" CssClass="form-control"  Width="60%">
                             <asp:ListItem>..SElect...</asp:ListItem></asp:DropDownList></div></div>
                          <div  style="margin-left:50px;margin-top:20px">Roll
                             <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                               <div style="margin-left:260px;margin-top:-30px">
                                   <asp:Button ID="Button4" runat="server" Text="Search" CssClass="btn btn-primary" />
                                   <asp:Button ID="Button5" runat="server" Text="Edit" CssClass="btn btn-primary" />
                                   <asp:Button ID="Button6" runat="server" Text="Refresh" CssClass="btn btn-primary"/></div>
                           </div>
                          
                <div id="div1" style="height: 200px; max-height: 200px; overflow: auto; overflow-x: hidden;margin-top:60px">                            
		        <div  class="panel-heading" style="background-color:skyblue">Searching Result</div> 
                   <h3>NO DISCOUNT LIST AVAILABLE   </h3>           
                </div>
           </div>
       </div></div>                       
    </form>
     <style>
        .form-control {
            display: block;
            width: 33%;
            margin-left: 46px;
            margin-top: -23px;
        }
    </style>
</body>
</html></asp:Content>
