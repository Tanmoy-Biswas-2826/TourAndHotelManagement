<%@page import="master.dto.TourDto"%>
<%@page import="master.dao.TourDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="master.*"%>
  
  <%@ page import="java.util.*" %>
  <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body, html {
  height:50%;
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

.bg-img {
  /* The image used */
  background-image: url("images/1431622.jpg");
  

  min-height: 750px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size:cover;
  position: relative;
}


/* Add styles to the form container */
.container {
  position: center;
  bottom:0;
  right:400px;
  margin: 20px;
  padding: 50px;
  }
/* Full-width input fields */
input[type=text], input[type=number],input[type=date],input[type=password]{
  width: 100%;
  padding: 10px;
  margin: 5px 0 22px 0;
  border: none;
  background:#DCDCDC	;
  font-size:15px
  
}

input[type=text]:focus, input[type=number]:focus,input[type=date]:focus{
  background-color: #34495E ;
  outline: none;
}
input[type=submit] {
  width: 100%;
  background-color:#1858cd;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

/* Set a style for the submit button */
.btn {
  background-color: #065d93;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 50%;
  opacity: 0.9;
  border-radius: 15px;
}

.btn:hover {
  opacity: 1;
}
h1{
color: #ff4d4d;
font-family:serif;
font-size:50px;
}


</style>
</head>

<script type="text/javascript">
var req=false;
function initialize()
{
  if(window.XMLHttpRequest)
   {
    req=new XMLHttpRequest();
    }
    else if(window.ActiveXObject)
    {
     req=new ActiveXObject("Microsoft.XMLHTTP");
     }
  
    }
function getDetails()
{
	 initialize();
	// alert("HELLO");
    // alert("cid:"+cid);
     var tid=document.f1.tid.value;
    //alert("tid:"+tid);
   
     
     var url="TourDetails.jsp?tid="+tid;
     if(req!=null)
     {
         req.open("post",url,true);
         req.onreadystatechange=process1;
         req.send(null);
     }
    
     else
     {
       //document.getElementById("test").innerHTML="";  
     }
  }
  function process1()
  {
   if(req.readyState==4)
   {
     if(req.status==200)
     {
    	 var result=req.responseText;
    	// alert(result);
     	  var tname=result.substring(0, result.indexOf("#"));
     	  document.getElementById("tname").value=tname;  
     	 // alert(tname);
     	   var temp3=result.substring(result.indexOf("#")+1);
          var tplace1=temp3.substring(0, temp3.indexOf("#"));
         // alert(tplace1);
          document.getElementById("tplace1").value=tplace1;   
           var temp4=temp3.substring(temp3.indexOf("#")+1);
          var tplace2=temp4.substring(0, temp4.indexOf("#"));
        //  alert(tplace2);
          document.getElementById("tplace2").value=tplace2;         
          var temp5=temp4.substring(temp4.indexOf("#")+1);
          var tplace3=temp5.substring(0, temp5.indexOf("#"));
         // alert(tplace3);
          document.getElementById("tplace3").value=tplace3;
          temp6=temp5.substring(temp5.indexOf("#")+1);         
          var days=temp6.substring(0, temp6.indexOf("#"));
        //  alert(days);
          document.getElementById("nofdays").value=days;         
          temp7=temp6.substring(temp6.indexOf("#")+1);
          var tprice=temp7.substring(0, temp7.indexOf("#"));
         // alert(tprice);
          document.getElementById("tprice").value=tprice;         
          temp8=temp7.substring(temp7.indexOf("#")+1);
          var doj=temp8.substring(0, temp8.indexOf("#"));
        //  alert(doj);
          document.getElementById("doftour").value=doj;
         
         
         
     }
  }
     
}
//function getTotals(){
	 //var tprice=document.f1.tprice.value;	
	// alert("tprice:"+tprice);
	 //var head_counts=document.f1.head_counts.value;
	// alert("head_counts:"+head_counts);
 //} 
  
function populateHotelName1()
{
	 initialize();
	// alert("HELLO");
    // alert("cid:"+cid);
     var tplace1=document.f1.tplace1.value;
    alert("tplace1"+tplace1);
   
     
     var url="HotelDetails1.jsp?tplace1="+tplace1;
     if(req!=null)
     {
         req.open("post",url,true);
         req.onreadystatechange=process2;
         req.send(null);
     }
    
     else
     {
       //document.getElementById("test").innerHTML="";  
     }
  }
  function process2()
  {
   if(req.readyState==4)
   {
     if(req.status==200)
     {
    	 var result=req.responseText;
    	 alert(result);
     	  var hname=result.substring(0, result.indexOf("#"));
     	  document.getElementById("hotelname1").value=hname;  
     	
         
         
         
     }
  }


}
  function populateHotelName2()
  {
  	 initialize();
  	// alert("HELLO");
      // alert("cid:"+cid);
       var tplace1=document.f1.tplace2.value;
     // alert("tplace1"+tplace1);
     
       
       var url="HotelDetails1.jsp?tplace1="+tplace1;
       if(req!=null)
       {
           req.open("post",url,true);
           req.onreadystatechange=process4;
           req.send(null);
       }
      
       else
       {
         //document.getElementById("test").innerHTML="";  
       }
    }
    function process4()
    {
     if(req.readyState==4)
     {
       if(req.status==200)
       {
      	 var result=req.responseText;
      	 alert(result);
       	  var hname=result.substring(0, result.indexOf("#"));
       	  document.getElementById("hotelname2").value=hname;  
       	
           
           
           
       }
    }


  }

    function populateHotelName3()
    {
    	 initialize();
    	// alert("HELLO");
        // alert("cid:"+cid);
         var tplace1=document.f1.tplace3.value;
        alert("tplace1"+tplace1);
       
         
         var url="HotelDetails1.jsp?tplace1="+tplace1;
         if(req!=null)
         {
             req.open("post",url,true);
             req.onreadystatechange=process5;
             req.send(null);
         }
        
         else
         {
           //document.getElementById("test").innerHTML="";  
         }
      }
      function process5()
      {
       if(req.readyState==4)
       {
         if(req.status==200)
         {
        	 var result=req.responseText;
        	 alert(result);
         	  var hname=result.substring(0, result.indexOf("#"));
         	  document.getElementById("hotelname3").value=hname;  
         	
             
             
             
         }
      }


    }
function callPrice()
{
	alert("ROOMRENT");
	var p=parseInt(document.getElementById("tprice").value);
	alert(p);
	var n=parseInt(document.getElementById("num_of_persons").value);
	alert(n);
	var c=document.getElementById("room_types").value;
	alert(c);
	if(c=='NONAC')
  {
		var total=p*n;
		alert(total);
	document.getElementById("total_price").value=p*n;
  }
	else if(c=='AC')
	{
		document.getElementById("total_price").value=p*n+0.10*p;
	}
	else
	{
		document.getElementById("total_price").value=p*n+0.15*p;
	}
}

</script>
<body>
<div class="bg-img">
 <form name="f1" action="BookingServe" method="post" class="container" >
<center><h1><u>HOTEL BOOKING</u></h1></center>
<table>

<tr>
<td><label><b>Tour ID:</b></label></td>
<td><select id="tid" name="tid" onchange="getDetails()" > 
<option>Select_TID</option>
<%
TourDao ldao=new TourDao();
ArrayList results=ldao.getData();
Iterator itr=results.iterator();
while(itr.hasNext())
{
	TourDto ldto=(TourDto)itr.next();
	String id1=ldto.getTid();
	%>
	
<option value=<%=id1%>><%=id1 %>
<%
}
%>
</select>
</td>
</tr>
<tr>

<td><label><b>Tour Name:</b></label></td>
<td><input type="text" id="tname" name="tname"></td>
</tr>
<tr>
<td><label><b>Tour Place1:</b></label></td>
<td><input type="text" id="tplace1" name="tplace1"></td>
<td><label><b>Hotel Name1:</b></label></td>
<td><input type="text" id="hotelname1" name="hotelname1"></td><td><input type="button" value="get hotel1" onclick="populateHotelName1()"></td>
</tr>

<tr>
<td><label><b>Tour Place2:</b></label></td>
<td><input type="text" id="tplace2" name="tplace2"></td>
<td><label><b>Hotel Name2:</b></label></td> 
<td><input type="text" id="hotelname2" name="hotelname2"></td><td><input type="button" value="get hotel2" onclick="populateHotelName2()"></td>
</tr>

<tr>
<td><label><b>Tour Place3:</b></label></td>
<td><input type="text" id="tplace3" name="tplace3"></td>
<td><label><b>Hotel Name3:</b></label></td>
<td><input type="text" id="hotelname3" name="hotelname3"></td> <td><input type="button" value="get hotel3" onclick="populateHotelName3()"></td>
</tr>

<tr>
<td><label><b>No Of Days:</b></label></td>
<td><input type="text" id="nofdays"  placeholder="No Of Days" name="nofdays"></td>

<td><label><b>Tour Price :</b></label></td>
<td><input type="text" id="tprice" placeholder="Tour Price" name="tprice"></td>
</tr>

<tr>
<td><label><b>Date Of Tour :</b></label></td>
<td><input type="text" id="doftour" placeholder="Enter date Of Tour" name="doftour"></td>

<td><label><b>Booking Date :</b></label></td>
<td><input type="text" id="bdate"  placeholder="Enter Booking Date"name="bdate"></td>
</tr>
<tr>
<td><label><b>Num Of Person :</b></label></td>
<td><input type="text" id="num_of_persons" placeholder="Enter no of Person" name="num_of_persons"></td>

<td><label><b>Room Types :</b></label></td>
<td><select id="room_types" name="room_types" onchange="callPrice()" > 
<option> SELECT ROOM</option>
<option value="NONAC">NONAC</option>
<option value="AC">AC</option>
<option value="DELUXE">DELUXE</option>
</select>
</tr>

<tr>
<td><label><b>USERNAME :</b></label></td>
<td><input type="text" id="username" placeholder="Enter User Name" name="uname"></td>
</tr>
<tr>
<td><label><b>PASSWORD :</b></label></td>
<td><input type="password" id="password" placeholder="Enter Password" name="pass"></td>
</tr>
<tr>
<td><label><b>Bank Name :</b></label></td>
<td><select name="bank">
<option value="HDFC">HDFC</option>
<option value="SBI">SBI</option>
<option value="AXIS">AXIS</option>
<option value="PNB">PNB</option>
</select></td>
<td><label><b>CARD NO :</b></label></td>
<td><input type="text" id="cardno" placeholder=" Enter Card no" name="cardno"></td>
</tr>

<tr>
<td><label><b>Date Of Expeiary</b></label></td>
<td><input type="text" id="doe" placeholder="Date of ex" name="doe"></td>
<td><label><b>CVV NO :</b></label></td>
<td><input type="text" id="cvv" placeholder="cvv no" name="cvv"></td>
</tr>
<tr>
<td><label><b>Total Price :</b></label></td>
<td><input type="text" id="total_price" placeholder="Total Price" name="total_price" > </td>
</tr>
</table>
<button type="submit" class="btn">SUBMIT</button>
<div id="testing"></div>

</div>
</form>

</body>
</html>