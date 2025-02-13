<%-- 
    Document   : AdminLogin
    Created on : Feb 4, 2024, 4:14:05 PM
    Author     : MAYANK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Back come Back - Please LogIn </title>


        <link href="static/image/image2.jpg" rel="icon/jpeg">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">


        <script src="static/js/userNav.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <style> 
            body {

                background-color:#dee1ec; 
            }
            form {
                margin-bottom: 10px;

            }
        </style>
    </head>
    <body>
    <center>
        <form action="admin" method="post">
            <section class=" gradient-custom">
                <div class="container py-3 h-50">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                            <div class="card bg-dark text-white" style="border-radius: 1rem;">
                                <div class="card-body text-center" style="height: 700px;">

                                    <div class="mb-md-5 mt-md-4 pb-5">

                                        <h2 class="fw-bold mb-2 text-uppercase">Login</h2>
                                        <p class="text-white-50 mb-5">Welcome Admin - Please Login </p>

                                        <div class="form-outline form-white mb-4">
                                            <label class="form-label" for="typeEmailX">Email</label>
                                            <input type="email" id="typeEmailX" class="form-control form-control-lg" name="u_email" />

                                        </div>

                                        <div class="form-outline form-white mb-4">
                                            <label class="form-label" for="typePasswordX">Password</label>
                                            <input type="password" id="typePasswordX" class="form-control form-control-lg" name="u_psw"/>

                                        </div>

                                        <p class="small mb-5 pb-lg-2"><a class="text-white-50" href="reset_password.jsp">Forgot password?</a></p>

                                        <button class="btn btn-outline-light btn-lg px-5" type="submit">Login</button>

                                        <div class="d-flex justify-content-center text-center mt-4 pt-1">
                                            <a href="#!" class="text-white"><i class="fab fa-facebook-f fa-lg"></i></a>
                                            <a href="#!" class="text-white"><i class="fab fa-twitter fa-lg mx-4 px-2"></i></a>
                                            <a href="#!" class="text-white"><i class="fab fa-google fa-lg"></i></a>
                                        </div>

                                    </div>

                                    <div>
                                        <p class="mb-0">Don't have an account? <a href="signup.html" class="text-white-50 fw-bold">Sign Up</a>
                                        </p>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </form>
    </center>

</body>
</html>
