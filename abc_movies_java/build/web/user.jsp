<%-- 
    Document   : user
    Created on : Dec 1, 2022, 6:34:10 PM
    Author     : Deelaka
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://kit.fontawesome.com/64d58efce2.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="assets/css/user.css" />
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    <title>Login & Sign up </title>
  </head>
  <body>
    <div class="container">
      <div class="forms-container">
        <div class="signin-signup">
            <form action="user" method="get" class="sign-in-form">
            <h2 class="title">Sign in</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="email" name="txtemail" required placeholder="Email" />
            </div>
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" required name="txtpass" placeholder="Password" />
            </div>
            <input type="submit" value="Login" class="btn solid" />
           
          </form>
            <form action="user" method="post" class="sign-up-form">
            <h2 class="title">Sign up</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" placeholder="Full Name" required name="txtname" />
            </div>
            <div class="input-field">
              <i class="fas fa-envelope"></i>
              <input type="email" placeholder="Email" required name="txtemail" />
            </div>
             <div class="input-field">
              <i class="fas fa-envelope"></i>
              <input type="phone" name="txtphone" required placeholder="Phone" />
            </div>
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" name="txtpass" required placeholder="Password" />
            </div>
            <input type="submit" class="btn" value="Sign up" />
           
          </form>
        </div>
      </div>

      <div class="panels-container">
        <div class="panel left-panel">
          <div class="content">
            <h3>New here ?</h3>
            <p>
              Lorem ipsum, dolor sit amet consectetur adipisicing elit. Debitis,
              ex ratione. Aliquid!
            </p>
            <button class="btn transparent" id="sign-up-btn">
              Sign up
            </button>
          </div>
          <img src="img/log.svg" class="image" alt="" />
        </div>
        <div class="panel right-panel">
          <div class="content">
            <h3>One of us ?</h3>
            <p>
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum
              laboriosam ad deleniti.
            </p>
            <button class="btn transparent" id="sign-in-btn">
              Sign in
            </button>
          </div>
          <img src="img/register.svg" class="image" alt="" />
        </div>
      </div>
    </div>

      <script>
        const sign_in_btn = document.querySelector("#sign-in-btn");
const sign_up_btn = document.querySelector("#sign-up-btn");
const container = document.querySelector(".container");

sign_up_btn.addEventListener("click", () => {
  container.classList.add("sign-up-mode");
});

sign_in_btn.addEventListener("click", () => {
  container.classList.remove("sign-up-mode");
});

      </script>
       <span>${error}</span>
  </body>
</html>
