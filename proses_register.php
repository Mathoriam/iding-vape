 <?php 

	include_once "function/koneksi.php";
	include_once "function/helper.php";

	$level = "customer";
	$status = "on";
	$nama=isset($_POST['nama'])?($_POST['nama']) : false;
	$email=isset($_POST['email'])?($_POST['email']) : false;
	$phone=isset($_POST['phone'])?($_POST['phone']) :false;
	$alamat=isset($_POST['alamat'])?($_POST['alamat']) : false;
	$pass=isset($_POST['pass'])?($_POST['pass']) : false;
	$re_pass=isset($_POST['re_pass'])?($_POST['re_pass']) : false;

	unset($_POST['pass']);
	unset($_POST['re_pass']);
	$dataForm = http_build_query($_POST);

	$query = mysqli_query($koneksi, "SELECT * FROM user WHERE email='$email'");

	if (empty($nama) || empty($email) || empty($phone) || empty($alamat) || empty($pass)) {
		header("location:".BASE_URL."index.php?page=register&notif=require&$dataForm");
	}elseif ($pass != $re_pass) {
		header("location:".BASE_URL."index.php?page=register&notif=password&$dataForm");
	}elseif (mysqli_num_rows ($query) == 1) {
		header("location:".BASE_URL."index.php?page=register&notif=email&$dataForm");
	}else{
	
	mysqli_query($koneksi, "INSERT INTO user(level, nama, email, alamat, phone, password, status)
				 			VALUES ('$level', '$nama', '$email', '$alamat', '$phone', '$pass', '$status')");
		header("location:".BASE_URL."index.php?page=login");
   }
  ?>	
