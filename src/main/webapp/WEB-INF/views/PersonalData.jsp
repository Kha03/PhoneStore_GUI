<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Personal Data</title>
        <link rel="apple-touch-icon" sizes="57x57" href="<c:url value='/favicon/apple-icon-57x57.png'/>">
    <link rel="apple-touch-icon" sizes="60x60" href="<c:url value='/favicon/apple-icon-60x60.png'/>">
    <link rel="apple-touch-icon" sizes="72x72" href="<c:url value='/favicon/apple-icon-72x72.png'/>">
    <link rel="apple-touch-icon" sizes="76x76" href="<c:url value='/favicon/apple-icon-76x76.png'/>">
    <link rel="apple-touch-icon" sizes="114x114" href="<c:url value='/favicon/apple-icon-114x114.png'/>">
    <link rel="apple-touch-icon" sizes="120x120" href="<c:url value='/favicon/apple-icon-120x120.png'/>">
    <link rel="apple-touch-icon" sizes="144x144" href="<c:url value='/favicon/apple-icon-144x144.png'/>">
    <link rel="apple-touch-icon" sizes="152x152" href="<c:url value='/favicon/apple-icon-152x152.png'/>">
    <link rel="apple-touch-icon" sizes="180x180" href="<c:url value='/favicon/apple-icon-180x180.png'/>">
    <link rel="icon" type="image/png" sizes="192x192" href="<c:url value='/favicon/android-icon-192x192.png'/>">
    <link rel="icon" type="image/png" sizes="32x32" href="<c:url value='/favicon/favicon-32x32.png'/>">
    <link rel="icon" type="image/png" sizes="96x96" href="<c:url value='/favicon/favicon-96x96.png'/>">
    <link rel="icon" type="image/png" sizes="16x16" href="<c:url value='/favicon/favicon-16x16.png'/>">
    <link rel="manifest" href="<c:url value='/favicon/manifest.json'/>">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="<c:url value='/favicon/ms-icon-144x144.png'/>">
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet" />
    <!-- Fonts -->
    <link href="<c:url value='/fonts/stylesheet.css' />" rel="stylesheet" />
    <!-- Bootstrap CSS -->
    <link href="<c:url value='/css/bootstrap.min.css' />" rel="stylesheet" />
    <!-- Styles -->
    <link href="<c:url value='/css/styles.css' />" rel="stylesheet" />
    <link href="<c:url value='/css/acount.css' />" rel="stylesheet" />
        <script src="<c:url value='/events/loadtemplate.js' />"></script>
    
</head>
<body>
    <!-- Header -->
    <header id="header" class="header"></header>
    <script>load("#header", "/header");</script>
    
    <div class="container profile-container mt-5">
        <div class="row">
            <!-- Sidebar -->
            <jsp:include page="PersonalDataTemplate.jsp" />
            
            <!-- Main Content -->
            <div class="col-md-9 profile-content">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="<c:url value='/' />">Home</a></li>
                        <li class="breadcrumb-item"><a href="#">Account</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Personal Information</li>
                    </ol>
                </nav>

                <h3 class="mb-4">Identification</h3>
                <p class="text-muted">Verify your identity</p>

              <form action="<c:url value='/profile/save' />" method="post" id="profileForm" enctype="multipart/form-data">
    <input type="hidden" name="id" value="${customer.id}" />
    <div class="row g-3">
        <!-- Name Field (Editable) -->
        <div class="col-md-6">
            <label class="form-label">Full Name</label>
            <div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text"><i class="fas fa-user" style="color: #000; font-size: 1.35rem"></i></span>
                </div>
                <input type="text" class="form-control" id="fullName" name="fullName"
                       value="${customer.name}" required />
            </div>
        </div>

        <!-- Phone Number Field (Non-Editable) -->
        <div class="col-md-6">
            <label class="form-label">Phone Number</label>
            <div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text"><i class="fas fa-phone" style="color: #000; font-size: 1.35rem"></i></span>
                </div>
                <input type="text" class="form-control" id="phoneNumber" name ="phoneNumber"
                       value="${customer.phone}"  />
            </div>
        </div>

        <!-- Email Address Field (Non-Editable) -->
        <div class="col-md-6">
            <label class="form-label">Email Address</label>
            <div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text"><i class="fas fa-envelope" style="color: #000; font-size: 1.35rem"></i></span>
                </div>
                <input type="email" class="form-control" id="emailAddress"
                       value="${customer.account.email}" readonly />
            </div>
        </div>
		
		        <div class="col-md-6">
            <label class="form-label">Date of Birth</label>
            <div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text"><i class="fas fa-calendar-alt" style="color: #000; font-size: 1.35rem"></i></span>
                </div>
                <input type="date" class="form-control" id="dateOfBirth" name="dateOfBirth"
                       value="${customer.dateOfBirth}" />
            </div>
        </div>
        
        <!-- Avatar Field (Optional) -->
        <div class="col-md-6">
            <label class="form-label">Avatar (optional)</label>
            <div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text"><i class="fas fa-file-image" style="color: #000; font-size: 1.35rem"></i></span>
                </div>
                <input type="file" class="form-control" id="avatar" name="avatar" />
            </div>
        </div>

        <!-- Date of Birth Field -->

    </div>

    <!-- Save Button -->
    <div class="mt-4 d-flex justify-content-end">
        <button type="submit" class="btn btn-primary px-4">Save</button>
    </div>
</form>

            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer id="footer" class="footer"></footer>
    <script>load("#footer", "/footer");</script>
        <script src="<c:url value='/events/loadtemplate.js' />"></script>
    
    <!-- Scripts -->
    <script src="<c:url value='/js/bootstrap.bundle.min.js' />"></script>
    <script src="<c:url value='/events/loadtemplate.js' />"></script>
</body>
</html>
