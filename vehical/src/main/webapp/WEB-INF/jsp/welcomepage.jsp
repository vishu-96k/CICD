<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>

    <head>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="icon"
            href="http://d1ujqdpfgkvqfi.cloudfront.net/favicon-generator/htdocs/favicons/2015-01-25/4757e4ccd8a23c97566ae55feb33e917.ico">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <script src="https://kit.fontawesome.com/64d58efce2.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="style.css" />

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VEHICALS</title>
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
                background-color: transparent;
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
                color: #333;
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
                background-color: transparent;
                /*            background-color: transparent;*/
                /*box-shadow: rgba(50, 50, 93, 0.25) 0 6px 12px -2px, rgba(0, 0, 0, 0.3) 0 3px 7px -3px;*/
            }

            r {
                font-size: 30px;
                justify-content: space-between;
                font-family: 'Poppins', sans-serif;
                color: rgb(255, 255, 255);
            }

            body {
                background-image: url('${pageContext.request.contextPath}/resources/img/bg.png');
                background-size: cover;
                background-repeat: no-repeat;
                opacity: 0.7;
                /* Adjust the value to reduce intensity */
                /* Other styles */
            }
        </style>
    </head>

    <body>

        <%@ include file="headerpucw.jsp" %>
            <div class="container">
                <div class="row">
                    <div class="col">
                        <r>PARKING</r>
                        <br>
                        <hr style="color: white; width: 100%; top: 70px; left: 100px;">
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <p style="font-size: 21px; color: white;margin-top: 40px;">
                            A parking management system automates a car parking system. It optimizes parking space and
                            make processes efficient. It gives real-time car parking information such as vehicle & slot
                            counts, available slots display, reserved parking, pay-and-park options, easy payments,
                            reports, and a host of other features.
                            <br>
                            Here are some general guidelines for parking management:

Designated Parking Areas: Clearly designate parking areas with proper signage and markings to avoid confusion and ensure efficient use of space.
Regulate Parking Duration: Implement time limits for parking to discourage long-term parking in high-demand areas and encourage turnover.
Enforce Parking Regulations: Enforce parking rules consistently to maintain order and safety. This includes issuing fines for violations such as illegal parking or overstaying time limits.
Provide Adequate Signage: Ensure clear signage indicating parking regulations, payment methods, and any restrictions to help drivers navigate the parking facility easily.
Accessible Parking: Allocate spaces for people with disabilities close to entrances and ensure they meet accessibility standards.
                        </p>
                    </div>
                    <div class="col" align="center">
                        <!-- <img src="${pageContext.request.contextPath}/resources/img/a8b8a426-5e96-4e55-b5f9-03100f07dfcb.png"
                            alt="PucOnClick Logo" style=" width: 80%; height: 80%;" /> -->
                    </div>
                </div>
                <div class="row">
                    <div class="col" align="center">
                        <img src="${pageContext.request.contextPath}/resources/img/231fedc4-b13f-48f9-b138-13e1fc33989a.png"
                            alt="PucOnClick Logo" style=" width: 80%; height: 80%;" />
                    </div>
                    <div class="col">
                        <br><br>
                        <r style="font-size: 25px; color: #ffffff; margin-top: 30px;">MANAGING PARKING</r>
                        <p style="font-size: 21px; color: #ffffff;;margin-top: 10px;">

                            Parking management is important because it optimizes space, reduces traffic congestion,
                            improves air quality and safety, supports local businesses, encourages alternative
                            transportation, generates revenue, and informs urban planning.

                        </p>
                    </div>
                </div>
                <div class="row">
                    <r style="font-size: 25px; color: white;">?</r>
                    <p style="font-size: 21px; color: white;margin-top: 10px;">

                    </p>

                </div>
            </div>
            </h1>
    </body>

    </html>