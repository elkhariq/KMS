<!DOCTYPE HTML>
<html>
	<head>
		<title><?=$title?></title>
		<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>css/bootstrap.css">
		<script type="text/javascript" src="<?php echo base_url(); ?>js/jquery-1.11.0.js"></script>
		<script type="text/javascript" src="<?php echo base_url(); ?>js/bootstrap.js"></script>
		<script src="<?php echo base_url(); ?>js/jquery-ui.js"></script>
		<link rel="stylesheet" href="<?php echo base_url(); ?>css/jquery-ui.css" type="text/css" />
		<script src="<?php echo base_url(); ?>js/jquery.easy-confirm-dialog.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {
				$(".confirm").easyconfirm({locale: { title: 'Simpan', button: ['Tidak','Ya']}});
			});
		</script>
		<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>css/sweetalert.css">
		<script type="text/javascript" src="<?php echo base_url(); ?>js/sweetalert.min.js"></script>
		<link rel="stylesheet" href="<?php echo base_url(); ?>css/fullcalendar.css" type="text/css" />
		<link rel="stylesheet" href="<?php echo base_url(); ?>css/fullcalendar.print.css" type="text/css" media='print' />
		<script src="<?php echo base_url(); ?>js/moment.min.js"></script>
		<script src="<?php echo base_url(); ?>js/fullcalendar.min.js"></script>
		<link rel="stylesheet" href="<?php echo base_url(); ?>css/morris.css" type="text/css" />
		<script src="<?php echo base_url(); ?>js/raphael-min.js"></script>
		<script src="<?php echo base_url(); ?>js/morris.js"></script>
		<!-- <link rel="stylesheet" href="<?php echo base_url(); ?>css/demo.page.css" media="screen" type="text/css" />
		<script src="<?php echo base_url(); ?>js/jquery.jatt.min.js"></script> -->
		<link rel="stylesheet" href="<?php echo base_url(); ?>css/anythingslider.css" type="text/css" />
		<script src="<?php echo base_url(); ?>js/jquery.anythingslider.js"></script>
		<script src="<?php echo base_url(); ?>js/jquery.anythingslider.video.js"></script>
		<link rel="stylesheet" href="<?php echo base_url(); ?>css/new.faq.style.css" type="text/css" />
		<script src="<?php echo base_url(); ?>js/faq.main.js"></script>
		<style type="text/css">
			h1 {
				margin-top: 2px;
				margin-bottom: 2px;
			}
			#my-header {
				height:65px;
			}
			#user {
				/*margin-top: 20px;*/
				margin-top: 10px;
				font-size: 1.05em;
			}
			/*#user a {
				color: blue;
			}
			#user a:hover {
				color: red;
			}*/
			#content {
				margin-top: 70px;
				margin-left: 20px;
				margin-right: 20px;
				margin-bottom: 20px;
				height: auto;
			}
			#position-bar {
				margin-top: 10px;
				margin-bottom: 10px;
			}
			#navbar {
				border-style: solid;
				border-width: 2px;
				margin-left: 20px;
				margin-right: -20px;
				height: 530px;
			}
			#navbar ul li {
				width: 100%;
				margin-top: 16px;
				/*height: 20px;*/
				font-size: 1.5em;
			}
			#rightbar {
				margin-left: -20px;
				margin-right: 20px;
			}
			#tips {
				height: 150px;
				overflow: auto;
				/*background-color: #E7E7E7;*/
				width: 100%;
				padding: 20px;
				border: 2px;
				border-style: dotted;
				border-radius: 10px;
			}
			#calc {
				height: 350px;
				/*background-color: #E7E7E7;*/
				width: 100%;
				padding: 20px;
				margin-top: 20px;
				border: 2px;
				border-style: dotted;
				border-radius: 10px;
				text-align: center;
			}
			#colm {
				height: 420px;
				background-color: #E7E7E7;
				width: 100%;
				padding: 20px;
			}
			#colm2 {
				height: 462px;
				background-color: #E7E7E7;
				width: 100%;
				padding: 20px;
			}
			#calendar-body {
				margin: 40px 10px;
				padding: 0;
				font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
				font-size: 14px;
			}
			#calendar {
				max-width: 900px;
				margin: 0 auto;
			}
			#myfirstchart {
				height: 462px;
				padding: 20px;
			}
			#slider {
				margin-left: -70px;
				margin-right: 70px;
			}
			#slider1 {
				height: 360px;
				width: 600px;
			}
			#faq {
				margin-left: -60px;
				height: 500px;
				/*background-color: red;*/
				overflow: auto;
			}
			#basics {
				list-style-type: none;
			}
			#basics li {
				border: 2px;
				border-style: dotted;
				border-radius: 10px;
			}
			#basics p {
				font-size: 0.85em;
				/*color: #E4D254;*/
			}
			#tab {
				/*background-color: #369536;*/
			}
		</style>
	</head>
	<body>
		<!-- header -->
		<nav class="navbar navbar-default navbar-fixed-top" role="navigation" id="my-header">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
<?php
	if ($user != "pengguna") {
?>
					<a class="navbar-brand" href="<?php echo base_url(); ?>biodata_balita"><h1>Kartu Menuju Sehat</h1></a>
<?php
	} else {
?>
					<a class="navbar-brand" href="<?php echo base_url(); ?>beranda"><h1>Kartu Menuju Sehat</h1></a>
<?php
	}
	echo "\r\n";
?>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<!-- <li id="user"><a href="#"><?=$user?></a></li> -->
						<li id="user"><a href="<?php echo base_url(); ?>../kms-online">login petugas</a></li>
					</ul>
				</div><!-- /.navbar-collapse -->
			</div><!-- /.container-fluid -->
		</nav>
		<div id="content">
			<!-- position bar -->
			<div id="position-bar">
<?php
	if ($user != "pengguna") {
?>
				<a href="<?php echo base_url(); ?>biodata_balita">Beranda</a> > <?=$title?>
<?php
	} else {
		if ($title == "Beranda") {
?>
				<?=$title?>
<?php
		} else if ($title == "Saran") {
?>
				<a href="<?php echo base_url(); ?>beranda">Beranda</a> > <a href="<?php echo base_url(); ?>detail_balita">Detail Balita</a> > <?=$title?>
<?php
		} else {
?>
				<a href="<?php echo base_url(); ?>beranda">Beranda</a> > <?=$title?>
<?php
		}
	}
	echo "\r\n";
?>
			</div>
			<!-- content -->
			<div class="row">
