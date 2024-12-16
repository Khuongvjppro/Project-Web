<%@include file="header.jsp"%>
<%@include file="footer.jsp"%>
<%@page errorPage="error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>About</title>
</head>
<body>
<style>
/* General Reset */
body, html {
    margin: 0;
    padding: 0;
    font-family: 'Playfair Display', serif; /* Font sang trọng */
    background-color: #f4f1eb; /* Màu nền nhẹ */
}

/* About Title */
.about-title {
    background-color: #4b2e83; /* Màu tím đậm */
    color: #ffcc66; /* Màu vàng */
    text-align: center;
    padding: 20px 0;
    font-size: 30px;
    font-weight: bold;
    letter-spacing: 1px;
    text-transform: uppercase;
}

/* About Content */
.about-content {
    background-color: #ffffff; /* Màu nền trắng */
    padding: 35px;
    font-size: 20px;
    line-height: 1.8;
    color: #555; /* Màu chữ xám nhẹ */
    margin: 30px auto; /* Căn giữa nội dung */
    width: 80%;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* Đổ bóng nhẹ */
    border-radius: 8px; /* Bo tròn góc */
}

.about-content strong {
    color: #4b2e83; /* Nhấn mạnh nội dung */
    font-weight: bold;
}

/* Highlight Links */
.about-content a {
    color: #4b2e83; /* Màu tím đậm */
    text-decoration: none;
    font-weight: bold;
    transition: color 0.3s ease;
}

.about-content a:hover {
    color: #ff3c3c; /* Màu đỏ nhạt khi hover */
    text-decoration: underline;
}

/* Contact Section */
.contact-info {
    margin-top: 20px;
    font-size: 18px;
    color: #333;
    text-align: center;
}

.contact-info i {
    margin-right: 10px; /* Khoảng cách giữa icon và text */
    color: #4b2e83;
}

/* Responsive Design */
@media (max-width: 768px) {
    .about-content {
        width: 95%;
        font-size: 18px;
    }

    .about-title {
        font-size: 24px;
    }
}

</style>
<body>
    <!-- About Title -->
    <div class="about-title">About <i class="fa fa-address-book"></i></div>

    <!-- About Content -->
    <div class="about-content">
        <p><strong>BTech Days</strong></p>
        <p>Hey everyone!!</p>
        <p>
            I make free programming tutorials for beginners & project videos with source code.
            That include <strong>Java</strong> for beginners, <strong>C# (.NET Tutorial)</strong>, JFrame,
            JDBC, JSP, etc.
        </p>
        <p>
            We make videos on: <br>
            - <strong>DBMS</strong> <br>
            - <strong>Computer Networking</strong> <br>
            - <strong>BPM</strong> <br>
            - <strong>OS</strong> and many more!
        </p>
        <p>So kindly subscribe to our channel!</p>

        <!-- Contact Information -->
        <div class="contact-info">
            <p>Contact us at: <a href="mailto:btechdays.care@gmail.com"><i class="fa fa-envelope"></i> btechdays.care@gmail.com</a></p>
            <p>Instagram: <a href="https://instagram.com/btechdays" target="_blank"><i class="fa fa-instagram"></i> @btechdays</a></p>
        </div>
    </div>
</body>
</html>