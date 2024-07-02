<%@page import="java.util.Base64"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.Blob"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="icon" href="http://d1ujqdpfgkvqfi.cloudfront.net/favicon-generator/htdocs/favicons/2015-01-25/4757e4ccd8a23c97566ae55feb33e917.ico">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
        <script src="https://kit.fontawesome.com/64d58efce2.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="style.css" />
    
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>PUC | Vehicles</title>
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700;800&display=swap");

            .modal {
                display: none;
                position: fixed;
                z-index: 1;
                align-self: center;
                left: 0;
                top: 0;
                width: 100%;
                height: 100%;
                overflow: auto;
                background-color: rgba(0,0,0,0.2);
            }

            .modal-content {
                background-color: white;
                margin: 10% auto;
                padding: 20px;
                border: 1px solid #888;
                width: 40%;
                position: relative;
            }
            
            .modal button.close{
                display: none;
            }

            form {
                display: flex;
                align-items: center;
                justify-content: center;
                flex-direction: column;
                padding: 0rem 5rem;
                transition: all 0.2s 0.7s;
                overflow: hidden;
                grid-column: 1 / 2;
                grid-row: 1 / 2;
            }

            form.sign-up-form {
                opacity: 0;
                z-index: 1;
            }

            form.sign-in-form {
                z-index: 2;
            }
            
            .input-field {
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
            }
            
            .btn1 {
                width: 150px;
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
            }
            
            .btn2 {
                text-decoration: none;
                width: 180px;
                background-color: #5995fd;
                border: none;
                outline: none;
                height: 70px;
                border-radius: 49px;
                color: #fff;
                text-transform: uppercase;
                font-weight: 600;
/*                margin: 10px 0;*/
                padding: 10px 10px 10px 10px;
                margin-bottom: 10px;
                cursor: pointer;
                transition: 0.5s;
            }

            .btn2:hover {
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
        
        form {
                padding: 0 1.5rem;
            }
            
/*        .card-img-top {
            width: 200px;
            height: 200px;
        }*/
        
/*        .item-card {
                display: block;
            }

            .item-card:hover {
                box-shadow: rgba(50, 50, 93, 0.25) 0 6px 12px -2px, rgba(0, 0, 0, 0.3) 0 3px 7px -3px;
            }*/
        
        .card {
            width:250px !important;
            margin-left: 10px;
            margin-right: 10px;
            margin-bottom: 10px;
            margin-top: 10px;
            background-color: transparent;
            box-shadow: rgba(50, 50, 93, 0.25) 0 6px 12px -2px, rgba(0, 0, 0, 0.3) 0 3px 7px -3px;
        }
        
        .card-body {
            display: flex;
/*            justify-content: center;*/
            align-items: center;
/*            margin-top:0px;*/
        }

        r {
            font-size: 30px;
            justify-content: space-between;
            font-family: 'Poppins', sans-serif;
            color:black;
        }
        d{
            font-size:17px; 
            color: gray;
        }
        .child-center {
            position: absolute;
            left: 50%;
            transform: translateX(-50%);
        }

        .child-right {
            position: absolute;
            right: 0;
        }
        
        .material-symbols-outlined{
            background-color: white;
        }
        
    </style>
</head>
<body>
    
    <%@ include file="headerpuc3.jsp"%>
<div class="container">
    <div class="row">
        <div class="col">
            <r>Your registered vehicle(s)</r>
        <br>
        <hr style="color: black; width: 100%; top: 70px; left: 100px;">
        </div>
    </div>
    <div class="row">
        <div class="col">
            <img src="${pageContext.request.contextPath}/resources/img/104baa46-ffa5-4624-9921-06c0fff7e9f3.png" alt="PucOnClick Logo" style=" width: 100%;" />
        </div>
        <div class="col">
            
            <%--
int colind = 0;
try {
    Class.forName("com.mysql.cj.jdbc.Driver");

    Connection con = DriverManager.getConnection("jdbc:mysql://puc-db.cbiikaymkwx4.ap-south-1.rds.amazonaws.com:3306/puc?characterEncoding=utf8","root","root1234");

    PreparedStatement stmt2 = con.prepareStatement("select * from users natural join vehicles natural join isother where username=? union select * from users natural join vehicles natural join isdiesel where username=?");
    stmt2.setString(1, (String) session.getAttribute("userName"));
    stmt2.setString(2, (String) session.getAttribute("userName"));
    ResultSet rst = stmt2.executeQuery();
%>
<table>
<%
while (rst.next()) {
    String id=rst.getString("registration_no");
    PreparedStatement stmt1 = con.prepareStatement("select * from vehicles, vehicle_image where vehicles.registration_no=vehicle_image.registration_no and vehicles.registration_no=?");
    stmt1.setString(1, id);

    ResultSet rst1 = stmt1.executeQuery();
    while (rst1.next()) {
        Blob imageBlob = rst1.getBlob("data");
        InputStream imageStream = imageBlob.getBinaryStream();
        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
        byte[] buffer = new byte[4096];
        int n = 0;
        while (-1 != (n = imageStream.read(buffer))) {
            outputStream.write(buffer, 0, n);
        }
        byte[] imageBytes = outputStream.toByteArray();
%>
<td>
    <div class="project-cards">
        <div class="card">
            <img class="card-img-top" alt="..." align="center" style="width:30%,height:30%;" src="data:image/jpeg;base64,<%= Base64.getEncoder().encodeToString(imageBytes) %>"/>
            <div class="card-head" style="display: flex; align-items: center;">
                <h3 style="flex-grow: 1; margin-bottom: 0; text-align: center;"><%= rst.getString("vehicle_name")%></h3>
                <form action="vehicledelete" method="post" onsubmit="return confirm('Are you sure you want to delete this vehicle?');">
                    <button class="centre-btn" type="submit" style="border: none;background-color: white;">
                        <span class="material-symbols-outlined">delete</span>
                        <!-- <span class="hover-text">Delete vehicle</span> -->
                    </button>
                    <input name="a" value="<%=rst.getString("licence_no")%>" hidden>
                    <input name="b" value="<%=rst.getString("registration_no")%>" hidden>
                    <input name="c" value="<%=rst.getString("type")%>" hidden>
                </form>
            </div>
            <hr style="width: 100%; color: black; align-self: center;  margin-bottom: 0px; margin-top: 0px; ">
            <div class="card-body">
                <p class="card-text" style="margin-top:0px;">
                    Chasis Number:<br><d><%=rst.getString("chasis_no")%></d><br>
                    Registration Number:<br><d><%=rst.getString("registration_no")%></d><br>
                    Type:<br><d><%=rst.getString("type")%></d>
                </p>
            </div>
            <div class="card-foot" align="center">
                <div style="margin-bottom: 10px;">
                    <a href="certificate?value=<%=rst.getString("registration_no")%>" class="btn2">Get Certificate</a><br>
                </div>
                <div class="child-right">
                </div>
            </div>
        </div>
    </div>
</td>
<%
    colind++;
    if (colind % 2 == 0) {
        %></tr><tr><%
    }
}
%></table><%
}} catch (Exception k) {
    k.getMessage();
}
--%>

<%
                int colind=0;
                try{
                    Class.forName("com.mysql.cj.jdbc.Driver");

                    Connection con = DriverManager.getConnection("jdbc:mysql://puc-db.cbiikaymkwx4.ap-south-1.rds.amazonaws.com:3306/puc?characterEncoding=utf8","root","root1234");

                    PreparedStatement stmt2 = con.prepareStatement("select * from users natural join vehicles natural join vehicle_image natural join isother where username=? union select * from users natural join vehicles natural join vehicle_image natural join isdiesel where username=?");
                    stmt2.setString(1, (String) session.getAttribute("userName"));
                    stmt2.setString(2, (String) session.getAttribute("userName"));
                    ResultSet rst=stmt2.executeQuery();
                    %>
                    <table>
                    <%
                    while (rst.next()) {
                        byte[] imageBytes=null;
                            Blob imageBlob = rst.getBlob("data");
                            InputStream imageStream = imageBlob.getBinaryStream();
                            ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                            byte[] buffer = new byte[4096];
                            int n = 0;
                            while (-1 != (n = imageStream.read(buffer))) {
                                outputStream.write(buffer, 0, n);
                            }
                            imageBytes = outputStream.toByteArray();
                    %>
                        <td>
                            <div class="project-cards">
                                <div class="card">
                                    <img class="card-img-top" alt="..." align="center" style="width:30; height:30%;" src="data:image/jpeg;base64,<%= Base64.getEncoder().encodeToString(imageBytes) %>"/>
                                    <div class="card-head" style="display: flex; align-items: center;">
                                        <h3 style="flex-grow: 1; margin-bottom: 0; text-align: center;"><%= rst.getString("vehicle_name")%></h3>
                                        <form action="vehicledelete" method="post" onsubmit="return confirm('Are you sure you want to delete this vehicle?');">
                                          <button class="centre-btn" type="submit" style="border: none;background-color: white;">
                                            <span class="material-symbols-outlined">delete</span>
<!--                                            <span class="hover-text">Delete vehicle</span>-->
                                          </button>
                                          <input name="a" value="<%=rst.getString("licence_no")%>" hidden>
                                          <input name="b" value="<%=rst.getString("registration_no")%>" hidden>
                                          <input name="c" value="<%=rst.getString("type")%>" hidden>
                                        </form>
                                    </div>
                                    <hr style="width: 100%; color: black; align-self: center;  margin-bottom: 0px; margin-top: 0px; ">
                                    <div class="card-body">
                                        <p class="card-text" style="margin-top:0px;">
                                            Chasis Number:<br><d><%=rst.getString("chasis_no")%></d><br>
                                            Registration Number:<br><d><%=rst.getString("registration_no")%></d><br>
                                            Type:<br><d><%=rst.getString("type")%></d>
                                            </p>
                                    </div>
                                    <div class="card-foot" align="center">
                                        <div style="margin-bottom: 10px;">
                                            <a href="certificate?value=<%=rst.getString("registration_no")%>" class="btn2">Get Certificate</a><br>
                                        </div>
                                        <div class="child-right">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </td>   
                        <%colind++;%>
                        <%if (colind % 2 == 0) {
                        %></tr><tr>
                            <%}}%></table><%}
                            catch(Exception k){
                                k.getMessage();
                            }%>
            
            <%--
                int colind=0;
                try{
                    Class.forName("com.mysql.cj.jdbc.Driver");

                    Connection con = DriverManager.getConnection("jdbc:mysql://puc-db.cbiikaymkwx4.ap-south-1.rds.amazonaws.com:3306/puc?characterEncoding=utf8","root","root1234");

                    PreparedStatement stmt2 = con.prepareStatement("select * from users natural join vehicles natural join isother where username=? union select * from users natural join vehicles natural join isdiesel where username=?");
                    stmt2.setString(1, (String) session.getAttribute("userName"));
                    stmt2.setString(2, (String) session.getAttribute("userName"));
                    ResultSet rst=stmt2.executeQuery();
                    %>
                    <table>
                    <%
                    while (rst.next()) {
                        String id=rst.getString("registration_no");
                        PreparedStatement stmt1 = con.prepareStatement("select * from vehicles, vehicle_image where vehicles.registration_no=vehicle_image.registration_no and vehicles.registration_no=?");
                        stmt1.setString(1, id);
                        byte[] imageBytes=null;
                        ResultSet rst1 = stmt1.executeQuery();
                        while (rst1.next()) {
                            Blob imageBlob = rst1.getBlob("data");
                            InputStream imageStream = imageBlob.getBinaryStream();
                            ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                            byte[] buffer = new byte[4096];
                            int n = 0;
                            while (-1 != (n = imageStream.read(buffer))) {
                                outputStream.write(buffer, 0, n);
                            }
                            imageBytes = outputStream.toByteArray();
                    %>
                        <td>
                            <div class="project-cards">
                                <div class="card">
                                    <img class="card-img-top" alt="..." align="center" style="width:30%,height:30%;" src="data:image/jpeg;base64,<%= Base64.getEncoder().encodeToString(imageBytes) %>"/>
                                    <div class="card-head" style="display: flex; align-items: center;">
                                        <h3 style="flex-grow: 1; margin-bottom: 0; text-align: center;"><%= rst.getString("vehicle_name")%></h3>
                                        <form action="vehicledelete" method="post" onsubmit="return confirm('Are you sure you want to delete this vehicle?');">
                                          <button class="centre-btn" type="submit" style="border: none;background-color: white;">
                                            <span class="material-symbols-outlined">delete</span>
<!--                                            <span class="hover-text">Delete vehicle</span>-->
                                          </button>
                                          <input name="a" value="<%=rst.getString("licence_no")%>" hidden>
                                          <input name="b" value="<%=rst.getString("registration_no")%>" hidden>
                                          <input name="c" value="<%=rst.getString("type")%>" hidden>
                                        </form>
                                    </div>
                                    <hr style="width: 100%; color: black; align-self: center;  margin-bottom: 0px; margin-top: 0px; ">
                                    <div class="card-body">
                                        <p class="card-text" style="margin-top:0px;">
                                            Chasis Number:<br><d><%=rst.getString("chasis_no")%></d><br>
                                            Registration Number:<br><d><%=rst.getString("registration_no")%></d><br>
                                            Type:<br><d><%=rst.getString("type")%></d>
                                            </p>
                                    </div>
                                    <div class="card-foot" align="center">
                                        <div style="margin-bottom: 10px;">
                                            <a href="certificate?value=<%=rst.getString("registration_no")%>" class="btn2">Get Certificate</a><br>
                                        </div>
                                        <div class="child-right">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </td>   
                        <%colind++;%>
                        <%if (colind % 2 == 0) {
                        %></tr><tr>
                            <%}}}%></table><%}
                            catch(Exception k){
                                k.getMessage();
                            }--%>
<!--                </div>-->
                
                <button class="btn1">Add vehicles</button>
                
                <div id="modal" class="modal">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">New Vehicle</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                    </div>
                    <div class="modal-body">
<!--                        <form action="addvehicle" method="post">-->
                        <form action="addvehicle" method="post" enctype="multipart/form-data">
                            <input type="text" id="puc-user" value="<%=session.getAttribute("userName")%>" class="form-control form-input" name="a" readonly="readonly"/><br>
                            <input type="text" id="puc-id" class="form-control form-input" placeholder="Registration Number" name="b"/><br>
                            <input type="text" id="puc-title" class="form-control form-input" placeholder="Chasis Number" name="c"/><br>
                            <input type="text" id="project-title" class="form-control form-input" placeholder="Vehicle Name" name="d"/><br>
                            <input type="text" class="form-control form-input" placeholder="Vehicle Color" name="e"/><br>
                            <div style="display:inline-block; justify-content: space-between;">
                                <input type="radio" id="bullet1" name="bullet" value="other"/>LPG/CNG/Petrol</label>
                                <input type="radio" id="bullet2" name="bullet" value="diesel"/>Diesel</label>
                            </div><br><br>
                            <input list="myOptions" id="types" class="form-control form-input" placeholder="Vehicle Types" name="f"/><br>
                            <datalist id="myOptions" class="my-datalist">
                                <%
                                    try{
                                    Class.forName("com.mysql.cj.jdbc.Driver");

                                    Connection con = DriverManager.getConnection("jdbc:mysql://puc-db.cbiikaymkwx4.ap-south-1.rds.amazonaws.com:3306/puc?characterEncoding=utf8","root","root1234");

                                    PreparedStatement stmt2 = con.prepareStatement("select * from lpg_cng_petrol union select * from diesel");
                                    ResultSet rs=stmt2.executeQuery();
                                    
                                    while(rs.next())
                                    {
                                    %><option value="<%=rs.getString("type")%>"><%=rs.getString("full_form")%></option><%
                                    }
                                    }
                                    catch(Exception k){
                                    k.getMessage();
                                    }
                                %>
                            </datalist>
                            <div>
                                <br><h4>Registration plate image</h4>
                                <p>Upload a clear image!</p>
                                <br>
                                <input id="images" type="file" style="margin-left: 40px; padding: 10px;" accept="image/png, image/jpeg" name="k"/>
                                <br><br><br>
                            </div>
                            
                            <button type="submit" class="btn btn-primary" value="submit">Save changes</button>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <!--                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Dismiss</button>-->
                    </div>
                </div>
            </div>
                
        </div>
    </div>       
</div>
<script>
    const addButton = document.querySelector('.btn1');
    const modal = document.getElementById('modal');
    const cancelButton = document.getElementById('cancel-button');
    const saveButton = document.getElementById('save-button');
    const closeButton = document.querySelector('.btn-close');

    closeButton.addEventListener('click', () => {
        modal.classList.remove('show');
        modal.style.display = 'none';
    });

    addButton.addEventListener('click', () => {
        modal.style.display = 'block';
    });

    cancelButton.addEventListener('click', () => {
        modal.style.display = 'none';
    });            

</script>

</body>
</html>
