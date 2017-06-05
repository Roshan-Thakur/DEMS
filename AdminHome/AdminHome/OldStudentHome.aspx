<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="OldStudentHome.aspx.cs" Inherits="AdminHome.OldStudentHome" %>
<asp:Content ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <form id="form1" runat="server" class="form-group">
    <div class="container">
            <div class="panel">
        <div class="panel-heading" style="background-color:skyblue; color:white">Student Information</div><br />
        <div style="float: left; width: 25%; margin: 10px 0; padding: 0px 25px">
            <asp:Image ID="Image1" runat="server" CssClass="img-thumbnail" style="height:120px; width:100px;" />
            <br />
            <asp:FileUpload ID="img" runat="server" />
        </div>
        <div class="col-lg-8">
                <div style="float: left; width: 75%" >
                    <asp:Label runat="server" ID="lbladmission" ForeColor="Red"></asp:Label>
                    <table class="tbl-controlPanel">
                        <tr>
                            <td>AdmissionForm No<span class="required">*</span></td>
                            <td>
                                <asp:TextBox runat="server"  ID="txtAdmissionNo"  style="width:80%"></asp:TextBox>
                              
                            </td>
                            <td>Date<span class="required">*</span></td>
                            <td>
                               <asp:TextBox runat="server" ID="date" style="width:145%"></asp:TextBox>    
                        </tr>
                        <tr>
                            <td>Student Name<span class="required">*</span></td>
                            <td>
                                <asp:TextBox runat="server" ID="txtStudentname" style="width:80%"></asp:TextBox>
                               
                            </td>
                             <td>Batch<span class="required">*</span></td>
                            <td>
                                <select id="ddlBatch" class="input-control" style="width:145%">
		                            <option value="0">...Select...</option>
		                            <option value="1">Six2015</option>
		                            <option value="8">Nine2016</option>
		                            <option value="4">HSC2016</option>
		                            <option value="7">Ten2016</option>
		                            <option value="5">Degree2017</option>
		                            <option value="2">Degree2016</option>
		                            <option value="3">Honurs2016</option>
	                                </select><br />
                            </td>
                        </tr>
                        <tr>
                            <td>Class<span class="required">*</span></td>
                            <td>
                                <select id="ddlClass" class="input controlLength" style="width:80%;" height:125%">
		                        <option selected="selected" value="0">...Select...</option>
		                        <option value="1">Six</option>
		                        <option value="2">Eight</option>
		                        <option value="3">Nine</option>
		                        <option value="5">Ten</option>
		                        <option value="4">HSC</option>
		                        <option value="6">BussinessManagmentdlfat</option>
		                        <option value="7">Degree</option>
		                        <option value="8">Honurs</option>
	                            </select>
                            </td>
                            <td>Group<span class="required">*</span></td>
                            <td>
                                <select id="ddlGroup" class="input controlLength" style="width:145%; height:125%">
                                </select>
                            </td>                                                      
                        </tr>
                        <tr>
                             <td>Shift<span class="required">*</span></td>
                            <td>
                                <select id="dlShift" class="input controlLength" style="width:80%;" height:155%">
		                        <option value="0">...Select...</option>
		                        <option value="1">Morning</option>
		                        <option value="2">Day</option>
		                        <option value="3">Evening</option>
	                            </select>
                            </td>
                            <td>Section<span class="required">*</span></td>
                                <td>
                                    <select id="ddlSection" class="input controlLength" style="width:145%;">
	                                </select>
                                </td>                            
                        </tr>
                        <tr>
                             <td>Roll<span class="required">*</span> </td>
                            <td>
                                <asp:TextBox runat="server" ID="txtRoll" style="width:80%;"></asp:TextBox>
                               
                            </td>  
                            <td>Gender<span class="required">*</span></td>
                            <td>
                                <select name="ctl00$MainContent$ddlGender" id="ddlGender" class="input controlLength" style="width:145%;">
		                        <option value="Male">Male</option>
		                        <option value="Female">Female</option>
	                            </select>
                            </td>                                                     
                        </tr>
                        <tr>
                             <td>Date of Birth</td>
                            <td>
                                <asp:TextBox runat="server" ID="txtDateOfBirth"  style="width:80%;"></asp:TextBox>
                            </td>
                            <td>Religion</td>
                            <td>
                                <select id="dlReligion" class="input controlLength" style="width:145%;"  >
		                            <option value="Islam">Islam</option>
		                            <option value="Hindu">Hindu</option>
		                            <option value="Christian">Christian</option>
		                            <option value="Buddhist">Buddhist</option>
		                            <option value="Upozati">Upozati</option>
		                            <option value="Others">Others</option>
	                                </select>
                            </td>                           
                        </tr>
                        <tr>
                             <td>Mobile</td>
                            <td>
                                <asp:TextBox runat="server" ID="lblMobile" ReadOnly="false" style="width:18%;"  Text="+91"></asp:TextBox>
                                <asp:TextBox runat="server" ID="MainContent_txtmobile" MaxLength="11" style="width:60%;"></asp:TextBox>
                               </td>                            
                            <td>Admission Year</td>
                            <td>
                                <select id="ddlSession" class="input controlLength" style="width:145%;" >
		                            <option value="2000">2000</option>
		                            <option value="2001">2001</option>
		                            <option value="2002">2002</option>
		                            <option value="2003">2003</option>
		                            <option value="2004">2004</option>
		                            <option value="2005">2005</option>
		                            <option value="2006">2006</option>
		                            <option value="2007">2007</option>
		                            <option value="2008">2008</option>
		                            <option value="2009">2009</option>
		                            <option value="2010">2010</option>
		                            <option value="2011">2011</option>
		                            <option value="2012">2012</option>
		                            <option value="2013">2013</option>
		                            <option value="2014">2014</option>
		                            <option selected="selected" value="2017">2017</option>
		                            <option value="2018">2018</option>
	                            </select>
                            </td>                           
                        </tr>
                        <tr>
                             <td>Blood Group</td>
                            <td>
                                <select name="ctl00$MainContent$dlBloodGroup" id="dlBloodGroup" class="input controlLength" >
		                        <option value="Unknown">Unknown</option>
		                        <option value="A+">A+</option>
		                        <option value="A-">A-</option>
		                        <option value="B+">B+</option>
		                        <option value="B-">B-</option>
		                        <option value="AB+">AB+</option>
		                        <option value="AB-">AB-</option>
		                        <option value="O+">O+</option>
		                        <option value="O-">O-</option>
	                            </select>
                            </td>
                            <td></td>
                        </tr>
                    </table>
                </div>           </div>
       
        <div class="clearfix"></div>
    </div>
 <div id="MainContent_UpdatePanel1">
            <div class="panel">
                <div class="panel-heading" style="background-color:skyblue; color:white">
                    Parents Information
                </div><br />
                <table class="tbl-controlPanel1">
                    <tr>
                        <td>Father&#39;s Name<span class="required">*</span></td>
                        <td>
                            <asp:TextBox runat="server" ID="txtfatherName"  style="Width:80%"></asp:TextBox>
                            
                        </td>
                        <td>Father&#39;s Occupation</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtFatherOccupation"  style="width:80%;"></asp:TextBox>
                           
                        </td>
                        <td>Yearly Income</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtFatherYearlyIncome"  style="width:80%;" ></asp:TextBox >
                            
                        </td>
                    </tr>
                    <tr>
                        <td>Mother&#39;s Name<span class="required">*</span></td>
                        <td>
                            <asp:TextBox runat="server" ID="txtMotherName"  style="width:80%;"></asp:TextBox>
                          
                        </td>
                        <td>Mother&#39;s Occupation</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtMotherOccupation"  style="width:80%;"></asp:TextBox>
                        </td>
                        <td>Yearly Income</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtMotherYearlyincome"  style="width:80%;"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Father's Mobile
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" Text="+91" runat="server" Width="15%"></asp:TextBox>
                            <asp:TextBox runat="server" ID="txtFatherMobile"  Width="65%"></asp:TextBox>
                         </td> 
                      
                        <td>Mother's Mobile
                        </td>
                        <td>
                        <asp:TextBox ID="TextBox2" Text="+91" runat="server" Width="15%"></asp:TextBox>
                        <asp:TextBox runat="server" ID="txtMotherMobile"  Width="65%"></asp:TextBox>
                        </td>
                      
                        <td>Home Phone
                        </td>
                        <td>
                           <asp:TextBox ID="TextBox3"  Text="+91" runat="server" Width="15%"></asp:TextBox>
                        <asp:TextBox runat="server" ID="txtHomeMobile"  Width="65%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Father's Email
                        </td>

                        <td>
                            <asp:TextBox runat="server" ID="txtFatherEmail"  style="width:80%;"></asp:TextBox>
                          
                        </td>
                        <td>Mother's Email
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtMotherEmail"   style="width:80%;"></asp:TextBox>
                           
                        </td>
                        <td>&nbsp;
                        </td>
                        <td>
                            
                        </td>
                    </tr>
                </table>
            </div>
        
</div>
         
                    <div class="panel">
                          <div class="panel-heading" style="background-color:skyblue; color:white">Guardian Information
                         <div style="float:right">
                        <span class="chkBox"><asp:CheckBox runat="server" ID="checkbox1" /><label for="chkFather"> Father ?</label></span>
                        <span class="chkBox"><asp:CheckBox runat="server" ID="checkbox2" /><label for="chkMother">  Mother ?</label></span>
                        <span class="chkBox"><asp:CheckBox runat="server" ID="checkbox3" /><label for="chkOther"> Other ?</label></span></div>        
                        </div>
                    </div>
        
                   
                <div id="Div3">
		
                    <table class="tbl-controlPanel1">
                        <tr>
                            <td>Guardian Name<span class="required">*</span> </td>
                            <td>
                                <asp:TextBox runat="server" ID="txt1"></asp:TextBox>
                                
                            </td>
                            <td>Relation <span class="required">*</span></td>
                            <td>
                                <select id="Select1" class="input controlLength">
			                        <option value="Father">Father</option>
			                        <option value="Mother">Mother</option>
			                        <option value="Uncle">Uncle</option>
			                        <option value="Aunt">Aunt</option>
			                        <option value="GrandFather">GrandFather</option>
			                        <option value="GrandMother">GrandMother</option>
			                        <option value="Brother">Brother</option>
			                        <option value="Sister">Sister</option>
			                        <option value="Cousin">Cousin</option>
		                            </select>
                            </td>
                            <td>Mobile No<span class="required">*</span> </td>
                            <td>    <br />                            
                                <asp:TextBox runat="server" ID="Text2" Width="18%" Text="+91"></asp:TextBox>
                                <asp:TextBox runat="server" ID="Text3" Width="65%"></asp:TextBox>
                               
                            </td>
                        </tr>
                        <tr>
                            <td>Guardian Address </td>
                            <td>
                                <asp:TextBox runat="server" ID="Text4"></asp:TextBox>
                                
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td></td>
                            <td></td>
                        </tr>
                    </table>
               </div> 

      <div class="panel">
        <div class="panel-heading" style="background-color:skyblue; color:white">Permanent address</div>
        <div style="float: left; width: 25%; margin: 10px 0; padding: 0px 25px">
                <table class="tbl-controlPanel1">
                    <tr>
                        <td>Village </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtPAVillage"></asp:TextBox>
                           
                        </td>
                        <td>Post Office </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtPAPostOffice"></asp:TextBox>
                          
                        </td>
                        <td>Thana/Upazila </td>
                        <td>
                            <select id="ddlPAThana" class="input controlLength">
		                        <option selected="selected" value="0">...Select...</option>
	                            </select><br />
                        </td>
                    </tr>
                    <tr>
                        <td>District </td>
                        <td>
                            <select  id="ddlPADistrict" class="input controlLength">
		                        <option selected="selected" value="0">...Select...</option>
		                        <option value="108">Comilla</option>
		                        <option value="105">Dhaka</option>
		                        <option value="109">Dinajpur</option>
		                        <option value="106">Feni</option>
		                        <option value="107">Gazipur</option>
		                        <option value="110">Jamalpur</option>
	                            </select>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td></td>
                        <td></td>
                    </tr>
                </table>
            </div>
      </div>
                <%-- Same Address --%>
 <br /><br /><br />
        <div class="panel">
        <div class="panel-heading" style="background-color:skyblue; color:white">Present Address
            <div style="float: right">
               <asp:CheckBox runat="server" ID="chkSameAddress" />
                                        
                        <label for="chkSameAddress">Same</label>
                    </div>
                </div><br />
                <table class="tbl-controlPanel1">
                    <tr>
                        <td>Village</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtTAVillage" ></asp:TextBox>
                           
                        </td>
                        <td>Post Office </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtTAPostOffice"></asp:TextBox>
                            
                        </td>
                        <td>Thana/Upazila </td>
                        <td>
                            <select id="ddlTAThana" class="input controlLength">
		                                <option selected="selected" value="0">...Select...</option>
	                        </select>
                        </td>
                    </tr>
                    <tr>
                        <td>District </td>
                        <td>
                            <select  id="ddlTADistrict" class="input controlLength">
		                        <option selected="selected" value="0">...Select...</option>
		                        <option value="108">Comilla</option>
		                        <option value="105">Dhaka</option>
		                        <option value="109">Dinajpur</option>
		                        <option value="106">Feni</option>
		                        <option value="107">Gazipur</option>
		                        <option value="110">Jamalpur</option>
	                        </select>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td></td>
                        <td></td>
                    </tr>
                </table>
            </div>
         <div class="panel">
        <div class="panel-heading" style="background-color:skyblue; color:white">
                    Other Information
                    <div style="float: right">
                        <asp:CheckBox runat="server" ID="chkNotApplicable" />
                        
                        <label for="chkNotApplicable">Not applicable</label>
                    </div>
                </div><br />
                <table class="tbl-controlPanel2">
                    <tr>
                        <td>Select Exam</td>
                        <td>
                            <select  id="ddlExam" class="input controlLength">
		                        <option value="P.S.C">P.S.C</option>
		                        <option value="J.S.C">J.S.C</option>
	                        </select>
                        </td>
                        <td>Roll_No</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtPSCRoll" CssClass="input-control"></asp:TextBox>
                        </td>
                        <td>Passing Year</td>
                        <td>
                            <select  id="ddlPassingYear" class="input-control">
		                        <option value="2013">2013</option>
		                        <option value="2014">2014</option>
		                        <option value="2015">2015</option>
	                        </select>
                        </td>
                    </tr>
                    <tr>
                        <td>GPA</td>
                        <td>
                            <input  type="text" id="txtGpa" class="input controlLength" />
                        </td>
                        <td>Board</td>
                        <td>
                            <select id="ddlBoard" class="input controlLength">
		                    <option value="Dhaka">Dhaka</option>
		                    <option value="Comilla">Comilla</option>
		                    <option value="Mymensing">Mymensing</option>
	                    </select>
                        </td>
                        <td>Date</td>
                        <td>
                            <input type="text" id="txtTrDate" class="input controlLength" />
                            
                        </td>
                    </tr>
                    <tr>
                        <td>Previous School Name</td>
                        <td colspan="5">
                            <input type="text" id="txtPreviousSchoolName" class="input controlLength" />
                        </td>
                    </tr>
                    <tr>
                        <td>Registraton</td>
                        <td colspan="5">
                            <input  type="text" id="txtRegistration" class="input controlLength" /></td>
                    </tr>
                    <tr>
                        <td>Transfer Certificate No(if any)</td>
                        <td colspan="5">
                            <asp:TextBox runat="server" ID="txtTransferCNo"></asp:TextBox>
                            <input  type="text" id="" class="input controlLength"  />
                        </td>
                    </tr>
                    <tr>
                        <td>That class would be admission</td>
                        <td>
                            <select  id="ddlThatClass" class="input controlLength">
		                        <option value="0">...Select...</option>
		                        <option value="1">Six</option>
		                        <option value="2">Eight</option>
		                        <option value="3">Nine</option>
		                        <option value="5">Ten</option>
		                        <option value="4">HSC</option>
		                        <option value="6">BussinessManagment</option>
		                        <option value="7">Degree</option>
		                        <option value="8">Honurs</option>
	                        </select><br />
                        </td>
                    </tr>
                </table>
            </div>
        

   <div class="panel">       
        <table class="table">
            <tr>
                <td>
                    <asp:Button runat="server" CssClass="btn btn-primary" Text="Submit" ID="btnsave" />                     
                </td>
                <td>
                    <div class="container">
                            <asp:Button runat="server" CssClass="btn btn-primary" Text="Clear" ID="btnClear" />
                    </div>
                </td>
            </tr>
        </table>           
    </div>
        </div>
    </form>
</body>
</html>
    </asp:Content>