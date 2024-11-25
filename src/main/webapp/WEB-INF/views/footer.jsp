<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<div class="footer mt-5">
    <div class="container container-fluid">
        <div class="pt-5 pb-2">
            <div class="row">
                <div class="col-6 col-md-2 mb-3">
                    <h5 class="footer_header">Company</h5>
                    <ul class="nav flex-column">
                        <li class="nav-item mb-2">
                            <a href="#" class="nav-link p-0 footer_link">about us</a>
                        </li>
                        <li class="nav-item mb-2">
                            <a href="#" class="nav-link p-0 footer_link">blog</a>
                        </li>
                        <li class="nav-item mb-2">
                            <a href="#" class="nav-link p-0 footer_link">returns</a>
                        </li>
                        <li class="nav-item mb-2">
                            <a href="#" class="nav-link p-0 footer_link">order status </a>
                        </li>
                    </ul>
                </div>

                <div class="col-6 col-md-2 mb-3">
                    <h5 class="footer_header">Info</h5>
                    <ul class="nav flex-column">
                        <li class="nav-item mb-2">
                            <a href="#" class="nav-link p-0 footer_link">How it works?</a>
                        </li>
                        <li class="nav-item mb-2">
                            <a href="#" class="nav-link p-0 footer_link">our promises</a>
                        </li>
                        <li class="nav-item mb-2">
                            <a href="#" class="nav-link p-0 footer_link">FAQ</a>
                        </li>
                    </ul>
                </div>

                <div class="col-6 col-md-2 mb-3">
                    <h5 class="footer_header">Contact us</h5>
                    <ul class="nav flex-column">
                        <li class="nav-item mb-2">
                            <a href="#" class="nav-link p-0 footer_link text-nowrap"
                            ><img src="<c:url value='/icon/adress_icon_footer.svg' />" alt=""/> 123
                                Main Street, Anytown,USA</a
                            >
                        </li>
                        <li class="nav-item mb-2">
                            <a href="#" class="nav-link p-0 footer_link text-nowrap"
                            ><img src="<c:url value='/icon/phone_icon_footer.svg' />" alt=""/> +1
                                (555) 123-4567</a
                            >
                        </li>
                        <li class="nav-item mb-2">
                            <a href="#" class="nav-link p-0 footer_link text-nowrap"
                            ><img src="<c:url value='/icon/mail_icon_footer.svg' />" alt=""/>
                                TechHeimSupport@gmail.com</a
                            >
                        </li>
                    </ul>
                </div>

                <div
                        class="col-md-5 offset-md-1 mb-3 d-flex flex-column align-items-end"
                >
                    <form>
                        <h5 class="footer_header">Sign up for News and updates</h5>
                        <div
                                class="d-flex w-100 input-group border-1 border-light border rounded-3 p-1 mt-3"
                        >
                            <label for="newsletter1" class="visually-hidden"
                            >Email address</label
                            >
                            <img

                                    src="<c:url value='/icon/user_icon_footer.svg' />"
                                    alt=""
                                    class="p-1"
                            />
                            <input
                                    id="newsletter1"
                                    type="text"
                                    class="form-control border-0 bg-transparent text-white shadow-none p-1"
                                    placeholder="Email address"
                            />
                            <button class="btn p-1" type="button">
                                <img src="<c:url value='/icon/arrow-right.svg' />" alt=""/>
                            </button>
                        </div>
                    </form>
                    <ul class="list-unstyled d-flex align-self-center me-5 pe-3 mt-3">
                        <li class="me-3">
                            <a class="link-body-emphasis" href="#">
                                <img src="<c:url value='/icon/Facebook.svg' />" alt=""/>
                            </a>
                        </li>
                        <li class="me-3">
                            <a class="link-body-emphasis" href="#">
                                <img src="<c:url value='/icon/twitter.svg' />" alt=""/>
                            </a>
                        </li>
                        <li class="me-3">
                            <a class="link-body-emphasis" href="#"
                            >
                                <img src="<c:url value='/icon/Instagram.svg' />" alt=""
                                />
                            </a>
                        </li>
                        <li class="me-3">
                            <a class="link-body-emphasis" href="#"
                            >
                                <img src="<c:url value='/icon/Youtube.svg' />" alt=""
                                />
                            </a>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="d-flex justify-content-between pt-3 border-top">
                <p class="footer_link">
                    &copy; 2024 Company, Inc. All rights reserved.
                </p>
            </div>
        </div>
    </div>
</div>
