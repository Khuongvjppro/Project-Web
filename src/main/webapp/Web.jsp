
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Coffee Shop</title>
    <!-- Link to Font Awesome and Google Fonts -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <!-- Link to External CSS -->
    <link rel="stylesheet" href="Styles.css">
</head>
</head>
<body>
	<header class="header">
		<div class="logo">THE COFFEE SHOP</div>
		<nav>
			<a href="#">Menu </a><a href="#"> Cà phê </a> <a href="#"> Trà </a> <a
				href="#"> Soda </a> <a href="#"> Đồ ăn </a> <a href="#">Chi
				nhánh </a>
		</nav>
	</header>
	<!-- CSS Image Slider -->
	<div class="css-slider">
		<div class="css-slides">
			<div class="css-slide">
				<img src="https://i.postimg.cc/gJS8C41M/bennercaphe.png"
					alt="Coffee Slide 1">
			</div>
			<div class="css-slide">
				<img src="https://i.postimg.cc/MHFmjvGx/Banner-Tra-Trai-Cay.png">
			</div>
			<div class="css-slide">
				<img
					src="https://i.postimg.cc/W1FX0Rxj/banner-SSoda.png"
					alt="Coffee Slide 3">
			</div>
		</div>
	</div>

	<div class="products">
		<form action="BuyServlet" method="POST">
    		<div class="product">
       			<div class="label">BEST SELLER</div>
        		<img src="https://i.postimg.cc/hjtcCf9n/coffee-sua.png" alt="Cà Phê Sữa Đá" height="200" width="200">
        		<h3>Cà Phê Sữa Đá</h3>
        		<p>39.000 đ</p>
        		<!-- Nút Buy gửi yêu cầu đến Servlet -->
        		<button class="buy-button" type="submit">Buy</button>
        		<input type="number" name="quantity" value="0" min="0" class="quantity-input">
        		
    		</div>
		</form>
		<form action="BuyServlet" method="POST">
			<div class="product">
				<img alt="Cà phê muối" height="200"
					src="https://i.postimg.cc/rpWQvJNC/coffee-muoi.png" width="200" />
				<h3>Cà phê muối</h3>
				<p>49.000 đ</p>
				<button class="buy-button" type="submit">Buy</button>
				<input type="number" name="quantity" value="0" min="0" class="quantity-input">
			</div>
		</form>


		<form action="BuyServlet" method="POST">
			<div class="product">
				<img alt="Coffee Trứng" height="200"
					src="https://i.postimg.cc/8PbQ8Jy8/c-phe-Trung.png" width="200" />
				<h3>Coffee Trứng</h3>
				<p>19.000 đ</p>
				<button class="buy-button" type="submit">Buy</button>
				<input type="number" name="quantity" value="0" min="0" class="quantity-input">
			</div>
		</form>

		<form action="BuyServlet" method="POST">
			<div class="product">
				<img alt="Cà phê đen(Phin)" height="200"
					src="https://i.postimg.cc/PJfyvks2/coffee-phin.png" width="200" />
				<h3>Cà phê đen(Phin)</h3>
				<p>29.000 đ</p>
				<button class="buy-button" type="submit" name="action" value="buy">Buy</button>
				<input type="number" name="quantity" value="0" min="0"
					class="quantity-input">
			</div>
		</form>

		<form action="BuyServlet" method="POST">
			<div class="product">
				<div class="label">BEST SELLER</div>
				<img alt="Bạc xỉu" height="200"
					src="https://i.postimg.cc/x1hmDYvn/bac-xiu.png" width="200" />
				<h3>Bạc xỉu</h3>
				<p>39.000 đ</p>
				<button class="buy-button" type="submit" name="action" value="buy">Buy</button>
				<input type="number" name="quantity" value="0" min="0"
					class="quantity-input">
			</div>
		</form>

		<form action="BuyServlet" method="POST">
			<div class="product">
				<img alt="Soda Blue " height="200"
					src="https://i.postimg.cc/L8NdM8P5/soda-blue.jpg" width="200" />
				<h3>Soda Blue</h3>
				<p>49.000 đ</p>
				<button class="buy-button" type="submit" name="action" value="buy">Buy</button>
				<input type="number" name="quantity" value="0" min="0"
					class="quantity-input">
			</div>
		</form>



		<form action="BuyServlet" method="POST">
			<div class="product">
				<img alt="Soda bạc hà" height="200"
					src="https://i.postimg.cc/K8scFfXd/soda-bacha.jpg" width="200" />
				<h3>Soda bạc hà</h3>
				<p>49.000 đ</p>
				<button class="buy-button" type="submit" name="action" value="buy">Buy</button>
				<input type="number" name="quantity" value="0" min="0"
					class="quantity-input">
			</div>
		</form>



		<form action="BuyServlet" method="POST">
			<div class="product">
				<img alt="Soda dây tây " height="200"
					src="https://i.postimg.cc/SK9Mm5d8/traDau.png" width="200" />
				<h3>Soda dâu tây</h3>
				<p>49.000 đ</p>
				<button class="buy-button" type="submit" name="action" value="buy">Buy</button>
				<input type="number" name="quantity" value="0" min="0"
					class="quantity-input">
			</div>
		</form>

		<form action="BuyServlet" method="POST">
			<div class="product">
				<img alt="Soda việt quất" height="200"
					src="https://i.postimg.cc/DZd4XXtw/soda-viet-Quat.png" width="200" />
				<h3>Soda việt quất</h3>
				<p>49.000 đ</p>
				<button class="buy-button" type="submit" name="action" value="buy">Buy</button>
				<input type="number" name="quantity" value="0" min="0"
					class="quantity-input">
			</div>
		</form>


		<form action="BuyServlet" method="POST">
			<div class="product">
				<div class="label">BEST SELLER</div>
				<img alt="Trà Bưởi " height="200"
					src="https://i.postimg.cc/LsVdBdjd/tr-b-i.jpg" width="200" />
				<h3>Trà Bưởi</h3>
				<p>49.000 đ</p>
				<button class="buy-button" type="submit" name="action" value="buy">Buy</button>
				<input type="number" name="quantity" value="0" min="0"
					class="quantity-input">
			</div>
		</form>


		<form action="BuyServlet" method="POST">
			<div class="product">
				<div class="label">BEST SELLER</div>
				<img alt="Hi-Tea Vải" height="200"
					src="https://i.postimg.cc/Y0d4Xw2c/traVai.png" width="200" />
				<h3>Hi-Tea Vải</h3>
				<p>49.000 đ</p>
				<button class="buy-button" type="submit" name="action" value="buy">Buy</button>
				<input type="number" name="quantity" value="0" min="0"
					class="quantity-input">
			</div>
		</form>

		<form action="BuyServlet" method="POST">
			<div class="product">
				<img alt="Hồng trà " height="200"
					src="https://i.postimg.cc/P5fLGrb6/hong-tra.png" width="200" />
				<h3>Hồng trà</h3>
				<p>49.000 đ</p>
				<button class="buy-button" type="submit" name="action" value="buy">Buy</button>
				<input type="number" name="quantity" value="0" min="0"
					class="quantity-input">
			</div>
		</form>

		<form action="BuyServlet" method="POST">
			<div class="product">
				<img alt=" Trà Chanh dây" height="200"
					src="https://i.postimg.cc/nzv6VycS/tr-chanhday.jpg" width="200" />
				<h3>Trà Chanh dây</h3>
				<p>49.000 đ</p>
				<button class="buy-button" type="submit" name="action" value="buy">Buy</button>
				<input type="number" name="quantity" value="0" min="0"
					class="quantity-input">
			</div>
		</form>

		<form action="BuyServlet" method="POST">
			<div class="product">
				<img alt="Trà Trái cây " height="200"
					src="https://i.postimg.cc/85JLhGrw/tra-traicay.png" width="200" />
				<h3>Trà Trái cây</h3>
				<p>49.000 đ</p>
				<button class="buy-button" type="submit" name="action" value="buy">Buy</button>
				<input type="number" name="quantity" value="0" min="0"
					class="quantity-input">
			</div>
		</form>


		<form action="BuyServlet" method="POST">
			<div class="product">
				<img alt="Trà chanh giã tay" height="200"
					src="https://i.postimg.cc/LXRn2snK/traChanh.png" width="200" />
				<h3>Trà chanh giã tay</h3>
				<p>49.000 đ</p>
				<button class="buy-button" type="submit" name="action" value="buy">Buy</button>
				<input type="number" name="quantity" value="0" min="0" class="quantity-input">
			</div>
		</form>


	</div>

	<!-- Floating Button -->
	<button class="floating-button" onclick="alert('Chat with us!')">
		<i class="fas fa-comments"></i>
	</button>

	<!-- Footer Section -->
	<footer class="footer">
		<div class="footer-content">
			<div class="footer-section about">
				<h3>About Us</h3>
				<p>The Coffee Shop is your destination for the best coffee, tea,
					and food items. We are committed to providing a great experience.</p>
			</div>
			<div class="footer-section links">
				<h3>Quick Links</h3>
				<ul>
					<li><a href="#">Cà phê</a></li>
					<li><a href="#">Trà</a></li>
					<li><a href="#">Menu</a></li>
					<li><a href="#">Đồ ăn</a></li>
				</ul>
			</div>
			<div class="footer-section contact">
				<h3>Contact Us</h3>
				<p>
					<i class="fas fa-map-marker-alt"></i> 123 Coffee Street, City,
					Country
				</p>
				<p>
					<i class="fas fa-phone"></i> +84 123 456 789
				</p>
				<p>
					<i class="fas fa-envelope"></i> contact@coffeehouse.vn
				</p>
			</div>
		</div>
		<div class="footer-bottom">© 2024 The Coffee Shop | Designed by
			Coffee Lovers</div>
	</footer>
</body>
</html>