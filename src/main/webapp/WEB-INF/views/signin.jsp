<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sign in</title>
    <!-- Fonts -->
    <link href="<c:url value='/css/signup.css'/>" rel="stylesheet" type="text/css">
    <!-- Bootstrap CSS -->
    <link href="<c:url value='/css/bootstrap.min.css'/>" rel="stylesheet" type="text/css">
    <script src="<c:url value='/js/bootstrap.min.js'/>"></script>
  </head>
  <body>
    <form method="post" action='/signin'>
      <div class="form">
        <div class="form-row functionChoice">
          <div class="col choose">
            <a href="#" class="function login active">Sign in</a>
            <a href="<c:url value='/signup.jsp'/>" class="function signup">Sign up</a>
          </div>
        </div>
        <h1 style="margin-bottom: 1rem">Log In</h1>
        <div class="form-group">
          <input
            type="text"
            class="form-control"
            name="username"
            id="exampleInputEmail1"
            aria-describedby="emailHelp"
            placeholder="Enter email"
            required
          />
        </div>
        <div class="form-group" style="position: relative">
          <input
            type="password"
            class="form-control"
            name="password"
            id="exampleInputPassword1"
            placeholder="Password"
            required
          />
          <img src="<c:url value='/icon/view.png'/>" id="pwd" />
        </div>
        <div class="form-check" style="margin-bottom: 0.5rem">
          <input type="checkbox" class="form-check-input" id="exampleCheck1" />
          <label
            class="form-check-label"
            for="exampleCheck1"
            style="font-size: 0.8rem"
            >Keep me logged in</label
          >
        </div>
        <button type="submit" class="btn btn-primary" style="width: 70%">
          Log In
        </button>
        <div class="form-group divider">
          <hr />
          <span> Or Log In with </span>
          <hr />
        </div>
        <div class="form-row methodLog">
          <div class="col method">
            <button class="socialAcc" id="gg">
              <img
                src="<c:url value='/icon/google_login.png'/>"
                alt=""
                style="width: 20px; height: fit-content"
              />
              Google
            </button>
            <button class="socialAcc" id="fb">
              <img
                src="<c:url value='/icon/facebook_login.png'/>"
                alt=""
                style="width: 20px; height: fit-content"
              />
              Facebook
            </button>
          </div>
        </div>

        <div class="form-group">
          <p>Don't have an account? <a href="<c:url value='/signup.jsp'/>">Sign up</a></p>
        </div>
      </div>
    </form>

    <script src="<c:url value='/events/signup.js'/>"></script>
  </body>
</html>
