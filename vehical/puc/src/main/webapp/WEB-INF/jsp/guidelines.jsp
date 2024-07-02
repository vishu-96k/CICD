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
    <title>PUC | Welcome User</title>
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
    
    <%@ include file="headerpuc3.jsp"%>
<div class="container">
    <div class="row">
        <div class="col">
            <r>Guidelines</r>
        <br>
        <hr style="color: black; width: 100%; top: 70px; left: 100px;">
        </div>
    </div>
    <div class="row">
        <div class="col">
            <r style="font-size: 25px; color: #666666; margin-top: 30px;">How to Get a PUC Certificate for your Vehicle (Car and Bike)</r>
            <p style="font-size: 20px; color: gray;margin-top: 10px;">
                There are several mandatory documents (like a car insurance certificate) that you need to legally drive/ride a vehicle in India, and the PUC Certificate is one of them.

Every motor vehicle in India needs to undergo and clear the PUC test to comply with the rules and regulations of The Motor Vehicles Act.

If you want details, read ahead, as this article provides deep insights into the vehicle pollution certificate and the process involved in obtaining the PUC Certificate for vehicles.
            </p>
        </div>
        <div class="col" align="center">
            <img src="${pageContext.request.contextPath}/resources/img/55077cb2-758c-46c0-995a-f668a64e55fb.png" alt="PucOnClick Logo" style=" width: 80%; height: 80%;" />
        </div>
    </div>
    <div class="row">
        <div class="col" align="center">
            <img src="${pageContext.request.contextPath}/resources/img/7e993780-5740-48bf-92df-ef8209128980.png" alt="PucOnClick Logo" style=" width: 80%; height: 80%;" />
        </div>
        <div class="col">
            <br><r style="font-size: 25px; color: #666666; margin-top: 30px;">Can you Renew your PUC Certificate Online?</r>
            <p style="font-size: 21px; color: gray;margin-top: 10px;">
If you are looking to renew PUC online, then you should be aware of the fact that the process cannot be completed online.

Your vehicle must undergo an emission test to renew the pollution certificate. And for that to happen, you must take the vehicle to the nearest emission testing centre.

Hence, PUC renewal online is not possible.

            </p>
        </div>
    </div>
    <hr style="color: black; width: 100%;"><br>
    <div class="row">
        <r style="font-size: 25px; color: #666666;">PUC Rules and Regulations in India</r>
        <p style="font-size: 21px; color: gray;margin-top: 10px;">
Here are the rules and regulations related to pollution certificates for vehicles. Note that these are subject to changes.

The permissible emission levels for vehicles are fixed under Rule 115 (2) of The Motor Vehicles Act, 1988.

The acceptable emission levels for vehicles keep changing on a regular basis as per the government’s directives to keep the pollution levels in check.

ARAI (Automotive Research Association of India) rolls out directives related to examining vehicle exhaust emissions, limits and updated regulations.

The PUC norms and the certificate format remain the same across the country.

If the vehicle fails the PUC test (emission levels exceed the permissible level), the testing centre can issue a rejection slip.

Under circumstances of non-compliance to the pollution norms, the registration authority can suspend the RC (Registration Certificate) and any other permits (with reasons recorded in writing) of the vehicle till the owner obtains a valid pollution certificate.
        </p>

    </div><br>
    
    <div class="row">
        <div class="col" align="center">
            <img src="${pageContext.request.contextPath}/resources/img/064bb3a5-c482-4708-9a99-49ed0ead519f.png" alt="PucOnClick Logo" style=" width: 80%; height: 80%;" />
        </div>
        <div class="col">
            <r style="font-size: 25px; color: #666666;">Contents of the PUC Certificate</r>
        <p style="font-size: 21px; color: gray;margin-top: 10px;">
A Pollution Under Control Certificate contains the following details.

PUC Certificate serial number

Vehicle details (registration number)

The date of the emission certificate test

Validity of the vehicle pollution certificate

Emission test readings
        </p><br>
        <r style="font-size: 25px; color: #666666;">How long is your PUC Certificate valid?</r>
        <p style="font-size: 21px; color: gray;margin-top: 10px;">
The validity of the Pollution Under Control Certificate is limited, and it differs for new and old vehicles. Here are more details about PUC Certificate validity in India.

PUC validity for a car: The new car PUC validity stands at 1 year. Post that period; you need to renew the pollution certificate every 6 months.

PUC validity for a bike: The pollution certificate validity for a new bike stands at 1 year. Once you cross that period, the renewed PUC Certificate is valid for 6 months.
        </p>
        </div>
    </div>
    <hr style="color: black; width: 100%;"><br>
    
    <div class="row">
        <r style="font-size: 25px; color: #666666;">Pollution certificate for new car (Permissible Levels)</r>
        <p style="font-size: 21px; color: gray;margin-top: 10px;">
 A pollution certificate for a new car is a must as per The Motor Vehicles Act. It is a mandatory document to legally drive a vehicle in India. You can refer to the following table to learn about the PUC rules (permissible levels) for new cars.
        </p>
        <div align="center">
            <img src="${pageContext.request.contextPath}/resources/img/first.jpg" alt="PucOnClick Logo" style=" width: 80%; height: 80%;" />
        </div>
    </div><br>
    
    <div class="row">
        <r style="font-size: 25px; color: #666666;">Pollution certificate for new bike (Permissible Levels)</r>
        <p style="font-size: 21px; color: gray;margin-top: 10px;">
 The PUC Certificate for new bikes is mandatory as per the rules and regulations of The Motor Vehicles Act. You can go through the following table to learn about the norms (permissible levels) for two-wheeler pollution certificates.
        </p>
        <div align="center">
            <img src="${pageContext.request.contextPath}/resources/img/second.jpg" alt="PucOnClick Logo" style=" width: 80%; height: 80%;" />
        </div>
    </div><br>
    
    <div class="row">
        <r style="font-size: 25px; color: #666666;">Pollution certificate for diesel vehicles (Permissible Levels)</r>
        <p style="font-size: 21px; color: gray;margin-top: 10px;">
 The emission testing of diesel vehicles is different from petrol vehicles. Hence, the rules for PUC for diesel vehicles are slightly different. Here are the details about pollution testing norms (permissible levels) for vehicles running on diesel fuel.
        </p>
        <div align="center">
            <img src="${pageContext.request.contextPath}/resources/img/third.jpg" alt="PucOnClick Logo" style=" width: 80%; height: 80%;" />
        </div>
    </div><br>
    
    <div class="row">
        <r style="font-size: 25px; color: #666666;">Pollution certificate for old vehicles (Cars, Bikes and Three Wheelers)</r>
        <p style="font-size: 21px; color: gray;margin-top: 10px;">
 Here are the details pertaining to the PUC norms (permissible levels) for old vehicles, including cars, bikes and three-wheelers.
        </p>
        <div align="center">
            <img src="${pageContext.request.contextPath}/resources/img/fourth.jpg" alt="PucOnClick Logo" style=" width: 80%; height: 80%;" />
        </div>
    </div>
    
    
</div>
</body>
</html>
