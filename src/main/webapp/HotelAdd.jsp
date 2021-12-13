<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body, html {
  height: 100%;
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

.bg-img {
  /* The image used */
  background-image: url("images/pexels-victor-lavaud-3361480.jpg"), url("images/pexels-ashley-fontana-705764 (1).jpg");
  

  min-height: 750px;

  /* Center and scale the image*/
  background-position: left,right;
  background-repeat: no-repeat,no-repeat;
  background-size: 700px 950px,650px 950px;
  position: relative,relative;
}


/*styles to the form container */
.container {
  position: absolute;
  bottom:0;
  right:400px;
  margin: 20px;
  max-width: 500px;
  padding: 15px;
  background-color: #ceebfd;
  
}

/* Full-width input fields */
input[type=text], input[type=text] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=text]:focus, {
  background-color: #ddd;
  outline: none;
}
input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

/*style for the submit button */
.btn {
  background-color: #065d93;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.btn:hover {
  opacity: 1;
}
</style>
</head>
<body>
<div class="bg-img">
<form action="HotelAddServe" method="post" class="container">
<center><h1>Hotel Add</h1></center>


<label for="hid"><b>Hotel ID</b></label>
<input type="text" placeholder="Enter Hotel ID" name="hid" required>

<label for="hname"><b>Hotel Name</b></label>
<input type="text" placeholder="Enter Hotel Name" name="hname" required>

<label><b>TOUR PLACE </b></label>
<p>
<select type="select" name="tplace">
<option value="Kashmir">Kashmir</option>
<option value="Bhutan">Bhutan</option>
<option value="Rajasthan">Rajasthan</option>
<option value="Lonavala">Lonavala</option>
<option value="Assam">Assam</option>
<option value="Darjeeling">Darjeeling</option>
<option value="Mumbai">Mumbai</option>
<option value="Kolkata">Kolkata</option>
<option value="Agra">Agra</option>
<option value="Manali">Manali</option>
<option value="Rishikesh">Rishikesh</option>
<option value="Ladakh">Ladakh</option>
<option value="Paris">Paris</option>
<option value="Rome">Rome</option>
<option value="Maldives">Maldives</option>
<p>
</select>


<button type="submit" class="btn">ADD HOTEL</button>

</form>
</body>
</html>