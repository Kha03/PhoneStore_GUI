<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>KẾT QUẢ THANH TOÁN</title>
    <%-- Favicon --%>
    <link rel="apple-touch-icon" sizes="57x57" href="<c:url value='/favicon/apple-icon-57x57.png'/>">
    <link rel="apple-touch-icon" sizes="60x60" href="<c:url value='/favicon/apple-icon-60x60.png'/>">
    <link rel="apple-touch-icon" sizes="72x72" href="<c:url value='/favicon/apple-icon-72x72.png'/>">
    <link rel="apple-touch-icon" sizes="76x76" href="<c:url value='/favicon/apple-icon-76x76.png'/>">
    <link rel="icon" type="image/png" sizes="192x192" href="<c:url value='/favicon/android-icon-192x192.png'/>">
    <link rel="icon" type="image/png" sizes="32x32" href="<c:url value='/favicon/favicon-32x32.png'/>">
    <meta name="theme-color" content="#ffffff">
    <!-- Bootstrap CSS -->
    <link href="<c:url value='/css/bootstrap.min.css' />" rel="stylesheet"/>
</head>
<body>
<div class="container my-5">
    <div class="text-center mb-4">
        <h3 class="text-primary">KẾT QUẢ THANH TOÁN</h3>
    </div>
    <div class="table-responsive">
        <table class="table table-bordered table-striped">
            <tbody>
            <tr>
                <th scope="row">Mã giao dịch thanh toán:</th>
                <td><%= request.getParameter("vnp_TxnRef") %></td>
            </tr>
            <tr>
                <th scope="row">Số tiền:</th>
                <td><%= request.getParameter("vnp_Amount") %></td>
            </tr>
            <tr>
                <th scope="row">Mô tả giao dịch:</th>
                <td><%= request.getParameter("vnp_OrderInfo") %></td>
            </tr>
            <tr>
                <th scope="row">Mã lỗi thanh toán:</th>
                <td><%= request.getParameter("vnp_ResponseCode") %></td>
            </tr>
            <tr>
                <th scope="row">Mã giao dịch tại CTT VNPAY-QR:</th>
                <td><%= request.getParameter("vnp_TransactionNo") %></td>
            </tr>
            <tr>
                <th scope="row">Mã ngân hàng thanh toán:</th>
                <td><%= request.getParameter("vnp_BankCode") %></td>
            </tr>
            <tr>
                <th scope="row">Thời gian thanh toán:</th>
                <td><%= request.getParameter("vnp_PayDate") %></td>
            </tr>
            <tr>
                <th scope="row">Tình trạng giao dịch:</th>
                <td>
                    <%
                        String responseCode = request.getParameter("vnp_ResponseCode");
                        if ("00".equals(responseCode)) {
                            out.print("<span class='text-success font-weight-bold'>Thành công</span>");
                        } else {
                            out.print("<span class='text-danger font-weight-bold'>Không thành công</span>");
                        }
                    %>
                </td>
            </tr>
            </tbody>
        </table>
    </div>

    <!-- Button to go back to home page -->
    <div class="text-center mt-4">
        <a href="<c:url value='/' />" class="btn btn-primary btn-lg">Quay lại trang chủ</a>
    </div>
    <footer class="footer mt-5 text-center text-muted">
        <p>&copy; VNPAY 2020</p>
    </footer>
</div>

<!-- Bootstrap JS -->
<script src="<c:url value='/js/bootstrap.bundle.min.js' />"></script>
</body>
</html>
