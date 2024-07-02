<%-- 
    Document   : reset_password
    Created on : Feb 4, 2024, 12:51:33 PM
    Author     : MAYANK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Password Reset</title>
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

  <style>
    body {
      background-color:#dee1ec;
    }
    .password-reset-container {
      max-width: 400px;
      margin: auto;
      margin-top: 100px;
      background-color: #ffffff;
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
  </style>
</head>
    <body>
        <div class="password-reset-container">
  <h2 class="text-center">Password Reset</h2>
  <form id="resetForm">
    <div class="form-group">
      <label for="username">Username:</label>
      <input type="text" class="form-control" id="username" required>
    </div>
    <div class="form-group">
      <label for="newPassword">New Password:</label>
      <input type="password" class="form-control" id="newPassword" required>
    </div>
    <div class="form-group">
      <label for="confirmPassword">Confirm Password:</label>
      <input type="password" class="form-control" id="confirmPassword" required>
    </div>
    <button type="button" class="btn btn-primary btn-block" onclick="resetPassword()">Reset Password</button>
  </form>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    </body>
</html>
