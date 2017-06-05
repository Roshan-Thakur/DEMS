<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentNewBatch.aspx.cs" Inherits="AdminHome.StudentNewBatch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap.3.3.7/content/Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container"style="background-color:white">
        <div class="panel-heading" style="background-color:skyblue; color:white" > &nbsp;  Admission Student Asign</div>&nbsp;
              <div class="row">
                    <div class="col-lg-1"></div>
                    <div class="col-lg-5"  >
                        <fieldset class="scheduler-border" style="width:100%" >
                            <legend class="table-responsive"><b>Search Class Wise Student</b></legend>
                            <table class="tbl-controlPanel">
                                <tr>
                                    <td>Shift</td>
                                    <td>
                                        <select name="ctl00$MainContent$dlShift" id="dlShift" class="input" style="width:150px;">
		<option value="0">...Select...</option>
		<option value="1">Morning</option>
		<option value="2">Day</option>
		<option value="3">Evening</option>

	</select>
                                    </td>
                                    <td>Class</td>
                                    <td>
                                        <select name="ctl00$MainContent$dlClass" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$MainContent$dlClass\&#39;,\&#39;\&#39;)&#39;, 0)" id="dlClass" class="input" style="width:150px;">
		<option selected="selected" value="0">...Select...</option>
		<option value="1">Six</option>
		<option value="2">Eight</option>
		<option value="3">Nine</option>
		<option value="5">Ten</option>
		<option value="4">HSC</option>
		<option value="6">BussinessManagment</option>
		<option value="7">Degree</option>
		<option value="8">Honurs</option>

	</select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Group</td>
                                    <td>
                                        <select name="ctl00$MainContent$ddlsearchGroup" onchange="javascript:setTimeout
                                            (&#39;__doPostBack(\&#39;ctl00$MainContent$ddlsearchGroup\&#39;,\&#39;\&#39;)&#39;, 0)"
                                             id="ddlsearchGroup" class="input" style="width:150px;">
	                                         	<option selected="selected" value="0">...Select...</option>

	</select>
                                    </td>
                                    <td></td>
                                    <td>
                                 
                                  <asp:Button runat="server" ID="btnSearch"  Text="Search"/>     
                                        <span id="lbltotal" class="control-label" style="color:Green;"></span>
                                    </td>
                                  
                                </tr>
                           </table>
                        </fieldset>
                    </div> &nbsp;
                    <div class="col-lg-5">
                        <fieldset class="scheduler-border"  style="width:50%" >
                            <legend class="scheduler-border">
                                <b>Assign Batch</b>
                            </legend>
                            <table class="tbl-controlPanel">
                                <tr>
                                    <td>Batch</td>
                                    <td>
                                        <select name="ctl00$MainContent$ddlBatch" id="ddlBatch" class="input" style="width:120px;">
		<option value="0">...Select...</option>

	</select>
                                    </td>
                                    <td>Section</td>
                                    <td>
                                        <select name="ctl00$MainContent$ddlSection" id="ddlSection" class="input" style="width:120px;">
		<option value="0">...Select...</option>

	</select>
                                    </td>
                                </tr>
                                <tr>                                   
                                    <td></td>
                                    <td>
                                                                          <asp:Button runat="server" ID="btnSave"  Text="Assign"/>     
                                       
                                    </td>

                                    <td></td>
                                </tr>
                            </table>
                        </fieldset>
                    </div>
                    <div>
                        <div class="col-lg-1"></div>
                    </div>
                </div>

            

  
    <div id="MainContent_UpdatePanel2">
	
            <div class="tgPanel">
                <div id="MainContent_admStdAssignPanel" class="datatables_wrapper" style="width:100%;overflow:auto;">
		
                    

		</div>&nbsp; &nbsp;
                 <div class="panel-heading"   style="background-color:skyblue; color:white" >
                 <table class="style="width:100%" table table-hover"> 
                     <thead>
<tr>
<th>S.No &nbsp; &nbsp; </th> 
<th>  Admission No &nbsp; &nbsp;</th>
<th>Admission Date  &nbsp; &nbsp;</th>
    <th>Student Name  &nbsp; &nbsp;</th>
    <th>Roll &nbsp; &nbsp;</th>
</tr>
</thead></table></div>
                    
                    Please class wise search new students for assigning Batch, Roll And Section
               </div>
            </div>
      
        </div>
    
    </form>
</body>
</html>
