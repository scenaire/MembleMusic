<?php

include "../data_access/allRequire.php";

 ?>


<div class="header">
	<img id="bgImg" src="photo/header/killthislove.jpg">
	<div class="wrapper">
		<h1 class="th">สมัครพรีเมี่ยมแล้วได้อะไร ?</h1>
	</div>
	<fade></fade>

</div>
<div class="premiumBox">
	<div class="whatPremium">
		<div class="feature">
			<img id="img_a" src="photo/premium-icon/download.png">
			<h3 class="th">ดาวน์โหลดเพลง <span id="detail"> <br> ฟังได้ทุกเมื่อ </br> </span></h3>
		</div>
		<div class="feature">
			<img id="img_a" src="photo/premium-icon/ad.png">
			<h3 class="th">ไม่มีโฆษณาคั่น <span id="detail"><br> ฟังได้ต่อเนื่องไม่จำกัด </br></span></h3>

		</div>
		<div class="feature">
			<img id="img_a" src="photo/premium-icon/play.png">
			<h3 class="th">เล่นได้ทุกเพลง <span id="detail"> <br> แม้กระทั่งบนมือถือ </br> </span> </h3>
		</div>
		<div class="feature">
			<img id="img_a" src="photo/premium-icon/next.png">
			<h3 class="th">skip ได้ไม่จำกัด <span id="detail"><br> แค่กดถัดไป </br></span></h3>
		</div>
	</div>
	<div class="whatPremium">
		<div class="packet-card">
			<h3 class="th">สมัคร Premium รายเดือน</h1>
				<p class="th">จ่ายเพียง 69 บาทสำหรับเดือนแรก <br>เดือนต่อไปเดือนละ 109 บาท สมัครเลยวันนี้!</p><br>
				<a href="php/controller.php?register-premium=1" id="buy-premium-1" class="button">Buy now!!</a>
		</div>
		<div class="packet-card">
			<h3 class="th">สมัคร Premium 3 เดือน</h1>
				<p class="th">จ่ายเพียง 129 สำหรับสามเดือนแรก <br>เดือนต่อไปฟรี เพียงสมัครวันนี้ สมัครเลยวันนี้!</p><br>
				<a href="php/controller.php?register-premium=2" class="button">Buy now!!</a>
		</div>
		<div class="packet-card">
			<h3 class="th">สมัคร Premium รายปี</h1>
				<p class="th">จ่ายเพียง 599 บาท สำหรับปีแรก!! <br>ปีต่อไปราคา 879 บาท สมัครเลยวันนี้!</p><br>
				<a href="php/controller.php?register-premium=3" class="button">Buy now!!</a>
		</div>
	</div>

	<script type="text/javascript">
		$('buy-premium-1').click(function() {
			
		});
	</script>
