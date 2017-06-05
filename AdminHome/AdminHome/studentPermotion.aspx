<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentPermotion.aspx.cs" Inherits="AdminHome.studentPermotion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap.3.3.7/content/Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="panel-heading" style="background-color:skyblue; color:white" > Students Promotion Settings&nbsp; </div>&nbsp;
     <div class="tgPanel">
                <div id="MainContent_UpdatePanel3">
	
                <div class="tgPanelHead" style="height:auto"></div>
            <div class="form-inline">
                <div class="form-group">
                     <table id="MainContent_rdblStudentStatus" >
		<tr>
			<td><input id="MainContent_rdblStudentStatus_0" type="radio" name="ctl00$MainContent$rdblStudentStatus" value="1" checked="checked" />
                <label for="MainContent_rdblStudentStatus_0" >Regular Student Promotion</label></td>
            <td><input id="MainContent_rdblStudentStatus_1" type="radio" name="ctl00$MainContent$rdblStudentStatus" value="0" 
              onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$MainContent$rdblStudentStatus$1\&#39;,\&#39;\&#39;)&#39;, 0)" />
                <label for="MainContent_rdblStudentStatus_1">Fail Student Promotion</label></td><td><input id="MainContent_rdblStudentStatus_2" 
                     type="radio" name="ctl00$MainContent$rdblStudentStatus" value="00" 
                    onclick="    javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$MainContent$rdblStudentStatus$2\&#39;,\&#39;\&#39;)&#39;, 0)" />
                    <label for="MainContent_rdblStudentStatus_2">Fail Student Batch Assign</label></td>
		</tr>
	</table>
                    </div>
                </div>
            <br />
            <div class="form-inline">
                <div class="form-group">
                    <label for="exampleInputName2">Shift</label>
                    <select name="ctl00$MainContent$dlShift" id="dlShift" class="input controlLength">
		<option value="0">...Select...</option>
		<option value="1">Morning</option>
		<option value="2">Day</option>
		<option value="3">Evening</option>

	</select>
                </div>
                <div class="form-group">
                    <label for="exampleInputName2">Current Batch</label>
                    <select name="ctl00$MainContent$dlPreviousBatch" 
                        onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$MainContent$dlPreviousBatch\&#39;,\&#39;\&#39;)&#39;, 0)" 
                        id="dlPreviousBatch" class="input controlLength">
		<option selected="selected" value="0">...Select...</option>
		<option value="1_1">Six2015</option>
		<option value="8_3">Nine2016</option>
		<option value="4_4">HSC2016</option>
		<option value="7_5">Ten2016</option>
		<option value="5_7">Degree2017</option>
		<option value="2_7">Degree2016</option>
		<option value="3_8">Honurs2016</option>

	</select>
                </div>
                
                <div class="form-group">
                    <label for="exampleInputName2">Current Section</label>
                    <select name="ctl00$MainContent$ddlSection" id="ddlSection" class="input controlLength">
		<option value="0">...Select...</option>

	</select>
                </div>
                <div class="form-group">
                    <label for="exampleInputName2">New Batch</label>
                    <select name="ctl00$MainContent$dlCurrentBatch" id="dlCurrentBatch" class="input controlLength">

	</select>
                </div>
                <div class="form-group">

                    <input type="submit" name="ctl00$MainContent$btnSearch" value="Search" onclick="return btnSearch_validateInputs();"
                         id="MainContent_btnSearch" class="btn btn-primary" />
                </div>
            </div>
        
</div>
                  <br />
            </div>  
            <div class="tgPanel">
                <div id="MainContent_UpdatePanel1">
	
                <div id="MainContent_admStdAssignPanel" class="datatables_wrapper" style="width:100%;overflow:auto;">
		
                    <div>


		</div>
                    <div class="panel-heading"   style  ="background-color:skyblue; color:white;height:50%;">
                 <table class="style="width:100%" table table-hover"> 
                     <thead>
<tr>
<th>Student Name &nbsp; &nbsp;&nbsp; </th> 
<th>S.No&nbsp; &nbsp;&nbsp;</th>
<th> Crnt. Class&nbsp;&nbsp; &nbsp;</th>
    <th> Crnt. Roll&nbsp;&nbsp; &nbsp;</th>
    <th> Crnt. Section&nbsp;&nbsp; &nbsp;</th>
    <th>Crnt. Group &nbsp;&nbsp; &nbsp; </th> 
<th>Exam GPA&nbsp; &nbsp;&nbsp;</th>
<th>New. Roll &nbsp; &nbsp;&nbsp;</th>
    <th>New. Class&nbsp; &nbsp;&nbsp;</th>
    <th>New. Batch&nbsp;&nbsp; &nbsp;</th>
    <th>New. Group&nbsp; &nbsp;&nbsp;</th>
    <th>New. Section&nbsp;&nbsp; &nbsp;</th>
</tr>
</thead></table></div>
                    
                   <%-- <div class="table">
                 <table id='tblClassList' class='display'> <thead><tr><th></th><th></th><th></th><th></th>
                     <th></th><th></th><th></th><th>  </th><th></th><th></th><th>N</th>
                     <th></th><th></th></tr></thead><tbody><tr><td colspan='10'>Please search for student promotion</td></tr>

                                                                          </tbody><tfoot></table></div>--%>
	</div>&nbsp;&nbsp;
                <div class="tgbutton">
                    <table>
                        <tr>
                            <td>
                                <input type="submit" name="ctl00$MainContent$btnUpdateStd" value="Submit" onclick="return btnUpdateStd_validateInputs();"
                                     id="MainContent_btnUpdateStd" class="btn btn-primary" />
                                <input type="submit" name="ctl00$MainContent$btnClear" value="Clear" id="btnClear" class="btn btn-default" />
                            </td>
                        </tr>
                    </table>
                </div>
            
</div>
            </div>       
  
    </form>
</body>
</html>
