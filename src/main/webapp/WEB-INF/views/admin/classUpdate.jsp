<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html
  lang="en"
  class="light-style layout-menu-fixed"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="../assets/"
  data-template="vertical-menu-template-free"
>

<head>
    <meta charset="utf-8">
    <title>Gardener - Gardening Website Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Core CSS -->
    <link rel="stylesheet" href="/resources/JSbtstr/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="/resources/JSbtstr/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="/resources/JSbtstr/css/demo.css" />

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500;600;700&family=Open+Sans:wght@400;500&display=swap" rel="stylesheet">  

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="/resources/JSbtstr/lib/animate/animate.min.css" rel="stylesheet">
    <link href="/resources/JSbtstr/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="/resources/JSbtstr/lib/lightbox/css/lightbox.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/resources/JSbtstr/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="/resources/JSbtstr/css/style.css" rel="stylesheet">
</head>
<body>
<%@include file="/WEB-INF/views/common/header.jsp" %>
 <script src="https://code.jquery.com/jquery-3.6.1.js"></script>
<body>
<style>
input[type="number"]::-webkit-outer-spin-button,
	input[type="number"]::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
	}
	input[type="image"]{
	width:400px;
	height:350px;
	}
</style>
  <!-- Layout wrapper -->
  <div class="content-wrapper" style="left: 300px; flex-direction: row; ">
      <!-- Menu -->

      <%@include file="/WEB-INF/views/common/aside.jsp" %>
      <!-- / Menu -->

        <!-- Layout container -->
        


          <!-- Content wrapper -->
          
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              

                <div class="col-xl-6">
                  <!-- HTML5 Inputs -->
                <form action="#" style="width:1200px">
                  <div class="card mb-4">
                    <h5 class="card-header" style="text-align: center;">클래스 등록하기</h5>
                    <div class="card-body">
                      <div class="mb-3 row">
                        <label for="html5-text-input" class="col-md-2 col-form-label">클래스명</label>
                        <div class="col-md-10">
                          <input class="form-control" name='className' type="text" id="html5-text-input" readonly value="${cla.className }" />
                        </div>
                      </div>
                      <div class="mb-3 row">
                        <label for="html5-search-input" class="col-md-2 col-form-label">메인이미지</label>
                        <div class="col-md-10">
                          <input type="image" name = 'files' disabled src="resources/upload/class/${cla.filepath }" class="btn btn-outline-primary">
                          <input type="file" value="${cla.filepath }">
                        </div>
                      </div>
                     	
                      <div class="mb-3 row">
                        <label for="html5-email-input" class="col-md-2 col-form-label">강사명</label>
                        <div class="col-md-10">
                          <input class="form-control" name = 'teacherName' type="email"  id="html5-email-input" value="${cla.teacherName }" readonly/>
                        </div>
                      </div>
                      <div class="mb-3 row">
                        <label for="html5-url-input" class="col-md-2 col-form-label">강사소개</label>
                        <div class="col-md-10">
                          <textarea class="form-control" name = "teacherIntroduce" type="url" id="html5-url-input"  readonly>${cla.teacherIntroduce }</textarea>
                        </div>
                      </div>
                      
                      <div class="mb-3 row">
                        <label for="html5-phone-input" class="col-md-2 col-form-label">휴대전화</label>
                        <div class="col-md-10">
                          <textarea class="form-control" name = "teacherPhone" type="url" id="html5-url-input"  readonly>${cla.teacherPhone }</textarea>
                        </div>
                      </div>
                      
                      <div class="mb-3 row">
                        <label for="html5-tel-input" class="col-md-2 col-form-label">커리큘럼</label>
                        <div class="col-md-10">
                          <textarea class="form-control" name= "curriculum" type="tel" id="html5-tel-input" readonly>${cla.curriculum }</textarea>
                        </div>
                      </div>
                    
                      <div class="mb-3 row">
                        <label for="html5-detail-input" class="col-md-2 col-form-label">클래스 상세</label>
                        <div class="col-md-10">
                          <c:forEach items="${cla.fileList }" var="files">
                      		<input  type="image" name = 'files' id="html5-detail-input" disabled src="resources/upload/class/${files.filepath }" class="btn btn-outline-primary">
                      	</c:forEach>
                        </div>
                      </div>
				
                      <div class="mb-3 row">
                        <label for="html5-period-input" class="col-md-2 col-form-label">수강기간</label>
                        <div class="col-md-10">
                          <input class="form-control" name = "startDate" type="tel" id="html5-period-input" style="width: 200px; display: inline-block;" value="${cla.startDate }" readonly/>
                          <pre style="display: inline-block; margin: 0; margin-bottom: -5px;">  ~  </pre>
                          <input class="form-control" name ="endDate" type="tel"  style="width: 200px; display: inline-block;" value="${cla.endDate }" readonly/>
                        </div>
                      </div>

                    <div class="mb-3 row">
                        <label for="html5-category-input" class="col-md-2 col-form-label">카테고리</label>
                        <div class="col-md-10">
                          <input class="form-control"  id="html5-category-input" value="${cla.classCategory }" readonly/>
                        </div>
                      </div>
                     
                       <div class="mb-3 row">
                        <label for="html5-total-input" class="col-md-2 col-form-label">모집인원</label>
                        <div class="col-md-10">
                          <input class="form-control" id="html5-total-input" value="${cla.classLimit } 명" readonly/>
                        </div>
                      </div>
                      
                       <div class="mb-3 row">
                        <label for="html5-products-input" class="col-md-2 col-form-label">준비물</label>
	                        <div class="col-md-10">
	                        <c:if test='${cla.products == 48}'>
	 							<input class="form-control"  id="html5-products-input" value="준비물 필요없음" readonly/>	
	              			</c:if>
	              			<c:if test='${cla.products == 49}'>
	 							<input class="form-control"  id="html5-products-input" value="준비물 필요" readonly/>	
	              			</c:if>
	              			 </div>
              			</div>
						<div class="mb-3 row">
							<label for="html5-price-input" class="col-md-2 col-form-label">가격</label>
							<div class="col-md-10">
								<input type="number" class="form-control" id="html5-price-input" name = "price"/>
							</div>
						</div>
						<a id="subBtn" onclick="changeStatus(${cla.classNo },)" style="float: right; width:150px;" class="btn btn-outline-primary">등록하기</a>
                    </div>
                  </div>
                </form>
                  <!-- File input -->
               </div></div></div>
            <!-- / Content -->
	
	
	




<!-- Footer Start -->
<div class="container-fluid bg-dark text-light footer mt-5 py-5 wow fadeIn" data-wow-delay="0.1s" style="width: 100%;">
  <div class="container py-5">
      <div class="row g-5">
          <div class="col-lg-3 col-md-6">
              <h4 class="text-white mb-4">Our Office</h4>
              <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>123 Street, New York, USA</p>
              <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+012 345 67890</p>
              <p class="mb-2"><i class="fa fa-envelope me-3"></i>info@example.com</p>
              <div class="d-flex pt-2">
                  <a class="btn btn-square btn-outline-light rounded-circle me-2" href=""><i class="fab fa-twitter"></i></a>
                  <a class="btn btn-square btn-outline-light rounded-circle me-2" href=""><i class="fab fa-facebook-f"></i></a>
                  <a class="btn btn-square btn-outline-light rounded-circle me-2" href=""><i class="fab fa-youtube"></i></a>
                  <a class="btn btn-square btn-outline-light rounded-circle me-2" href=""><i class="fab fa-linkedin-in"></i></a>
              </div>
          </div>
          <div class="col-lg-3 col-md-6">
              <h4 class="text-white mb-4">Services</h4>
              <a class="btn btn-link" href="">Landscaping</a>
              <a class="btn btn-link" href="">Pruning plants</a>
              <a class="btn btn-link" href="">Urban Gardening</a>
              <a class="btn btn-link" href="">Garden Maintenance</a>
              <a class="btn btn-link" href="">Green Technology</a>
          </div>
          <div class="col-lg-3 col-md-6">
              <h4 class="text-white mb-4">Quick Links</h4>
              <a class="btn btn-link" href="">About Us</a>
              <a class="btn btn-link" href="">Contact Us</a>
              <a class="btn btn-link" href="">Our Services</a>
              <a class="btn btn-link" href="">Terms & Condition</a>
              <a class="btn btn-link" href="">Support</a>
          </div>
          <div class="col-lg-3 col-md-6">
              <h4 class="text-white mb-4">Newsletter</h4>
              <p>Dolor amet sit justo amet elitr clita ipsum elitr est.</p>
              <div class="position-relative w-100">
                  <input class="form-control bg-light border-light w-100 py-3 ps-4 pe-5" type="text" placeholder="Your email">
                  <button type="button" class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2">SignUp</button>
              </div>
          </div>
      </div>
  </div>
</div>
<!-- Footer End -->

</body>
	<script>
		function changeStatus(classNo){
			classPrice= $("#html5-price-input").val();
		location.href="/changeStatus.do?classNo="+classNo+"&classPrice="+classPrice;
		}
	</script>
</html>


            <div class="content-backdrop fade"></div>
          </div>
          <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
      </div>

      <!-- Overlay -->
      <div class="layout-overlay layout-menu-toggle"></div>
    </div>
    <!-- / Layout wrapper -->



    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->
    <script src="../assets/vendor/libs/jquery/jquery.js"></script>
    <script src="../assets/vendor/libs/popper/popper.js"></script>
    <script src="../assets/vendor/js/bootstrap.js"></script>
    <script src="../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

    <script src="../assets/vendor/js/menu.js"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->

    <!-- Main JS -->
    <script src="../assets/js/main.js"></script>

    <!-- Page JS -->

    <script src="../assets/js/form-basic-inputs.js"></script>

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
  </body>
</html>
