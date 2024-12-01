<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Home</title>
    <%-- Favicon --%>
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
    <meta name="theme-color" content="#ffffff">
    <!-- Fonts -->
    <link href="<c:url value='/fonts/stylesheet.css' />" rel="stylesheet"/>
    <!-- Bootstrap CSS -->
    <link href="<c:url value='/css/bootstrap.min.css' />" rel="stylesheet"/>
    <!-- Styles -->
    <link href="<c:url value='/css/styles.css' />" rel="stylesheet"/>
    <style>
        main.container {
            background-color: #ffffff;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            margin-top: 20px;
        }
        h1, h2 {
            color: #007bff;
        }
        p {
            line-height: 1.6;
            font-size: 1.1rem;
        }
        ul {
            padding-left: 20px;
            list-style-type: disc;
        }
        ul li {
            margin-bottom: 10px;
        }
    </style>
    <!-- Scripts -->
    <script src="<c:url value='/events/loadtemplate.js' />"></script>
</head>
<body>
<!-- header -->
<header id="header" class="header">Phone Store Blog</header>
<script>
    load("#header", "/header");
</script>
<!-- Main -->
<main class="container container-fluid">
    <h1>Cảm ơn Cô Hà Thị Kim Thoa</h1>

    <p>Nhóm em muốn dành lời cảm ơn chân thành đến cô Hà Thị Kim Thoa đã luôn bên cạnh và hỗ trợ chúng em trong suốt quá trình học tập. Cô là một người thầy nhiệt huyết, đáng trân trọng, đã truyền cho chúng em không chỉ kiến thức về web, mà còn cả tình yêu nghề và tinh thần đam mê.</p>

    <p>Phone Store không chỉ là một sản phẩm của riêng chúng em, mà còn là kết quả của tình cảm, sự nỗ lực và sự hướng dẫn với tận tâm của cô. Cảm ơn cô rất nhiều vì đã giúp em thực hiện ước mơ của mình!</p>
</main>
<!-- Footer -->
<footer id="footer" class="footer">&copy; 2024 Phone Store Blog. All rights reserved.</footer>
<script>
    load("#footer", "/footer");
</script>
<script src="<c:url value='/js/bootstrap.bundle.min.js'/>"></script>
</body>
</html>
