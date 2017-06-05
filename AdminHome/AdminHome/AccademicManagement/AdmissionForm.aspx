<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="AdmissionForm.aspx.cs" Inherits="AdminHome.AccademicManagement.AdmissionForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server" class="form-group">--%>
    <div class="container">
        <div class="panel">
        <div class="panel-heading" style="background-color:skyblue; color:white;">Student Information</div><br />
        <div class="col-lg-3" style="float: left; width:200px; margin: 10px 0; padding: 0px 25px">
           <asp:Image ID="impPrev" CssClass="img-responsive impPrev" Width="100px" Height="120px" runat="server" BorderStyle="Solid" />
           <input runat="server" type="file" name="ImageUpload" class="ImageUpload" id="ImageUpload" onchange="ShowPreview(this)" />
            <asp:Label runat="server" ID="lbladmission" ForeColor="Red"></asp:Label>
        </div>
        <div class="col-lg-9">
            <div class="col-lg-6">
                <table class="table-responsive">
                     <tr>
                            <td>AdmissionForm No</td>
                            <td><asp:TextBox runat="server"  ID="txtAdmissionNo" ReadOnly="true" style="width:100%;margin-bottom:5px;"></asp:TextBox><td>
                            
                     </tr>
                        <tr>
                            <td>Student Name*</td>
                            <td><asp:TextBox runat="server" ID="txtStudentname" style="width:100%;"></asp:TextBox></td>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtStudentname" Text="*"></asp:RequiredFieldValidator> 
                        </tr>
                        <tr>
                            <td>Class*</td>
                            <td><asp:DropDownList runat="server" ID="ddlClass" style="width:100%;margin-bottom:5px; margin-top:5px;"></asp:DropDownList></td>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlClass" Text="*"></asp:RequiredFieldValidator>                                                     
                        </tr>
                        <tr><td>Shift<span class="required">*</span></td>
                            <td><asp:DropDownList runat="server" ID="dlShift" style="width:100%;margin-bottom:5px;">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Morning</asp:ListItem>
                                <asp:ListItem>Evening</asp:ListItem>
                                <asp:ListItem>Day</asp:ListItem>
                                </asp:DropDownList></td>
                              <asp:RequiredFieldValidator ID="rd" runat="server" ControlToValidate="dlShift" Text="*"></asp:RequiredFieldValidator>                                                                             
                        </tr>
                        <tr>
                             <td>Roll<span class="required">*</span> </td>
                            <td><asp:TextBox runat="server" ID="txtRoll" style="width:100%;margin-bottom:5px;"></asp:TextBox></td>  
                                                                              
                        </tr>
                        <tr>
                            <td>Date of Birth*</td>
                            <td><asp:TextBox runat="server" ID="txtdob" CssClass="txtdob" style="width:100%;margin-bottom:5px;" ></asp:TextBox></td>
                             <asp:RequiredFieldValidator ID="rqd3" runat="server" ControlToValidate="txtdob" Text="*"></asp:RequiredFieldValidator>                                                                                                     
                        </tr>
                        <tr>
                            <td>Mobile</td>
                            <td><asp:TextBox runat="server" ID="txtMobile" MaxLength="11" style="width:100%;margin-bottom:5px;"></asp:TextBox></td>                            
                              <asp:RegularExpressionValidator ID="rglphone" runat="server" 
                             ErrorMessage="Mobile number should be 10 digit!" Text="*" ControlToValidate="txtMobile"
                             ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>                                                                                                                              
                        </tr>
                       
                </table>
            </div>
            <div class="col-lg-6">
                <table class="table-responsive" style="margin-top:20px;">

                     <tr>
                            <td>Blood Group</td>
                            <td><asp:DropDownList runat="server" style="margin-bottom:5px;" ID="ddlblood" Width="100%"></asp:DropDownList></td>
                     </tr>
                    <tr>
                         <td>Group</td>
                         <td><asp:DropDownList runat="server" style="margin-bottom:5px;" ID="ddlGroup" Width="100%"></asp:DropDownList></td> 
                    </tr>
                    <tr>
                        <td>Admission Date</td>
                        <td><asp:TextBox runat="server" ID="txtaddyr" CssClass="txt" style="margin-bottom:5px;" Width="100%"></asp:TextBox></td> 
                    </tr>
                    <tr>
                        <td>Religion</td>
                        <td><asp:DropDownList runat="server" ID="ddlreligion" style="margin-bottom:5px;width:100%"></asp:DropDownList></td>  
                    </tr>
                    <tr>
                        <td>Gender<span class="required">*</span></td>
                        <td><asp:DropDownList runat="server" style="margin-bottom:5px; width:100%" ID="ddlGender">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                            </asp:DropDownList></td>  
                    </tr>
                    <tr>
                        <td>Batch<span class="required">*</span></td>
                        <td><asp:DropDownList runat="server" ID="ddlBatch" style="margin-bottom:5px;width:100%"></asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td>Date<span class="required">*</span></td>
                        <td><asp:TextBox runat="server" ID="txtdate" CssClass="txt" style="width:100%;margin-bottom:5px;"></asp:TextBox></td> 
                    </tr>
                    <tr>
                        <td>Section<span class="required">*</span></td>
                        <td><asp:DropDownList runat="server" ID="ddlSection" style="margin-bottom:5px;" Width="100%"></asp:DropDownList></td>   
                    </tr>
                </table>
             </div>
       </div>
       
     <div class="clearfix"></div>
    </div>

      <div class="panel">
                <div class="panel-heading" style="background-color:skyblue; color:white;margin-bottom:10px;">Parents Information</div>
          <div class="container" style="width:100%">
              <div class="col-lg-4">
                    <table class="table-responsive">
                        <tr>
                        <td>Father&#39;s Name*</td>
                        <td><asp:TextBox runat="server" ID="txtfatherName"  style="Width:80%;margin-bottom:5px;margin-top:5px;"></asp:TextBox></td>
                        </tr>
                        <tr>
                        <td>Father&#39;s Occupation</td>
                        <td><asp:TextBox runat="server" ID="txtFatherOccupation"  style="width:80%;margin-bottom:5px;"></asp:TextBox></td>
                        </tr>
                        <tr>
                        <td>Mother&#39;s Name<span class="required">*</span></td>
                        <td><asp:TextBox runat="server" ID="txtMotherName" style="width:80%;margin-bottom:5px;" TextMode="SingleLine"></asp:TextBox></td>
                        </tr>
                        <tr>
                        <td>Mother&#39;s Occupation</td>
                        <td><asp:TextBox runat="server" ID="txtMotherOccupation"  style="width:80%;margin-bottom:5px;"></asp:TextBox></td>
                        </tr>
                    </table>
                </div>
                <div class="col-lg-4">
                    <table class="table-responsive">
                        <tr>
                        <td>Yearly Income</td>
                        <td><asp:TextBox runat="server" ID="txtFatherYearlyIncome"  style="width:80%;" ></asp:TextBox ></td>
                    </tr>
                    <tr>
                        <td>Yearly Income</td>
                        <td><asp:TextBox runat="server" ID="txtMotherYearlyincome"  style="width:80%;"></asp:TextBox></td>
                    </tr>
                        <tr>
                            <td>Father's Mobile</td>
                            <td><asp:TextBox ID="TextBox1" Text="+91" runat="server" Width="15%"></asp:TextBox>
                            <asp:TextBox runat="server" ID="txtFatherMobile"  Width="65%"></asp:TextBox></td>
                        </tr>
                        <tr>
                        <td>Father's Email</td>
                        <td><asp:TextBox runat="server" ID="txtFatherEmail"  style="width:80%;"></asp:TextBox></td>
                        </tr>
                    </table>
                </div>
                <div class="col-lg-4">
                    <table class="table-responsive">
                    <tr> 
                        <td>Mother's Mobile</td>
                        <td><asp:TextBox ID="TextBox2" Text="+91" runat="server" Width="15%" ReadOnly="true"></asp:TextBox>
                        <asp:TextBox runat="server" ID="txtMotherMobile"  Width="65%"></asp:TextBox>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                             ErrorMessage="Mobile number should be 10 digit!" Text="*" ControlToValidate="txtMotherMobile"
                             ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
                        </td>
                        
                    </tr>
                    <tr>
                        <td>Mother's Email</td>
                        <td><asp:TextBox runat="server" ID="txtMotherEmail"   style="width:80%;"></asp:TextBox></td>
                    </tr>
                        <tr>
                            <td>Home Phone</td>
                        <td><asp:TextBox ID="TextBox3"  Text="+91" runat="server" Width="15%" ReadOnly="true"></asp:TextBox>
                        <asp:TextBox runat="server" ID="txtHomeMobile"  Width="65%"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                             ErrorMessage="Mobile number should be 10 digit!" Text="*" ControlToValidate="txtHomeMobile"
                             ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
                        </td>
                        </tr>
                </table>
                </div>
          </div>
                
                
            </div>
        
         
        <div class="panel">
        <div class="panel-heading" style="background-color:skyblue; color:white;height:50px;">Guardian Information
        <div style="float:right">
                        <span class="chkBox"><asp:CheckBox runat="server" ID="checkbox1" /><label for="chkFather"> Father ?</label></span>
                        <span class="chkBox"><asp:CheckBox runat="server" ID="checkbox2" /><label for="chkMother">  Mother ?</label></span>
                        <span class="chkBox"><asp:CheckBox runat="server" ID="checkbox3" /><label for="chkOther"> Other ?</label></span>

        </div>        
        </div>
           <div class="container">
		            <div class="col-lg-6">
                    <table class="table-responsive">
                        <tr>
                            <td>Guardian Name<span class="required">*</span> </td>
                            <td><asp:TextBox runat="server" ID="txtgurdianName" style="margin-bottom:5px;width:100%"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>Relation <span class="required">*</span></td>
                            <td><asp:DropDownList runat="server" ID="ddlgrelation" style="width:100%">
                                <asp:ListItem>--Select--</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                    </table>
                  </div><div class="col-lg-6">
                      <table class="table-responsive">
                          <tr>
                             <td>Mobile No<span class="required">*</span> </td>
                            <td><asp:TextBox runat="server" ID="Text2" Width="18%" Text="+91" ReadOnly="true"></asp:TextBox>
                                <asp:TextBox runat="server" ID="txtgudianmobile" Width="50%"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                             ErrorMessage="Mobile number should be 10 digit!" Text="*" ControlToValidate="txtgudianmobile"
                             ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
                            </td>
                          </tr>
                          <tr>
                             <td>Guardian Address</td>
                            <td><asp:TextBox runat="server" ID="txtgurdianAdd" style="margin-top:5px; width:70%"></asp:TextBox></td>
                          </tr>
                      </table>
                        </div>
               </div> 
        </div>
        
               
      <div class="panel">
      <div class="panel-heading" style="background-color:skyblue; color:white">Permanent address</div>
          <div class="container">
              <div class="col-lg-6">
                  <table class="table-responsive">
                      <tr>
                        <td>Village</td>
                        <td><asp:TextBox runat="server"  ID="txtvillage" style="width:100%;margin-bottom:5px;"></asp:TextBox><td>
                       
                      </tr>
                      <tr>
                        <td>Post Office </td>
                        <td><asp:TextBox runat="server"  ID="txtpostoff" style="width:100%;margin-bottom:5px;"></asp:TextBox><td>
                      </tr>
                  </table>
              </div>
              <div class="col-lg-6">
                  <table class="table-responsive">
                       <tr>
                        <td>Thana/State </td>
                        <td><asp:DropDownList runat="server" ID="ddlthana" style="width:100%;margin-bottom:5px;"> </asp:DropDownList></td>
                       
                      </tr>
                      <tr>
                         <td>District </td>
                        <td><asp:DropDownList runat="server" ID="ddldistrict" style="width:100%;margin-bottom:5px;"> </asp:DropDownList></td>
                      </tr>
                  </table>
              </div>
             
              </div>     
       </div>

        <div class="panel">
        <div class="panel-heading" style="background-color:skyblue; color:white">Present Address
            <div style="float: right">
               <asp:CheckBox runat="server" ID="chkSameAddress" />
                                        
                        <label for="chkSameAddress">Same</label>
                    </div>
                </div><br />
                <div class="container">
                    <div class="col-lg-6">
                  <table class="table-responsive">
                      <tr>
                        <td>Village</td>
                        <td><asp:TextBox runat="server"  ID="txtprvilg" style="width:100%;margin-bottom:5px;"></asp:TextBox><td>
                       
                      </tr>
                      <tr>
                        <td>Post Office </td>
                        <td><asp:TextBox runat="server"  ID="txtprpo" style="width:100%;margin-bottom:5px;"></asp:TextBox><td>
                      </tr>
                  </table>
              </div>
              <div class="col-lg-6">
                  <table class="table-responsive">
                       <tr>
                        <td>Thana/State </td>
                        <td><asp:DropDownList runat="server" ID="ddlprthana" style="width:100%;margin-bottom:5px;"> </asp:DropDownList></td>
                       
                      </tr>
                      <tr>
                         <td>District </td>
                        <td><asp:DropDownList runat="server" ID="ddlprdistr" style="width:100%;margin-bottom:5px;"> </asp:DropDownList></td>
                      </tr>
                  </table>
              </div>
                </div>
            </div>
      <div class="panel">
        <div class="panel-heading" style="background-color:skyblue; color:white">
                    Other Information
                    <div style="float: right">
                        <asp:CheckBox runat="server" ID="chkNotApplicable" />
                        <label for="chkNotApplicable">Not applicable</label>
                    </div>
                </div><br />
      
          <div class="container">
               <div class="col-lg-9">
            <div class="col-lg-6">
                <table class="table-responsive">
                     <tr>
                            <td>Previous Roll No.*</td>
                            <td><asp:TextBox runat="server"  ID="txtPSCRoll" style="width:100%;margin-bottom:5px;"></asp:TextBox><td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPSCRoll" Text="*"></asp:RequiredFieldValidator>
                     </tr>
                        <tr>
                            <td>Passing Yr*</td>
                            <td><asp:TextBox runat="server" ID="txtpassingyr" style="width:100%;"></asp:TextBox></td>
                             <asp:RequiredFieldValidator ID="rdd21" runat="server" ControlToValidate="txtpassingyr" Text="*"></asp:RequiredFieldValidator>
                        </tr>
                        <tr>
                            <td>GPA*</td>
                            <td><asp:TextBox runat="server" ID="txtgpa" style="width:100%;margin-bottom:5px; margin-top:5px;"></asp:TextBox></td>
                           
                        </tr>
                        <tr><td>Previous School Name<span class="required">*</span></td>
                            <td><asp:TextBox runat="server" ID="txtPreviousSchoolName" style="width:100%;margin-bottom:5px;"> </asp:TextBox></td>
                              <asp:RequiredFieldValidator ID="jdh" runat="server" ControlToValidate="txtPreviousSchoolName" Text="*"></asp:RequiredFieldValidator> 
                        </tr>
                        <tr>
                             <td>Tr Date<span class="required">*</span></td>
                            <td><asp:TextBox runat="server" ID="txtTrDate" CssClass="txt" style="width:100%;margin-bottom:5px;"></asp:TextBox></td>  
                                                                              
                        </tr>
                       
                       
                </table>
            </div>
            <div class="col-lg-6">
                <table class="table-responsive" style="">
                    <tr>
                        <td>Board</td>
                        <td><asp:DropDownList runat="server" ID="ddlboard" style="width:100%;margin-bottom:5px;">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>UP Board</asp:ListItem>
                            <asp:ListItem>CBSE</asp:ListItem>
                            <asp:ListItem>ICSE</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                            </asp:DropDownList></td>  
                    </tr>
                    <tr>
                        <td>Tranfer Certificate<span class="required">*</span></td>
                        <td><asp:TextBox runat="server" style="margin-bottom:5px; width:100%" ID="txtTransferCNo"></asp:TextBox></td> 
                        <asp:RequiredFieldValidator ID="kj" runat="server" ControlToValidate="txtTransferCNo" Text="*"></asp:RequiredFieldValidator> 
                    </tr>
                    <tr>
                        <td>Ragistration<span class="required">*</span></td>
                        <td><asp:TextBox runat="server" ID="txtRegistra" style="margin-bottom:5px;width:100%"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>That class would be admission<span class="required">*</span></td>
                        <td><asp:TextBox runat="server" ID="ddlThatClass" style="width:100%;margin-bottom:5px;"></asp:TextBox></td> 
                    </tr>
                    <tr>
                        <td>Select Exam<span class="required">*</span></td>
                        <td><asp:TextBox runat="server" ID="txtexam" style="margin-bottom:5px;" Width="100%"></asp:TextBox></td>   
                    </tr>
                </table>
             </div>
       </div>
          </div>
        </div>
        

   <div class="panel">       
        <table class="table">
            <tr>
                <td>
                    <asp:Button runat="server" CssClass="btn btn-primary" Text="Submit" ID="btnsave" OnClick="btnsave_Click"/>                     
                </td>
                <td>
                    <div class="container">
                            <asp:Button runat="server" CssClass="btn btn-primary" Text="Clear" ID="btnClear" />
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="true" EnableClientScript="true" DisplayMode="BulletList" HeaderText="You should be fill following fields!" />
                    </div>
                </td>
            </tr>
        </table>           
    </div>
        </div>
    <%--</form>--%>
    <script type="text/javascript">
        function ShowPreview(input) {
            if (input.files && input.files[0]) {
                var ImageDir = new FileReader();
                ImageDir.onload = function (e) {
                    var ext = $('.ImageUpload').val().split('.').pop().toLowerCase();
                    //Initiate the JavaScript Image object.
                    var image = new Image();
                    //Set the Base64 string return from FileReader as source.
                    image.src = e.target.result;
                    image.onload = function () {
                        //Determine the Height and Width.
                        var height = this.height;
                        var width = this.width;
                        if (height > 500 || width > 500) {
                            alert("Height and Width must not exceed 100px.");
                            return false;
                        } else if ($.inArray(ext, ['gif', 'png', 'jpg', 'jpeg']) == -1) {
                            alert('invalid extension!');
                            // alert("Uploaded image has valid Height and Width.");
                            return true;
                        } else {
                            $('.impPrev').attr('src', e.target.result);
                        }
                    };
                   
                }
                ImageDir.readAsDataURL(input.files[0]);
            }
        }
    </script>
    <script type="text/javascript">
        $(function () {
            $(".txt").datepicker();
            $(".txtdob").datepicker();
        });
</script>
</body>
</html>
    </asp:Content>