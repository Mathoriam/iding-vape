<?php
	session_start();
	include_once ("function/koneksi.php");
	include_once ("function/helper.php");

	$page = isset($_GET['page']) ? $_GET['page'] : false;
	$kategori_id = isset($_GET['kategori_id']) ? $_GET['kategori_id'] : false;

	$user_id=isset($_SESSION['user_id'])?($_SESSION['user_id']): false;
	$nama=isset($_SESSION['nama'])?($_SESSION['nama']): false;
	$level=isset($_SESSION['level'])?($_SESSION['level']): false;
	$keranjang=isset($_SESSION['keranjang'])?($_SESSION['keranjang']): array();
	$totalBarang=count($keranjang);


?>
<html>

	<head>

		<title>Weshop | Barang-barang Elektronik</title>
		<link rel="stylesheet" type="text/css" href="<?php echo BASE_URL."css/style.css"; ?>" />
		<link rel="stylesheet" type="text/css" href="<?php echo BASE_URL."css/banner.css"; ?>" />
		<script src="<?php echo BASE_URL."js\jquery-3.3.1.min.js"; ?>"></script>
		<script src="<?php echo BASE_URL."js\Slides-SlidesJS-3\source\jquery.slides.min.js"; ?>"></script>

			<script>
		    $(function() {
		      $('#slides').slidesjs({
		        height: 350,
		        play: {auto : true,
		        	interval: 3000
		        },
		        navigation : false
		      });
		    });
		  </script>

	</head>

	<body>
		<div id="container">
			<div id="header">
				<a href="<?php echo BASE_URL."index.php"; ?>">
					<img src="<?php echo BASE_URL."images/logo.png"; ?>" />
				</a>
				<div id="menu">
					<div id="user">
						<?php 
							if ($user_id) {
								echo "Hi <b>$nama</>,
								<a href='".BASE_URL."index.php?page=my_profile&module=pesanan&action=list'>My Profile</a> 
								<a href='".BASE_URL."logout.php'>Logout</a>";
							}else{
							echo "<a href='".BASE_URL."login.html'>Login</a>
							<a href='".BASE_URL."register.html'>Register</a>";
							}
						 ?>
					</div>
					
					<a href="<?php echo BASE_URL."keranjang.html"; ?>" id="btn-keranjang">
						<img src="<?php echo BASE_URL."images/cart.png"; ?>" />
						<?php
							if($totalBarang != 0) {
							 	echo "<span class='total-barang'>$totalBarang</span>";
							 } 
						 ?>
					</a>
				</div>
			</div>
			<div id="content">
				<?php
					$filename = "$page.php";
					if (file_exists($filename)) {
						include_once ($filename);
						}else{
						include_once ("main.php");
					}

					// switch ($page) {
					// 	case 'loginadmin':
					// 			include 'views/admin/login.php';
					// 		break;
						
					// 	default:
					// 		include 'main.php';
					// 		break;
					// }
				?>

			</div>
			<div id="footer">
				<p><marquee>&copy Sistem Informasi 5C 2020, Mathori Abdul Majid [2017 804 222]</marquee></p>
			</div>
		</div>
	</body>
</html>