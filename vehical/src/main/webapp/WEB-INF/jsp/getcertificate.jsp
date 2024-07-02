<%-- 
    Document   : getcertificate
    Created on : May 27, 2023, 3:30:26 PM
    Author     : mrina
--%>
<%@page import="java.util.Base64"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%String v = request.getParameter("value");
String enddate="", type="", clas="", test="", full="", name="", vname="";
float in_small=0 ; double out_small=0; int in_big=0, out_big=0;
%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>VEHICAL</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="icon" href="http://d1ujqdpfgkvqfi.cloudfront.net/favicon-generator/htdocs/favicons/2015-01-25/4757e4ccd8a23c97566ae55feb33e917.ico">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
        <script src="https://kit.fontawesome.com/64d58efce2.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="style.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.3/html2pdf.bundle.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.0/jspdf.umd.min.js"></script>
  <style>
    .btn1 {
                width: 100px;
                background-color: #5995fd;
                border: none;
                outline: none;
                height: 49px;
                border-radius: 49px;
                color: #fff;
                text-transform: uppercase;
                font-weight: 600;
                margin: 10px 0;
                cursor: pointer;
                transition: 0.5s;
                right: 5px;
                bottom: 5px;
                position: fixed;
            }

            .btn1:hover {
                background-color: #4d84e2;
                color:#0000cc;
            }
            
    .btn2 {
            text-align: center;
                width: 100px;
                background-color: #5995fd;
                border: none;
                outline: none;
                height: 49px;
                border-radius: 49px;
                text-decoration: none;
                color: #fff;
                text-transform: uppercase;
                font-weight: 600;
                margin: 10px 0;
                cursor: pointer;
                transition: 0.5s;
                right:209px;
                bottom: 5px;
                position: fixed;
                line-height: 49px;
            }

            .btn2:hover {
                background-color: #4d84e2;
            }
            
        .btn3 {
            text-align: center;
                width: 100px;
                background-color: #5995fd;
                border: none;
                outline: none;
                height: 49px;
                border-radius: 49px;
                text-decoration: none;
                color: #fff;
                text-transform: uppercase;
                font-weight: 600;
                margin: 10px 0;
                cursor: pointer;
                transition: 0.5s;
                right:107px;
                bottom: 5px;
                position: fixed;
                line-height: 49px;
            }

            .btn3:hover {
                background-color: #4d84e2;
            }
    .container {
            width: 95%;
/*            width: 1240px;
            height: 1754px;*/
            background-color: #ffff66;
            position: relative;
            min-height: 110vh;
            overflow: hidden;
            /*background-color: rgba(0, 0, 0, 0.1);*/
            vertical-align: middle;
            justify-content: space-between;
            margin-top: 20px;
            margin-right: 20px;
            margin-left: 20px;
            background-color: #fff;
/*            background-color: transparent;*/
            /*box-shadow: rgba(50, 50, 93, 0.25) 0 6px 12px -2px, rgba(0, 0, 0, 0.3) 0 3px 7px -3px;*/
        }
/*    .cent{
        
    }*/
table, th, td {
  border:1px solid black;
}
th {
			background-color: #4CAF50;
			color: white;
		}
		h1 {text-align:center;}
		h2{text-align:center;}
		h3{text-align:center;}
		h4{text-align:center;}
		p {text-align:center;}
		h5{text-align:center;}
</style>
</head>
<body style="background-color: #00cc33">
    <div class="container" align="center">
        <div class="row">
        <div class="col" align="left">
<!--            <img src="https://www.linkpicture.com/q/PUC-logo_1.jpg" alt="PucOnClick Logo" style="margin-top: 10px;width: 70%; height: 70%;">-->
<!--            <img src="/your-web-context-path/resources/img/PUC_logo.png" alt="PucOnClick Logo" style="margin-top: 10px; width: 70%; height: 70%;">-->
            <img src="${pageContext.request.contextPath}/resources/img/PUC_logo.jpg" alt="PucOnClick Logo" style="margin-top: 10px; width: 60%; height: 70%;" />

        </div>
        <div class="col" align="center">
            <img src="${pageContext.request.contextPath}/resources/img/Ministry_of_Road_Transport_and_Highways.png" alt="PucOnClick Logo" style="margin-top: 10px;width: 100%; height: 90%;">
        </div>    
        <div class="col" align="right">
            <img src="${pageContext.request.contextPath}/resources/img/Slider-2-MMVD.png" alt="PucOnClick Logo" style="margin-top: 10px; width: 100%; height: 90%;" />
        </div>
        </div><br>
    <div class="row">
        <div class="col">
            <h1>PLATE IMAGE</h1>
            <h2>Authorised by Motor Vehicles Department, Maharashtra</h2><br>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <%try{
            
                Class.forName("com.mysql.cj.jdbc.Driver");

                Connection con = DriverManager.getConnection("jdbc:mysql://parking-db.cr4m664con6a.eu-north-1.rds.amazonaws.com:3306/puc?characterEncoding=utf8","admin","root1234");
                
                PreparedStatement stmt=con.prepareStatement("select * from isdiesel where registration_no=? union select * from isother where registration_no=?");
                stmt.setString(1, v);
                stmt.setString(2, v);
                
                ResultSet rs=stmt.executeQuery();
                while(rs.next()){
                    type=rs.getString("type");
                    if(type.startsWith("D")){
                        clas="diesel";
                        PreparedStatement stmt1=con.prepareStatement("select * from report_d where r_no=?");
                        stmt1.setString(1, v);
                        ResultSet rs1=stmt1.executeQuery();
                        while(rs1.next()){
                            in_small = Float.parseFloat(rs1.getString("in_lac"));
                            in_big = Integer.parseInt(rs1.getString("in_density"));
                        }
                    }
                    else{
                        clas="Petrol";
                        PreparedStatement stmt1=con.prepareStatement("select * from report_p where r_no=?");
                        stmt1.setString(1, v);
                        ResultSet rs1=stmt1.executeQuery();
                        while(rs1.next()){
                            in_small = Float.parseFloat(rs1.getString("in_co"));
                            in_big= Integer.parseInt(rs1.getString("in_hydro"));
                        }
                    }
                }
                
                if(type.startsWith("D")){
                    PreparedStatement statement=con.prepareStatement("select * from diesel where type=?");
                    statement.setString(1, type);
                    ResultSet rst01=statement.executeQuery();
                    while(rst01.next()){
                        float a = Float.parseFloat(rst01.getString("abs_coeff"));
                        int b = Integer.parseInt(rst01.getString("max_smoke_den"));
                        if(in_small<=a && in_big <= b){
                            test="PASS";
                        }
                        else{
                            test="FAILED";
                        }
                    }
                }
                else{
                    PreparedStatement statement=con.prepareStatement("select * from lpg_cng_petrol where type=?");
                    statement.setString(1, type);
                    ResultSet rst01=statement.executeQuery();
                    while(rst01.next()){
                        float a = Float.parseFloat(rst01.getString("co_level"));
                        int b = Integer.parseInt(rst01.getString("hydrocarbon"));
                        if(in_small<=a && in_big <= b){
                            test="PASS";
                        }
                        else{
                            test="FAILED";
                        }
                    }
                }
                
                PreparedStatement stmt5=con.prepareStatement("select * from vehicles where registration_no=?");
                stmt5.setString(1,v);
                
                ResultSet rst10=stmt5.executeQuery();
                while(rst10.next()){
                    vname=rst10.getString("vehicle_name");
                }
                
                PreparedStatement stmt3=con.prepareStatement("select * from puc natural join isother where registration_no=? union select * from puc natural join isdiesel where registration_no=?");
                stmt3.setString(1,v);
                stmt3.setString(2,v);
                
                ResultSet rst1=stmt3.executeQuery();
                while(rst1.next()){
                    enddate=rst1.getString("end_date");
                }
                
                PreparedStatement stmt2=con.prepareStatement("select * from puc natural join isother where registration_no=? union select * from puc natural join isdiesel where registration_no=?");
                stmt2.setString(1,v);
                stmt2.setString(2,v);
                
                ResultSet rst=stmt2.executeQuery();
                while(rst.next()){
                    enddate=rst.getString("end_date");
                }
            }
            catch(Exception k){
                k.getMessage();
            }
            %>
            <h3>Test Result: <%=test%><br></h3>
            <h4>Valid Till: <%=enddate%></h4><br>
            <%if(clas.equals("Petrol")){%>
            <p>
            PETROL/CNG/LPG DRIVEN VEHICLES<br>
            Certified that the vehicle conforms to the standards prescribed under rule 115(2) of CMV Rules: 1989<br>
            </p>
            <%}else{%>
            <p>
            DIESEL DRIVEN VEHICLES<br>
            <r></r>Certified that the vehicle conforms to the standards prescribed under rule 115(2) of CMV Rules: 1989<br>
            </p><br><br>
            <%}%>
        </div>
    </div>
    <div class="row">
        <div class="col" align="center">
            <%if(clas.equals("Petrol")){
            if(type.equals("NBC")){out_small=0.5; out_big=500;}
            else if(type.equals("NBP")){out_small=0.5; out_big=500;}
            else if(type.equals("NCC_BS4_BS6")){out_small=0.3; out_big=200;}
            else if(type.equals("NCP_BS4_BS6")){out_small=0.3; out_big=200;}
            else if(type.equals("OV2_23W_A")){out_small=3.5; out_big=6000;}
            else if(type.equals("OV24_23W_B")){out_small=4.5; out_big=9000;}
            else if(type.equals("OV4_23W_A")){out_small=3.5; out_big=4500;}
            else if(type.equals("OV4_BS2_P")){out_small=3.0; out_big=1500;}
            else if(type.equals("DV_PreBS4")){out_small=0.5; out_big=750;}
            %>
            <table style="align-items: center;justify-content: center;width: 100%;height: 50px;">
        <thead>
            <tr>
                <th>Fuel</th>
                <th>Prescribed Standard CO</th>
                <th>Measured Value</th>
                <th>Prescribed Standard HC</th>
                <th>Measured Value</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Petrol / CNG / LPG</td>
                <td><%= out_small%></td>
                <td><%=in_small%></td>
                <td><%= out_big %></td>
                <td><%=in_big%></td>
            </tr>
        </tbody>
    </table>
            <%}else{
               if(type.equals("DV_BS4")){out_small=1.62; out_big=50;}
                else if(type.equals("DV_PreBS4")){out_small=2.45; out_big=65;}
            %>
            <table style="align-items: center;justify-content: center;width: 100%;height: 50px;">
        <thead>
            <tr>
                <th>Fuel</th>
                <th>Prescribed Standard CO</th>
                <th>Measured Value</th>
                <th>Prescribed Standard HC</th>
                <th>Measured Value</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Diesel</td>
                <td><%= out_small%></td>
                <td><%=in_small%></td>
                <td><%= out_big %></td>
                <td><%=in_big%></td>
            </tr>
        </tbody>
    </table>

<%}%>
        </div>
    </div><br><br>
    <div class="row">
        <div class="col" align="left">
            <h4>Vehicle Information</h4>
            <%try{
                Class.forName("com.mysql.cj.jdbc.Driver");

                Connection con = DriverManager.getConnection("jdbc:mysql://parking-db.cr4m664con6a.eu-north-1.rds.amazonaws.com:3306/puc?characterEncoding=utf8","admin","root1234");
                
                PreparedStatement stmt=con.prepareStatement("select * from users where username=?");
                stmt.setString(1, (String) session.getAttribute("userName"));
                
                ResultSet rs=stmt.executeQuery();
                while(rs.next()){
                    name=rs.getString("name");
                }
                
                PreparedStatement stmt1=con.prepareStatement("select * from lpg_cng_petrol where type=? union select * from diesel where type=?");
                stmt1.setString(1, type);
                stmt1.setString(2, type);
                
                ResultSet rs1=stmt1.executeQuery();
                while(rs1.next()){
                    full=rs1.getString("full_form");
                }
            }
            catch(Exception k){k.getMessage();}%>
                <p>
                    <b>Owner Name:</b> <%=name%><br>
                    <b>Registration Number:</b> <%=v%><br>
                    <b>Name of the Vehicle:</b> <%=vname%><br>
                    <b>Category of Vehicle:</b> <%=full%>
                </p>
            <br>
        </div>
        <div class="col" align="right">
            <%try{
            
                Connection con = DriverManager.getConnection("jdbc:mysql://parking-db.cr4m664con6a.eu-north-1.rds.amazonaws.com:3306/puc?characterEncoding=utf8","admin","root1234");
                
                PreparedStatement stmt=con.prepareStatement("select * from vehicles natural join vehicle_image where  registration_no=?");
                stmt.setString(1, v);
                
                ResultSet rs=stmt.executeQuery();
                while(rs.next()){
                    byte[] imageBytes=null;
                    Blob imageBlob = rs.getBlob("data");
                    InputStream imageStream = imageBlob.getBinaryStream();
                    ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                    byte[] buffer = new byte[4096];
                    int n = 0;
                    while (-1 != (n = imageStream.read(buffer))) {
                        outputStream.write(buffer, 0, n);
                    }
                    imageBytes = outputStream.toByteArray();%>
                    <img class="card-img-top" alt="..." align="center" style="width: 70%; height: 80%;" src="data:image/jpeg;base64,<%= Base64.getEncoder().encodeToString(imageBytes) %>"/>
            <%
                }
                }
            catch(Exception k){
            k.getMessage();
    }%>
        </div>
        
    </div>
                

    </div>
                <button class="btn1" id="pdfButton">Save PDF</button>
                <a href="welcomepage" id="homeButton" class="btn2">Home</a>
                <a href="certificate?value=<%=request.getParameter("value")%>" id="bakcButton" class="btn3">Back</a>
                
<script>
    document.addEventListener('DOMContentLoaded', function() {
      const pdfButton = document.getElementById('pdfButton');
      const homeButton = document.getElementById('homeButton');
      const bakcButton = document.getElementById('bakcButton');

      pdfButton.addEventListener('click', function() {
        pdfButton.style.display = 'none';
        homeButton.style.display = 'none';
          bakcButton.style.display = 'none';// Hide the button

        const element = document.body;
        const v = '<%= vname %>';
        const options = {
          filename: v + ' PUC.pdf',
          jsPDF: { format: 'a4', orientation: 'portrait' }
        };

        html2pdf().set(options).from(element).save().then(function() {
          pdfButton.style.display = 'block';
          homeButton.style.display = 'block';
          bakcButton.style.display = 'block';
          // Show the button after saving PDF
        });
      });
    });
  </script>

</body>
</html>