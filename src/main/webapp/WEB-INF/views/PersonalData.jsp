<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Personal Data</title>
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
                        <!-- Form Groups for Personal Information -->
                        <c:forEach var="field" items="${fields}">
                            <div class="col-md-6">
                                <label class="form-label">${field.label}</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="${field.icon}" style="color: #000; font-size: 1.35rem"></i></span>
                                    </div>
                                    <input type="${field.type}" class="form-control" id="${field.id}" name="${field.id}"
                                           <c:if test="${field.value != null}">
                                               value="${field.value}"
                                           </c:if>
                                            />
                                    <div class="input-group-prepend">
                                        <button type="button"
                                                class="btn-edit input-group-text"
                                                data-bs-toggle="modal"
                                                data-bs-target="${field.modal}">
                                            <i class="fas fa-pen"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
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
