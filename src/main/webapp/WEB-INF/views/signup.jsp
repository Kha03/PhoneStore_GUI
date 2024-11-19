<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sign up</title>
    <!-- Fonts -->
    <link href="../assets/fonts/stylesheet.css" rel="stylesheet" />
    <!-- Bootstrap CSS -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Styles -->
    <link href="../assets/css/signup.css" rel="stylesheet" />
    <!-- Bootstrap JS -->
    <script src="../assets/js/bootstrap.min.js"></script>
  </head>
  <body>
    <form>
      <div class="form">
        <div class="form-row functionChoice">
          <div class="col choose">
            <a href="signin.jsp" class="function login">Sign in</a>
            <a href="#" class="function signup active">Sign up</a>
          </div>
        </div>
        <h1 style="margin-bottom: 1rem">Create your account</h1>
        <div class="form-group">
          <input
            type="text"
            class="form-control"
            id="name"
            aria-describedby="emailHelp"
            placeholder="Your name"
            required
          />
        </div>
        <div class="form-group">
          <input
            type="email"
            class="form-control"
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
            id="exampleInputPassword1"
            placeholder="Password"
            required
          />
          <img src="../assets/icon/view.png" id="pwd" />
        </div>
        <div class="form-check" style="margin-bottom: 0.5rem">
          <input
            type="checkbox"
            class="form-check-input"
            id="exampleCheck1"
            required
          />
          <label
            class="form-check-label"
            for="exampleCheck1"
            style="font-size: 0.8rem"
            >I aggree to all clauses and privacy policy</label
          >
        </div>
        <button type="submit" class="btn btn-primary" style="width: 70%">
          Sign up
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
                src="../assets/icon/google_login.png"
                alt=""
                style="width: 20px; height: fit-content"
              />
              Google
            </button>
            <button class="socialAcc" id="fb">
              <img
                src="../assets/icon/facebook_login.png"
                alt=""
                style="width: 20px; height: fit-content"
              />
              Facebook
            </button>
          </div>
        </div>

        <div class="form-group">
          <p>Already have an account? <a href="signin.jsp">Sign in</a></p>
        </div>
      </div>
    </form>
    <script src="./signup.js"></script>
  </body>
</html>
