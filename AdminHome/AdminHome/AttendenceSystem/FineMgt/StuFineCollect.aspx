<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="StuFineCollect.aspx.cs" Inherits="AdminHome.AttendenceSystem.FineMgt.StuFineCollect" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <form id="form1" runat="server">
    <div class="container">
     <div class="row">
        <div class="col-md-12">
            <div class="tgPanel">
                <div class="panel-heading" style="background-color:skyblue">Fine Collection Panel</div>
                <div id="MainContent_UpdatePanel1">
	
                    <table class="tbl-controlPanel">
                        <tr>
                            <td>
                                Shift
                            </td>
                            <td><br />
                                <select name="ctl00$MainContent$dlShift" id="dlShift" class="input controlLength">
		<option value="0">...Select...</option>
		<option value="1">Morning</option>
		<option value="2">Day</option>
		<option value="3">Evening</option>

	</select>
                            </td>
                            <td>
                                Batch
                            </td>
                            <td><br />
                                <select name="ctl00$MainContent$dlBatch" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$MainContent$dlBatch\&#39;,\&#39;\&#39;)&#39;, 0)" id="dlBatch" class="input controlLength">
		<option selected="selected" value="0">...Select...</option>
		<option value="1_1">Six2015</option>
		<option value="8_3">Nine2016</option>
		<option value="4_4">HSC2016</option>
		<option value="7_5">Ten2016</option>
		<option value="5_7">Degree2017</option>
		<option value="2_7">Degree2016</option>
		<option value="3_8">Honurs2016</option>

	</select></td>
                           <td>Group</td>
                        <td><br />
                            <select name="ctl00$MainContent$dlGroup" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$MainContent$dlGroup\&#39;,\&#39;\&#39;)&#39;, 0)" id="dlGroup" class="input controlLength">
		<option selected="selected" value="0">...Select...</option>

	</select>
                        </td> 
                            
                        </tr>
                        <tr>
                            <td><br />
                                Section
                            </td>
                            <td><br />
                                <select name="ctl00$MainContent$dlSection" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$MainContent$dlSection\&#39;,\&#39;\&#39;)&#39;, 0)" id="dlSection" class="input controlLength">
		<option selected="selected" value="0">...Select...</option>

	</select></td>
                            <td style="text-align:right">Roll
                            </td>
                            <td><br />
                               
                                       <select name="ctl00$MainContent$dlRoll" id="dlRoll" class="input controlLength">
		<option selected="selected" value="0">...Select...</option>

	</select>
                            </td>
                            <td colspan="2"><br />
                                <input type="submit" name="ctl00$MainContent$btnSearch" value="Search" onclick="return validateInputs();" id="btnSearch" class="btn btn-success" />
                                   
                            </td>                            
                        </tr>
                        <tr>                            
                            <td></td>
                            <td colspan="3"><br />
                                <span id="MainContent_lblPaymentDateStatus" style="color:#0000CC;border-color:White;"></span>
                            </td>
                        </tr>
                    </table>
                
</div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="tgPanel">
                <div class="panel-heading" style="background-color:skyblue">Searching Result</div>
                <div id="MainContent_upPanel2">
	
                    <table class="tbl-controlPanel">
                        <tr>
                            <td>
                                <span id="lblStudentName"></span>
                            </td>
                            <td>
                                
                            </td>
                        </tr>                        
                    </table>                    
                
</div>
                <div id="MainContent_UpdatePanel3">
	
                    <div id="MainContent_divFineInfo" class="datatables_wrapper" style="width: 100%; height: auto; overflow: auto; overflow-x: hidden;"></div>
                    <div id="divGrandTotal" class="head grandTotal" 
                        style=" "></div>
                
</div>
            </div>
        </div>
    </div>    </div>
    </form>
</body>
</html></asp:Content>
