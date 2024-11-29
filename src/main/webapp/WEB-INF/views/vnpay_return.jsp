<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="jakarta.tags.fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>KẾT QUẢ THANH TOÁN</title>
    <link href="<c:url value='/assets/bootstrap.min.css' />" rel="stylesheet">
    <link href="<c:url value='/assets/jumbotron-narrow.css' />" rel="stylesheet">

    <link href="<c:url value='/css/styles.css' />" rel="stylesheet">

    <script src="<c:url value='/assets/jquery-1.11.3.min.js' />"></script>
</head>
<body>
<div class="container">
    <div class="header clearfix">
        <h3 class="text-muted">KẾT QUẢ THANH TOÁN</h3>
    </div>
    <div class="table-responsive">
        <div class="form-group">
            <label>Mã giao dịch thanh toán:</label>
            <span><%= request.getParameter("vnp_TxnRef") %></span>
        </div>
        <div class="form-group">
            <label>Số tiền:</label>
            <span><%= request.getParameter("vnp_Amount") %></span>
        </div>
        <div class="form-group">
            <label>Mô tả giao dịch:</label>
            <span><%= request.getParameter("vnp_OrderInfo") %></span>
        </div>
        <div class="form-group">
            <label>Mã lỗi thanh toán:</label>
            <span><%= request.getParameter("vnp_ResponseCode") %></span>
        </div>
        <div class="form-group">
            <label>Mã giao dịch tại CTT VNPAY-QR:</label>
            <span><%= request.getParameter("vnp_TransactionNo") %></span>
        </div>
        <div class="form-group">
            <label>Mã ngân hàng thanh toán:</label>
            <span><%= request.getParameter("vnp_BankCode") %></span>
        </div>
        <div class="form-group">
            <label>Thời gian thanh toán:</label>
            <span><%= request.getParameter("vnp_PayDate") %></span>
        </div>
        <div class="form-group">
            <label>Tình trạng giao dịch:</label>
            <span>
                        <%
                            String responseCode = request.getParameter("vnp_ResponseCode");
                            if ("00".equals(responseCode)) {
                                out.print("Thành công");
                            } else {
                                out.print("Không thành công");
                            }
                        %>
                    </span>
        </div>
    </div>
    <footer class="footer">
        <p>&copy; VNPAY 2020</p>
    </footer>
</div>
</body>
</html>
