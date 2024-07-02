<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
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
    <title>VEHICLES</title>
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
            
            .btn {
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
    
    <%@ include file="headerpuc1.jsp"%>
<div class="container">
    <div class="row">
        <div class="col">
            <r>Login yourself to the website</r>
        <br>
        <hr style="color: black; width: 100%; top: 70px; left: 100px;">
        </div>
<!--        <br>-->
    </div>
    <div class="row">
        <div class="col"><br><br><br><br>
            <form action="welcomepage" method="post">
                <div class="input-field">
                    <i class="fas fa-user"></i>
                    <input type="text" name="a" placeholder="Username" />
                </div>
                <div class="input-field">
                    <i class="fas fa-user"></i>
                    <input type="password" name="b" placeholder="Password" />
                </div>
                <input type="submit" class="btn" value="Sign up" />
            </form>
        </div>
        <div class="col">
            <img src="${pageContext.request.contextPath}/resources/img/25d28a85-d990-49de-b26d-b7668f1c9e5b.png" alt="PucOnClick Logo" style=" width: 100%; height: 100%;" />
        </div>
    </div>
</div>
</body>
</html>
