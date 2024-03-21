<?php
session_start();
session_destroy();
echo "<script>
	alert('Keluar berhasil');
	location.href='../index.php';
	</script>";

?>