<!-- Footer -->
	<footer class="bg3 p-t-40 p-b-20">
		
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-lg-3 p-b-10">
					<h4 class="stext-301 cl0 p-b-30">
						Thông Tin
					</h4>

					<ul>
						<li class="p-b-10">
							<a href="#" class="stext-108 cl7 hov-cl1 trans-04">
								Giới thiệu
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-108 cl7 hov-cl1 trans-04">
								Câu hỏi thường gặp
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-108 cl7 hov-cl1 trans-04">
								Tuyển dụng
							</a>
						</li>
					</ul>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-10">
					<h4 class="stext-301 cl0 p-b-30">
						Hỗ Trợ
					</h4>

					<ul>
						<li class="p-b-10">
							<a href="#" class="stext-108 cl7 hov-cl1 trans-04">
								Hướng dẫn đặt hàng
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-108 cl7 hov-cl1 trans-04">
								Hướng dẫn thanh toán
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-108 cl7 hov-cl1 trans-04">
								Vận chuyển - Đổi/Trả sản phẩm
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-108 cl7 hov-cl1 trans-04">
								Thắc mắc khiếu nại 
							</a>
						</li>
					</ul>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-10">
					<h4 class="stext-301 cl0 p-b-30">
						Liên hệ
					</h4>

					<ul>
						<li class="p-b-10 lnr lnr-map-marker">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Khu II Đại học Cần Thơ, Đường 3/2, Xuân Khánh, Ninh Kiều, Cần Thơ.
							</a>
						</li>

						<li class="p-b-10 lnr lnr-phone-handset">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								+(84) 394 539 049 
							</a>
						</li>

						<li class="p-b-10 lnr lnr-envelope">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								kimtung204@gmail.com
							</a>
						</li>
					</ul>

					<div class="p-t-27">
						<a href="https://www.facebook.com/VKTung20" class="fs-18 cl7 hov-cl1 trans-04 m-r-16" style="text-align: center; border-radius: 10px; background: white; padding: 9px; border: 1px solid !important">
							<i class="fab fa-facebook-f"></i>
						</a>
					</div>
				</div>
			</div>

			<div class="p-t-40">
				<p class="stext-107 cl6 txt-center">
					Cần Thơ &copy;<script>document.write(new Date().getFullYear());</script> KT-Cake <i class="fa fa-heart-o" aria-hidden="true"></i></a>
				</p>
			</div>
		</div>
	</footer>


	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="zmdi zmdi-chevron-up"></i>
		</span>

	</div>

<!-- Zalo Chat -->


<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/slick/slick.min.js"></script>
	<script src="js/slick-custom.js"></script>
<!--===============================================================================================-->
	<script src="vendor/parallax100/parallax100.js"></script>
	<script>
        $('.parallax100').parallax100();
	</script>
<!--===============================================================================================-->
	<script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<script>
		$('.gallery-lb').each(function() { // the containers for all your galleries
			$(this).magnificPopup({
		        delegate: 'a', // the selector for gallery item
		        type: 'image',
		        gallery: {
		        	enabled:true
		        },
		        mainClass: 'mfp-fade'
		    });
		});
	</script>
<!--===============================================================================================-->
	<script src="vendor/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/sweetalert/sweetalert.min.js"></script>
	<script>
		$('.js-addwish-b2').on('click', function(e){
			e.preventDefault();
		});

		$('.js-addwish-b2').each(function(){
			var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
			$(this).on('click', function(){
				swal(nameProduct, "đã thêm vào giỏ hàng !", "success");

				$(this).addClass('js-addedwish-b2');
				$(this).off('click');
			});
		});

		$('.js-addwish-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').html();

			$(this).on('click', function(){
				swal(nameProduct, "đã thêm vào giỏ hàng !", "success");

				$(this).addClass('js-addedwish-detail');
				$(this).off('click');
			});
		});

		/*---------------------------------------------*/

		$('.js-addcart-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').html();
			$(this).on('click', function(){
				swal(nameProduct, "đã thêm vào giỏ hàng !", "success");
			});
		});
	
	</script>
<!--===============================================================================================-->
	<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			$(this).css('position','relative');
			$(this).css('overflow','hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed: 1,
				scrollingThreshold: 1000,
				wheelPropagation: false,
			});

			$(window).on('resize', function(){
				ps.update();
			})
		});
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>


<!-- Chat Zalo -->

