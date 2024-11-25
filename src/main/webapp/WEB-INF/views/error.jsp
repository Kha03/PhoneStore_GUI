<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error Page</title>
    <!-- Fonts -->
    <link href="<c:url value='/fonts/stylesheet.css' />" rel="stylesheet"/>
    <!-- Bootstrap CSS -->
    <link href="<c:url value='/css/bootstrap.min.css' />" rel="stylesheet"/>
</head>
<body class="bg-light">
<div class="container d-flex justify-content-center align-items-center vh-100">
    <div class="card shadow border-danger text-center" style="max-width: 500px;">
        <div class="card-header bg-danger text-white">
            <h3>Error:${status}</h3>
        </div>
        <div class="card-body">

            <p class="card-text text-danger fs-5">
                ${message}
            </p>
            <!-- Nút quay lại -->
            <a href="javascript:history.back()" class="btn btn-outline-danger">Go Back</a>
        </div>
    </div>
</div>
</body>
</html>
