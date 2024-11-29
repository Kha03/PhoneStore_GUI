<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Personal Data</title>
    <!-- Font Awesome -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
    />
    <!-- Fonts -->
    <link href="<c:url value='/fonts/stylesheet.css'/>" rel="stylesheet" />
    <!-- Bootstrap CSS -->
    <link href="<c:url value='/css/bootstrap.min.css'/>" rel="stylesheet" />
    <!-- Styles -->
    <link href="<c:url value='/css/styles.css'/>" rel="stylesheet" />
    <link href="<c:url value='/css/acount.css'/>" rel="stylesheet" />
    <!-- Bootstrap JS -->
    <script src="<c:url value='/js/bootstrap.min.js'/>"></script>
    <!-- Scripts -->
    <script src="<c:url value='/events/loadtemplate.js'/>"></script>
    
  </head>
<body>
<!-- header -->
<header id="header" class="header"></header>
<script>
    load("#header", "/header");
</script>
    <div class="container profile-container">
      <div class="row">
        <!-- Sidebar -->
         <jsp:include page="PersonalDataTemplate.jsp" />
        <!-- Main Content -->
        <div class="col-md-9 profile-content">
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item"><a href="#">Account</a></li>
              <li class="breadcrumb-item active" aria-current="page">
                Personal Information
              </li>
            </ol>
          </nav>

          <h3>Identification</h3>
          <p class="text-muted">Verify your identity</p>

          <div class="row g-3">
            <!-- Full Name -->
            <div class="col-md-6">
              <label class="form-label">Full name</label>
              <div class="input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text"
                    ><i class="fas fa-user" style="color: #000; font-size: 1.35rem"></i></span>
                </div>
                <input
                  type="text"
                  class="form-control"
                  id="fullName"
                  value="Jimmy Smith"
                  readonly
                />
                <div class="input-group-prepend">
                  <button
                    class="btn-edit input-group-text"
                    data-bs-toggle="modal"
                    data-bs-target="#editFullNameModal"
                  >
                    <i class="fas fa-pen"></i>
                  </button>
                </div>
              </div>
            </div>
            <!-- E-mail -->
            <div class="col-md-6">
              <label class="form-label">E-mail Address</label>
              <div class="input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text"
                    ><i class="fas fa-envelope" style="color: #000; font-size: 1.35rem"></i></span>
                </div>
                <input
                  type="email"
                  class="form-control"
                  id="emailAddress"
                  value="Jimmy.smith1996@gmail.com"
                  readonly
                />
                <div class="input-group-prepend">
                  <button
                    class="btn-edit input-group-text"
                    data-bs-toggle="modal"
                    data-bs-target="#editEmailModal"
                  >
                    <i class="fas fa-pen"></i>
                  </button>
                </div>
              </div>
            </div>
            <!-- Phone Number -->
            <div class="col-md-6">
              <label class="form-label">Phone number</label>
              <div class="input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text"
                    ><i class="fas fa-phone" style="color: #000; font-size: 1.35rem"></i></span>
                </div>
                <input
                  type="text"
                  class="form-control"
                  id="phoneNumber"
                  value="+12345678910"
                  readonly
                />
                <div class="input-group-prepend">
                  <button
                    class="btn-edit input-group-text"
                    data-bs-toggle="modal"
                    data-bs-target="#editPhoneModal"
                  >
                    <i class="fas fa-pen"></i>
                  </button>
                </div>
              </div>
            </div>
            <!-- Password -->
            <div class="col-md-6">
              <label class="form-label">Password</label>
              <div class="input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text"
                    ><i class="fas fa-key" style="color: #000; font-size: 1.35rem"></i></span>
                </div>
                <input
                  type="password"
                  class="form-control"
                  id="password"
                  value="********"
                  readonly
                />
                <div class="input-group-prepend">
                  <button
                    class="btn-edit input-group-text"
                    data-bs-toggle="modal"
                    data-bs-target="#editPasswordModal"
                  >
                    <i class="fas fa-pen"></i>
                  </button>
                </div>
              </div>
            </div>
            <!-- Address -->
            <div class="col-md-6">
              <label class="form-label">Address</label>
              <div class="input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text"
                    ><i class="fas fa-home" style="color: #000; font-size: 1.35rem"></i></span>
                </div>
                <input
                  type="text"
                  class="form-control"
                  id="address"
                  value="HubSpot, 25 First Street, Cambridge"
                  readonly
                />
                <div class="input-group-prepend">
                  <button
                    class="btn-edit input-group-text"
                    data-bs-toggle="modal"
                    data-bs-target="#editAddressModal"
                  >
                    <i class="fas fa-pen"></i>
                  </button>
                </div>
              </div>
            </div>
            <!-- Postal Code -->
            <div class="col-md-6">
              <label class="form-label">Postal code</label>
              <div class="input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text"
                    ><i class="fas fa-mail-bulk" style="color: #000; font-size: 1.35rem"></i></span>
                </div>
                <input
                  type="text"
                  class="form-control"
                  id="postalCode"
                  value=""
                  readonly
                />
                <div class="input-group-prepend">
                  <button
                    class="btn-edit input-group-text"
                    data-bs-toggle="modal"
                    data-bs-target="#editPostalCodeModal"
                  >
                    <i class="fas fa-pen"></i>
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Footer -->
<footer id="footer" class="footer"></footer>
<script>
    load("#footer", "/footer");
</script>
    <script src="<c:url value='/js/bootstrap.bundle.min.js'/>"></script>
  </body>
</html>
