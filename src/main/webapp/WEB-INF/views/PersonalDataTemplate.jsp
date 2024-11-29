<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="col-md-3 sidebar bg-white">
    <div class="text-center mb-4">
        <img src="<c:url value='http://localhost:8081/storage/customer/avatar/${sessionScope.profileImage}' />"
            alt="User Avatar"
            class="rounded-circle mb-2 w-25 h-25 img-fluid"
        />
        <h5><c:out value="${sessionScope.username}" /></h5>
    </div>
    <a href="#" class="active">
        <i class="fas fa-user"></i> Personal Data
    </a>
    <a href="#">
        <i class="fas fa-dollar-sign"></i> Payment & Instalments
    </a>
    <a href="<c:url value='/Orders'/>">
        <i class="fas fa-box"></i> Orders
    </a>
    <a href="#">
        <i class="fas fa-heart"></i> Wish list
    </a>
    <a href="#">
        <i class="fas fa-tags"></i> Discounts
    </a>
    <a href="#">
        <i class="fas fa-shield-alt"></i> Security & access
    </a>
    <a href="#">
        <i class="fas fa-bell"></i> Notification
    </a>
    <a href="#">
        <i class="fas fa-envelope"></i> Contact us
    </a>
  <a href="#" class="text-danger" onclick="document.getElementById('logoutForm').submit();">
    <i class="fas fa-sign-out-alt"></i> Log out
</a>
<form id="logoutForm" action="<c:url value='/logout' />" method="post" style="display: none;">
</form>

</div>
