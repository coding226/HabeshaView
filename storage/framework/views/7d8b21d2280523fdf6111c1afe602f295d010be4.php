<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<style>
		@import  url('https://fonts.googleapis.com/css?family=Open+Sans');
		body{
			background: #000;
			font-family: 'Open Sans', sans-serif;
		}

		h1{
			font-family: 'Open Sans', sans-serif;
			color: #fff;
			text-transform: uppercase;
		}

		.box
		{
			max-width: 50%;
		}

		.wel{
			width: 200px;
			border-radius: 0.5em;
			padding: 10px;
			background-image: linear-gradient(to right top, #44a1c5, #537196, #4b465e, #2e242d, #000000);
			border:none;
			color: #fff;
			font-weight: 600;
			font-size: 18px;
			font-family: 'Open Sans', sans-serif;
		}
	</style>
</head>
<body>
	<center>
	<div style="padding:50px;background: url(<?php echo e(url('images/email-bg.jpg')); ?>);background-color:#111;background-size: cover;width: 100%;height: 100%;" class="box">
		<div align="center" class="logo">
			<img src="<?php echo e(asset('images/logo/'.$logo)); ?>" alt="logo">

			<h1>Welcome !</h1>

			<p style="font-size:18px;font-family: 'Open Sans', sans-serif;text-align: justify;color: #fff;">
				Hello <?php echo e($user['name']); ?>,
				<br><br>
				Welcome to <?php echo e(config('app.name')); ?>. - your onestop IPTV service provider for Live and Entertainment channels.
				<br>
				<br>
				Enjoy our regularly  updated selection of Live TV, Entertainment channels, exclusive and original contents in a variety of languages.
			</p>

			<div align="center">
				<a style="cursor: pointer;" href="<?php echo e(config('app.url')); ?>"><button style="cursor: pointer;" class="wel">Explore Now</button></a>
			</div>

			<p style="font-size:18px;font-family: 'Open Sans', sans-serif;text-align: justify;color: #fff;">
				Have fun
				<br>
				<?php echo e(config('app.name')); ?>

			</p>

			<div style="width:100%; height:2px;background:linear-gradient(to right top, #44a1c5, #537196, #4b465e, #2e242d, #000000);">
				
			</div>
				<?php
					$url= \DB::table('social_icons')->where('id',1)->first();
				?>
			<div align="left" class="social">
				<p style="color: #fff;font-family: 'Open Sans', sans-serif;">	Question? email us at: <a style="cursor: pointer;" href="mailto:<?php echo e($w_email); ?>"><?php echo e($w_email); ?></a></p>

				<a href="<?php echo e($url->url1); ?>"><img src="<?php echo e(url('images/fb.png')); ?>" alt=""></a>
				<a href="<?php echo e($url->url2); ?>"><img style="margin-left: 15px;" src="<?php echo e(url('images/tw.png')); ?>" alt=""></a>
				<a href="<?php echo e($url->url3); ?>"><img style="margin-left: 15px;" src="<?php echo e(url('images/yt.png')); ?>" alt=""></a>
			</div>
		</div>
	</div>
</center>
</body>
</html>