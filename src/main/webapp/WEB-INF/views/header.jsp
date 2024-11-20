<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<div class="container container-fluid border-bottom border-primary">
  <div
    class="d-flex align-items-center justify-content-between pt-2 pb-2 header"
  >
    <a href="#!">
      <img  src="<c:url value='imgs/img_logo_blue_a700.svg' />" alt="Logo" />
    </a>
    <ul class="nav col-12 col-md-auto justify-content-center">
      <li>
        <a href="#" class="nav-link px-2 mx-2 link-secondary">Home</a>
      </li>
      <li><a href="#" class="nav-link px-2 mx-2 link-dark">Products</a></li>
      <li><a href="#" class="nav-link px-2 mx-2 link-dark">Blog</a></li>
      <li><a href="#" class="nav-link px-2 mx-2 link-dark">FAQ</a></li>
      <li>
        <a href="#" class="nav-link px-2 mx-2 link-dark">Contact Us</a>
      </li>
    </ul>

    <div class="col-3 text-end">
      <button type="button" class="btn btn-signIn me-2">
        Sign In / Sign Up
      </button>
    </div>
  </div>
</div>
