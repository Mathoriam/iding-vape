<?php 

	if ($user_id) {
		header("location: ".BASE_URL);
	}

 ?>


<div id="container-user-akses">
	
	<form action="<?php echo BASE_URL."proses_register.php"; ?>" method="POST">

		<?php
			$notif = isset($_GET['notif']) ? $_GET['notif']: false; 
			$nama = isset($_GET['nama']) ? $_GET['nama']: false;
			$email = isset($_GET['email']) ? $_GET['email']: false;
			$phone = isset($_GET['phone']) ? $_GET['phone']: false;			
			$alamat = isset($_GET['alamat']) ? $_GET['alamat']: false;

			if($notif == "require") {
				echo "<div class='notif'>Maaf, Kamu Harus Melengkapi Form Dibawah Ini</div>";
			}elseif ($notif == "password") {
				echo "<div class='notif'>Maaf, Password Yang Kamu Masukan Tidak sama</div>";
			}elseif ($notif == "email") {
				echo "<div class='notif'>Maaf, Email yang kamu masukan sudah terdaftar</div>";
			}
			?>
		
		<div class="element-form">
			<label>Nama Lengkap</label>
			<span><input type="text" name="nama" value="<?php echo $nama ?>" require/></span>
		</div>

		<div class="element-form">
			<label>Email</label>
			<span><input type="text" name="email" value="<?php echo $email ?>" /></span>
		</div>

		<div class="element-form">
			<label>No. Handphone</label>
			<span><input type="text" name="phone" value="<?php echo $phone ?>" /></span>
		</div>

		<div class="element-form">
			<label>Alamat</label>
			<span><textarea name="alamat"><?php echo $alamat ?></textarea></span>
		</div>

		<div class="element-form">
			<label>Password</label>
			<span><input type="password" name="pass" /></span>
		</div>

		<div class="element-form">
			<label>Re-type Password</label>
			<span><input type="password" name="re_pass" /></span>
		</div>

		<div class="element-form">
			<span><input type="submit" value="register"/></span>
		</div>
	
	</form>

</div>