<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%String v = request.getParameter("value");
%>
<html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
<head>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="icon" href="http://d1ujqdpfgkvqfi.cloudfront.net/favicon-generator/htdocs/favicons/2015-01-25/4757e4ccd8a23c97566ae55feb33e917.ico">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <script src="https://kit.fontawesome.com/64d58efce2.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="style.css" />
    
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>VEHICAL </title>
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700;800&display=swap");

/*        .forms-container {
                position: absolute;
                width: 100%;
                height: 100%;
                top: 0;
                left: 0;
            }*/
            
/*            .signin-signup {
                position: absolute;
                top: 50%;
                transform: translate(-50%, -50%);
                left: 75%;
                width: 50%;
                transition: 1s 0.7s ease-in-out;
                display: grid;
                grid-template-columns: 1fr;
                z-index: 5;
            }*/

/*            form {
                display: flex;
                align-items: center;
                justify-content: center;
                flex-direction: column;
                padding: 0rem 5rem;
                transition: all 0.2s 0.7s;
                overflow: hidden;
                grid-column: 1 / 2;
                grid-row: 1 / 2;
            }*/

            .form-input {
                width: 60%!important;
                border: none;
                border-bottom: 1px solid #949494;
                border-radius: 0;
                display: block;
                margin: 0 auto;
                outline: none;
                transition: 0.2s all;
                font-size: 18px;
            }

            .form-input:focus {
                border-bottom: 2px solid #1e53ff;
                transition: 0.2s all;
            }


/*            .form-input{
                width: 50px;
                font-size: 18px;
            }*/
            
/*            .input-field {
                max-width: 380px;
                width: 100%;
                background-color: #f0f0f0;
                margin: 10px 0;
                height: 55px;
                border-radius: 55px;
                display: grid;
                grid-template-columns: 15% 85%;
                padding: 0 0.4rem;
                position: relative;
            }

            .input-field i {
                text-align: center;
                line-height: 55px;
                color: #acacac;
                transition: 0.5s;
                font-size: 1.1rem;
            }

            .input-field input {
                background: none;
                outline: none;
                border: none;
                line-height: 1;
                font-weight: 600;
                font-size: 1.1rem;
                color: #333;
            }

            .input-field input::placeholder {
                color: #aaa;
                font-weight: 500;
            }*/
            
            .btn {
                width: 200px;
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
            }

            .btn:hover {
                background-color: #4d84e2;
            }

        .container {
            width: 100%;
            position: relative;
            min-height: 100vh;
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

        r {
            font-size: 30px;
            justify-content: space-between;
            font-family: 'Poppins', sans-serif;
            color:black;
        }
    </style>
</head>
<body>

    <%@ include file="headerpuc3.jsp"%>
<div class="container">
    <div class="row">
        <div class="col">
            <r>PUC Certificate</r>
        <br>
        <hr style="color: black; width: 100%; top: 70px; left: 100px;">
        </div>
    </div>
    <div class="row">
        <div class="col" align="left">
            <r style="font-size: 25px; color: #666666; margin-top: 30px;">Emissions from the PUC testing console</r><br><br>
            <%try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://parking-db.cr4m664con6a.eu-north-1.rds.amazonaws.com:3306/puc?characterEncoding=utf8","admin","root1234");
                
                PreparedStatement stmt=con.prepareStatement("select * from users natural join vehicles natural join isother where registration_no=? union select * from users natural join vehicles natural join isdiesel where registration_no=?");
                stmt.setString(1, v);
                stmt.setString(2, v);
                
                ResultSet rs=stmt.executeQuery();
                while(rs.next()){%> 
            <form action="getcertificate" method="post" style="padding: 0px 0px 0px 0px; width:100%;">
                <input name="a" value="<%=request.getParameter("value")%>" hidden>
                <input name="d" value="<%=rs.getString("type")%>" hidden>
                <input name="e" value="<%=rs.getString("licence_no")%>" hidden>
                <%
                    if(rs.getString("type").startsWith("D")){%>
                <p style="font-size: 21px; color: gray; margin-top: 10px;">
                    Intake of Light Absorption Coefficient from your vehicle:<input type="text" id="project-title" class="form-control form-input" name="b"/> 
                    <br>Intake of Maximum Smoke Density in Hartridge units from your vehicle:<input type="text" id="project-title" class="form-control form-input" name="c"/>
                </p>
                <p style="font-size: 21px; color: gray; margin-top: 10px;">From when</p>
                <input class="form-input" type="date" id="date-input1" name="startdate" onchange="updateEndDate()"/>
                <input class="form-input" type="date" id="date-input2" name="enddate" hidden/><br>
                <button type="submit" class="btn">Generate Certificate</button><br>
                    <%}
                    else{%>

                <p style="font-size: 21px; color: gray;  margin-top: 10px;">
                    Intake of Carbon Monoxide (in %) from your vehicle: <input type="text" id="project-title" class="form-input" name="b"/>
                    Intake of Hydrocarbon (in PPM) from your vehicle: <input type="text" id="project-title" class="form-input" name="c"/>
                </p>
                <p style="font-size: 21px; color: gray; margin-top: 10px;">From when</p>
                <input class="form-input" type="date" id="date-input1" name="startdate" onchange="updateEndDate()"/>
                <input class="form-input" type="date" id="date-input2" name="enddate" hidden/><br>
                <button type="submit" class="btn">Generate Certificate</button><br>
            </form>
                    <%}
                }
            }
            catch(Exception k){
                k.getMessage();
            }
            %>
        </div>
        <div class="col" align="right">
            <img src="${pageContext.request.contextPath}/resources/img/138bb34e-a257-41c5-bcbe-b1eac8445056.png" alt="PucOnClick Logo" style="width: 80%; height: 80%;" />
        </div>
    </div>
    <div class="row">
        <div class="col">
            <r>Exisiting PUC of the vehicle</r>
        <br>
        <hr style="color: black; width: 100%; top: 70px; left: 100px;">
        </div>
    </div>
        
        <div class="row">
    <% try {
        int cnt = 0;
        String name = "";
        String type = "";
        String full_form = "";
        String licence_no="";
        String id="";

        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://parking-db.cr4m664con6a.eu-north-1.rds.amazonaws.com:3306/puc?characterEncoding=utf8","admin","root1234");

        PreparedStatement stmt5=con.prepareStatement("select * from users natural join vehicles natural join isother where registration_no=? union select * from users natural join vehicles natural join isdiesel where registration_no=?");
        stmt5.setString(1, v);
        stmt5.setString(2, v);

        ResultSet rst1=stmt5.executeQuery();
        while(rst1.next()){
            name=rst1.getString("name");
            licence_no=rst1.getString("licence_no");
            id=v+licence_no;
        }
        
        PreparedStatement stmt = con.prepareStatement("select count(*) from puc where puc_no=?");
        stmt.setString(1, id);

        ResultSet rs = stmt.executeQuery();
        while (rs.next()) {
            cnt = rs.getInt(1);
        }

        if (cnt == 0) {
    %>
        <p style="font-size: 21px; color: gray; margin-top: 10px;">No Existing PUC of this vehicle.</p>
    <% } else {
        PreparedStatement statement = con.prepareStatement("select * from vehicles natural join isdiesel natural join diesel where registration_no=? union select * from vehicles natural join isother natural join lpg_cng_petrol where registration_no=?");
        statement.setString(1, v);
        statement.setString(2, v);

        ResultSet rs1 = statement.executeQuery();
        while (rs1.next()) {
            type = rs1.getString("type");
            full_form = rs1.getString("full_form");
        }
        
        PreparedStatement stmt1 = con.prepareStatement("select * from puc natural join report_d where r_no=? union select * from puc natural join report_p where r_no=?");
        stmt1.setString(1, v);
        stmt1.setString(2, v);
        ResultSet rst = stmt1.executeQuery();

        while(rst.next()){
        %>
    <% if (type.startsWith("D")) { %>
        <table class="center">
            <thead>
                <tr>
                    <th>Fuel</th>
                    <th>Registration No</th>
                    <th>Name</th>
                    <th>Type</th>
                    <th>Start Date</th>
                    <th>End Date</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Diesel</td>
                    <td><%= v %></td>
                    <td><%= name %></td>
                    <td><%= type %></td>
                    <td><%= rst.getString("start_date") %></td>
                    <td><%= rst.getString("end_date") %></td>
                </tr>
            </tbody>
        </table>
    <% } else { %>
        <table class="center">
            <thead>
                <tr>
                    <th>Fuel</th>
                    <th>Registration No</th>
                    <th>Name</th>
                    <th>Type</th>
                    <th>Start Date</th>
                    <th>End Date</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Petrol / CNG / LPG</td>
                    <td><%= v %></td>
                    <td><%= name %></td>
                    <td><%= type %></td>
                    <td><%= rst.getString("start_date") %></td>
                    <td><%= rst.getString("end_date") %></td>
                </tr>
            </tbody>
        </table>
    <% }}
    }
    } catch (Exception k) {
        k.getMessage();
    } %>
</div>

        
    
</div>
<script>
function updateEndDate() {
  var startDate = new Date(document.getElementById('date-input1').value);
  var endDate = new Date(startDate);
  endDate.setDate(startDate.getDate() + 365);
  
  var year = endDate.getFullYear();
  var month = ("0" + (endDate.getMonth() + 1)).slice(-2);
  var day = ("0" + endDate.getDate()).slice(-2);
  var formattedEndDate = year + "-" + month + "-" + day;
  
  document.getElementById('date-input2').value = formattedEndDate;
  document.getElementById('date-input2').hidden = false;
}
</script>
</body>
</html>

    <%--
        if (request.getParameter("value") != null) {
            java.util.Random random = new java.util.Random();
            float randomFloat = random.nextFloat() * 10;
            float roundedFloat = Math.round(randomFloat * 100.0) / 100.0f;
            int randomInt = random.nextInt(14801) + 200;
            int randomInt1 = random.nextInt(61) + 40;
            request.setAttribute("roundedFloat", roundedFloat);
            request.setAttribute("randomInt1", randomInt1);
            request.setAttribute("randomInt", randomInt);
        }
    --%>


<!--            <p style="font-size: 21px; color: gray;margin-top: 10px;">
                Intake of Light Absorption Coefficient from your vehicle: <%--= request.getAttribute("roundedFloat") %>
                Intake of Maximum Smoke Density in Hartridge units from your vehicle: <%= request.getAttribute("randomInt1") --%>
            </p>-->

<!--            <p style="font-size: 21px; color: gray;margin-top: 10px;">
                Intake of Carbon Monoxide (in %) from your vehicle: <%--= request.getAttribute("roundedFloat") %>
                Intake of Hydrocarbon (in PPM) from your vehicle: <%= request.getAttribute("randomInt") --%>
            </p>-->
            
<!--            <form action="certificate" method="post">
                <button type="submit" value="<%--= request.getParameter("value") --%>" name="value" class="btn">Randomize Values</button>
            </form>-->
            
