<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="Attandancedetails.aspx.cs" Inherits="AdminHome.OriginalAttandenceSystem.Attandancedetails" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body style="background-color:whitesmoke">
    <%--<form id="form1" runat="server">--%>
    <%--<div class="container" style="margin-bottom:10px;margin-top:10px; text-align:center;height:30px; background-color:skyblue"><h4>Employee Attandance Details</h4></div>--%>
    <div class="row" style="margin:10px;position:relative;">
        <div class="col-2" style="width:180px;"><asp:Button runat="server" ID="searchmont" CssClass="searchmont" Text="Search by Month" Width="180px" /></div>
        <div class="col-2" style="width:180px;"><asp:Button ID="btnhide" CssClass="btnhide" Width="180px" runat="server" Text="Search By Emp/Staff ID:"  /></div>
        <div class="col-2" style="width:180px;"><asp:Button ID="btnsrcdate" Width="180px" CssClass="btnsrcdate" runat="server" Text="Search By Date"  /></div>
        <div class="col-3" style="width:220px;">
             <asp:Table runat="server" ID="tb3" CssClass="table tb3">
                 <asp:TableRow>
                     <asp:TableCell><asp:DropDownList runat="server" ID="ddlmonth" CssClass="form-control"></asp:DropDownList></asp:TableCell>
                     <asp:TableCell><asp:Button runat="server" ID="btnmonth" CssClass="btn btn-primary" Text="Search" OnClick="btnmonth_Click" /></asp:TableCell>
                 </asp:TableRow>
             </asp:Table>
            <asp:Table ID="tb1" runat="server" CssClass="table tb1">
            <asp:TableRow><asp:TableCell><asp:DropDownList ID="ddlid" runat="server" Width="100px"  CssClass="form-control"></asp:DropDownList></asp:TableCell>
            <asp:TableCell><asp:Button ID="btnsearch" runat="server" CssClass="btn btn-primary" Text="Search" OnClick="btnsearch_Click" /></asp:TableCell>
            </asp:TableRow>
            </asp:Table>
             <asp:Table runat="server" ID="tb2" CssClass="table tb2">
                 <asp:TableRow>
                     <asp:TableCell><asp:TextBox ID="txt" CssClass="form-control txt" Width="100px"  placeholder="Date" runat="server"></asp:TextBox></asp:TableCell>
                     <asp:TableCell><asp:Button runat="server" ID="btndate" CssClass="btn btn-primary" Text="Search" OnClick="btndate_Click" /></asp:TableCell>
                 </asp:TableRow>
             </asp:Table>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-9">
              <asp:Label runat="server" ID="lbldate" Font-Size="Medium" Text="13/04/2014" CssClass="label"></asp:Label>
              <asp:GridView ID="gvTerritories" EmptyDataText="No Data Found" runat="server" AutoGenerateColumns="false" CssClass="footable" OnPageIndexChanging="gvTerritories_PageIndexChanging" 
              GridLines="None" DataKeyNames="FKEID"  ShowFooter="false" PageSize="7" AllowPaging="true"  OnRowDataBound="gvTerritories_RowDataBound" >
               <Columns>
                   <asp:BoundField HeaderText="EID" DataField="FKEID" />
                   <asp:BoundField HeaderText="Time" DataField="attandancetime" />
                   <asp:BoundField HeaderText="Attandance." DataField="attandancestatus" />
                   <asp:BoundField HeaderText="Date." DataField="attandancedate" />
                   <asp:BoundField HeaderText="Latitude." DataField="latitute" />
                   <asp:BoundField HeaderText="Longitude" DataField="longitute" />
                   <asp:TemplateField HeaderText="Attandance Location">
                       <ItemTemplate>
                           <asp:LinkButton runat="server" ID="lnklocation" ForeColor="Red" myProp='<%# Eval("latitute").ToString() + ";" + Eval("longitute").ToString() %>' CommandArgument='<%# Eval("latitute")+","+Eval("longitute") %>' OnClick="lnklocation_Click" >
                               <span class="glyphicon glyphicon-eye-open">View</span>
                           </asp:LinkButton>
                       </ItemTemplate>
                        <FooterTemplate>
                            <asp:Label ID="lblstud" runat="server" Text="Total Emp:" ></asp:Label>
                            <asp:Label ID="lblTotal" runat="server"></asp:Label>
                        </FooterTemplate>
                   </asp:TemplateField>
               </Columns>
               <EmptyDataRowStyle Font-Bold="true" Font-Size="14pt" ForeColor="Red" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <%--<HeaderStyle CssClass="gridViewHeader" />--%>
                <RowStyle CssClass="gridViewRow" />
                <AlternatingRowStyle CssClass="gridViewAltRow" />
                <PagerStyle CssClass="gridViewPager" />
            </asp:GridView>
            
        </div>
         <asp:Label runat="server" ID="lblmsg"></asp:Label>
         <div class="col-3" style="margin-bottom:5px;">
            <div id="map_canvas" style="min-width:190px; padding:10px 10px 10px 10px; margin-top:0px; height:450px;"></div>
        </div>
        </div>
  
    <%--</form>--%>
     <%-- Script to responsiv grid --%>
    <script type="text/javascript">
        $(function () {
            $('[id*=gvTerritories]').footable();
        });
    </script>
     <script type="text/javascript">
         $(function () {
             $(".txt").datepicker({ dateFormat: 'dd-mm-y' });
             $(".txtdob").datepicker();
             //var date = $('#datepicker').datepicker({ dateFormat: 'dd-mm-yy' }).val();
         });
     </script>
    <script type="text/javascript">
        $(function () {

            $("[id$='lnklocation']").click(function () {
                var str = $(this).attr("myProp");
                var array = str.split(';'),
                    a = array[0], b = array[1];
               // alert(a);
                initialize();
                window.onload = loadScript;
            });
            function initialize() {
                var myLatlng = new google.maps.LatLng(a, b);
                var myOptions = {
                    zoom: 8,
                    center: myLatlng,
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                }
                var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
            }

            function loadScript() {
                var script = document.createElement("script");
                script.type = "text/javascript";
                script.src = "http://maps.google.com/maps/api/js?sensor=false&callback=initialize";
                document.body.appendChild(script);

            }

        });

    </script>
    <%-- Script to pass latitute and longitut --%>
    
    <script>
    function initialize() {
        var myLatlng = new google.maps.LatLng(28.6178024, 77.3894354);
      var myOptions = {
        zoom: 8,
        center: myLatlng,
        mapTypeId: google.maps.MapTypeId.ROADMAP
      }
      var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
    }

    function loadScript() {
      var script = document.createElement("script");
      script.type = "text/javascript";
      script.src = "http://maps.google.com/maps/api/js?sensor=false&callback=initialize";
      document.body.appendChild(script);
    }

    window.onload = loadScript;

</script>
  <%-- Button and table hide script--%>
    <script>
        $(document).ready(function () {
            $(".tb3").hide();
            $(".tb2").hide();
            $(".tb1").hide();
            $(".btnsrcdate").click(function () {
                $(".tb2").show();
                $(".tb3").hide();
                $(".tb1").hide();
                return false;
            });
            $(".btnhide").click(function () {
                $(".tb2").hide();
                $(".tb3").hide();
                $(".tb1").show();
                return false;
            });
            $(".searchmont").click(function () {
                $(".tb1").hide();
                $(".tb2").hide();
                $(".tb3").show();
                return false;
            });
        });
</script>
</body>
</html>
</asp:Content>