 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html
  lang="ko"
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

	<link rel="stylesheet" href="/resources/TGbtstr/css/productFrm.css" />
    <!-- Favicon -->
    <link href="/resources/JSbtstr/img/favicon.ico" rel="icon">

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
    <link href="/resources/TGbtstr/css/productUpdate.css" rel="stylesheet">
    
</head>
<body>
	
	<%@include file="/WEB-INF/views/common/header.jsp" %>

  <body>
    <!-- Layout wrapper -->
    <div class="content-wrapper" style="left: 300px; flex-direction: row; ">
        <!-- Menu -->

        <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme"
         style="top: 30px; display: inline-block; width: 300px; height: 400px;">
          
          <ul class="menu-inner py-1">

            <!-- 회원관리 -->
            <li class="menu-item adminMenuItem">
              <a href="/adminPage.do?reqPage=1" class="menu-link">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="Basic Inputs">회원 관리</div>
              </a>
            </li>
            
            <!-- Tables -->
            <li class="menu-item adminClassMenu">
              <a href="/adminMgrClass.do?reqPage=1" class="menu-link">
                <i class="menu-icon tf-icons bx bx-table"></i>
                <div data-i18n="Tables">클래스관리(관리자페이지)</div>
              </a>
            </li>

            <!-- 클래스관리 -->
            <li class="menu-item classMgrTeacher">
              <a href="classMgrTeacher.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-collection"></i>
                <div data-i18n="Basic">클래스관리(강사페이지)</div>
              </a>
            </li>

            <!-- 클래스등록 -->
            <li class="menu-item classEnroll">
              <a href="classEnroll.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="Basic Inputs">클래스 등록</div>
              </a>
            </li>

            <!-- 액티비티등록 -->
            <li class="menu-item activityEnroll">
              <a href="activityEnroll.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="Basic Inputs">액티비티 등록</div>
              </a>
            </li>

            <!-- 액티비티관리 -->
            <li class="menu-item activityMgrAdmin">
              <a href="activityMgrAdmin.do?reqPage=1" class="menu-link">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="Basic Inputs">액티비티 관리</div>
              </a>
            </li>

            <!-- 상품등록 -->
            <li class="menu-item insertProductFrm">
              <a href="insertProductFrm.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="Basic Inputs">상품 등록</div>
              </a>
            </li>

            <!-- 상품관리 -->
            <li class="menu-item goodsMgrAdmin">
              <a href="/adminProductList.do?reqPage=1" class="menu-link">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="Basic Inputs">상품 관리</div>
              </a>
            </li>


            <!-- 장바구니 -->
            <li class="menu-item cart">
              <a href="cart.do?memberNo=${sessionScope.m.memberNo }" class="menu-link">
                <i class="menu-icon tf-icons bx bx-table"></i>
                <div data-i18n="Tables">장바구니</div>
              </a>
            </li>

            <!-- 마이페이지 -->
            <li class="menu-item  mypage">
              <a href="mypage.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="Basic Inputs">마이페이지</div>
              </a>
            </li>
                      <!-- 주문내역 -->
          <li class="menu-item orderHistory">
            <a href="orderHistory.do?memberNo=${sessionScope.m.memberNo }" class="menu-link">
              <i class="menu-icon tf-icons bx bx-detail"></i>
              <div data-i18n="Basic Inputs">주문내역</div>
            </a>
          </li>
          
          <!-- 내동호회 -->
          <li class="menu-item myClub ">
            <a href="myClub.do" class="menu-link">
              <i class="menu-icon tf-icons bx bx-detail"></i>
              <div data-i18n="Basic Inputs">내동호회</div>
            </a>
          </li>
          
          <!-- 수강현황 -->
          <li class="menu-item  classHistory">
            <a href="classHistory.do" class="menu-link">
              <i class="menu-icon tf-icons bx bx-detail"></i>
              <div data-i18n="Basic Inputs">수강현황</div>
            </a>
          </li>
          <!-- 나의후기 -->
          <li class="menu-item  myComment">
            <a href="myComment.do" class="menu-link">
              <i class="menu-icon tf-icons bx bx-detail"></i>
              <div data-i18n="Basic Inputs">나의후기</div>
            </a>
          </li>
          
          <!-- 강사정보 -->
          <li class="menu-item teacherInfo ">
            <a href="teacherInfo.do" class="menu-link">
              <i class="menu-icon tf-icons bx bx-detail"></i>
              <div data-i18n="Basic Inputs">강사정보</div>
            </a>
          </li>
        </aside>
         
        <!-- / Menu -->

        <!-- Layout container -->
        


          <!-- Content wrapper -->
          
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">

              <!-- HTML5 Inputs -->
            <form action="/productUpdate.do" method="post" enctype="multipart/form-data" id="productUpdateFrm">
              <div class="card mb-4" style="width: 60%; float: left;">
                <h5 class="card-header" style="text-align: center;">상품 정보수정</h5>
                <div class="card-body">
                  <div class="mb-3 row" style="margin-top: 10px;">
                    <label for="html5-text-input" class="col-md-2 col-form-label">상품명</label>
                    <div class="col-md-10">
                      <input class="form-control" type="text" id="html5-text-input" name="productName" value="${p.productName }"/>
                      <input type="hidden" name="productNo" value="${p.productNo }">
                    </div>
                  </div>
                  <div class="mb-3 row" style="margin-top: 10px;">
                    <label for="html5-text-input" class="col-md-2 col-form-label">키트명</label>
                    <div class="col-md-10">
                      <input class="form-control" type="text" id="html5-text-input" name="productSubName" value="${p.productSubName }"/>
                    </div>
                  </div>
                  
                  <div class="mb-3 row">
                    <label for="html5-tel-input" class="col-md-2 col-form-label">가격</label>
                    <div class="col-md-10">
                      <input class="form-control" type="tel" id="html5-tel-input" style="width: 200px; display: inline-block;" name="productPrice" value="${p.productPrice }"/>
                      <label for="html5-tel-input" class="col-md-2 col-form-label" style="text-align: right; padding-right: 10px; width:187px;">판매 수량</label>
                      <input class="form-control" type="tel" id="html5-tel-input" style="width: 220px; display: inline-block;" name="productQty" value="${p.productQty }"/>
                    </div>
                  </div>
            <div></div>
	    		  <!-- 
	    		  <input type="hidden" name="fileNoList" value="${p.productFileVO[0].fileNo }">
	    		  <input type="hidden" name="fileNoList" value="${p.productFileVO[1].fileNo }">
	    		  <input type="hidden" name="fileNoList" value="${p.productFileVO[2].fileNo }">
	    		   -->
                  <div class="mb-3 row">
                    <label for="html5-search-input" class="col-md-2 col-form-label">메인이미지</label>
                    <div class="col-md-10">
                    <c:choose>
                    <c:when test="${!empty p.productFileVO[0].fileName}">
                      <input type="file" name="productMainFile" id="producetFile1" class="productFile upImg" style="display: none;">
                      <span id="productImg1" class="mainImg">${p.productFileVO[0].fileName }</span>
                      <button class="productDelBtn1" type="button" onclick="deleteMainFile(this,${p.productFileVO[0].fileNo},'${p.productFileVO[0].filePath }')">삭제</button>
                    </c:when>
                    <c:otherwise>
                      <input type="file" name="productFile" id="productFile2" class="productFile" style="display: block;">
                    </c:otherwise>
                      </c:choose>
                    </div>
                    <label for="html5-search-input" class="col-md-2 col-form-label">상세이미지1</label>
                    <div class="col-md-10">
                    <c:choose>
                    <c:when test="${!empty p.productFileVO[1].fileName}">
                      <input type="file" name="productFile" id="productFile2" class="productFile" style="display: none;">
                      <span>${p.productFileVO[1].fileName }</span>
                      <button class="productDelBtn1" type="button" onclick="deleteimgFile(this,${p.productFileVO[1].fileNo},'${p.productFileVO[1].filePath }')">삭제</button>
                    </c:when>  
                    <c:otherwise>
                      <input type="file" name="productFile" id="productFile2" class="productFile" style="display: block;">
                    </c:otherwise>
                    </c:choose>
                    </div>
                    <label for="html5-search-input" class="col-md-2 col-form-label">상세이미지2</label>
                    <div class="col-md-10">
                    <c:choose>
                    <c:when test="${!empty p.productFileVO[2].fileName}">
                      <input type="file" name="productFile" id="productFile3" class="productFile" style="display: none;">
                      <span>${p.productFileVO[2].fileName }</span>
                      <button class="productDelBtn1" type="button" onclick="deleteimgFile(this,${p.productFileVO[2].fileNo},'${p.productFileVO[2].filePath }')">삭제</button>
                      </c:when>
                      <c:otherwise>
                      <input type="file" name="productFile" id="productFile2" class="productFile" style="display: block;">
                      </c:otherwise>
                      </c:choose>
                    </div>
                    <label for="html5-search-input" class="col-md-2 col-form-label">상세이미지3</label>
                    <div class="col-md-10">
                    <c:choose>
                    <c:when test="${!empty p.productFileVO[3].fileName}">
                      <input type="file" name="productFile" id="productFile3" class="productFile" style="display: none;">
                      <span>${p.productFileVO[3].fileName }</span>
                      <button class="productDelBtn1" type="button" onclick="deleteimgFile(this,${p.productFileVO[3].fileNo},'${p.productFileVO[3].filePath }')">삭제</button>
                      </c:when>
                      <c:otherwise>
                      <input type="file" name="productFile" id="productFile2" class="productFile" style="display: block;">
                      </c:otherwise>
                      </c:choose>
                    </div>
                    
                  </div>
                  
                  <div class="mb-3 row">
                    <label for="html5-tel-input" class="col-md-2 col-form-label">카테고리 상세</label>
                      <div class="btn-group" style="width: 150px;">
                      	<select id="productCategory" name="productCategory">
                      		<option value="">카테고리 선택</option>
                      		<option value="dg" <c:if test="${p.productCategory eq 'dg'}">selected</c:if>>디지털</option>
                      		<option value="fu" <c:if test="${p.productCategory eq 'fu'}">selected</c:if>>주식/재테크</option>
                      		<option value="cr" <c:if test="${p.productCategory eq 'cr'}">selected</c:if>>공예</option>
                      		<option value="de" <c:if test="${p.productCategory eq 'de'}">selected</c:if>>디자인</option>
                      		<option value="ex" <c:if test="${p.productCategory eq 'ex'}">selected</c:if>>운동/건강</option>
                      		<option value="fs" <c:if test="${p.productCategory eq 'fs'}">selected</c:if>>패션</option>
                      		<option value="me" <c:if test="${p.productCategory eq 'me'}">selected</c:if>>미디어</option>
                      		<option value="so" <c:if test="${p.productCategory eq 'so'}">selected</c:if>>악기/노래</option>
                      		<option value="fo" <c:if test="${p.productCategory eq 'fo'}">selected</c:if>>외국어</option>
                      		<option value="co" <c:if test="${p.productCategory eq 'co'}">selected</c:if>>요리/제과제빵</option>
                      	</select>
                      </div>
                  </div>
                  
                  <div class="mb-3 row">
                    <label for="html5-tel-input" class="col-md-2 col-form-label">판매상태</label>
                      <div class="btn-group" style="width: 150px;">
                      	<select id="productStatus" name="productStatus">
                      		<option value="0" <c:if test="${p.productStatus eq '0'}">selected</c:if>>판매</option>
                      		<option value="1" <c:if test="${p.productStatus eq '1'}">selected</c:if>>품절</option>
                      	</select>
                      </div>
                  </div>
                      	<!-- 
                        <button
                          type="button"
                          class="btn btn-outline-primary dropdown-toggle"
                          data-bs-toggle="dropdown"
                          aria-expanded="false">
                          	카테고리선택
                        </button>
                        <ul class="dropdown-menu">
                          <li><a class="dropdown-item">디지털</a></li>
                          <li><a class="dropdown-item">주식/재테크</a></li>
                          <li><a class="dropdown-item">공예</a></li>
                          <li><a class="dropdown-item">디자인</a></li>
                          <li><a class="dropdown-item">운동/건강</a></li>
                          <li><a class="dropdown-item">패션</a></li>
                          <li><a class="dropdown-item">미디어</a></li>
                          <li><a class="dropdown-item">악기/노래</a></li>
                          <li><a class="dropdown-item">외국어</a></li>
                          <li><a class="dropdown-item">요리/제과제빵</a></li>
                        </ul>
                       -->
                  
                  <div class="mb-3 row">
                    <label for="html5-email-input" class="col-md-2 col-form-label">상품소개</label>
                    <div class="col-md-10">
                      <textarea class="form-control" name="productContent" id="productContent" style="height: 300px;">${p.productContent }</textarea>
                      <!-- <input class="form-control" type="email"  id="html5-email-input" /> -->
                    </div>
                  </div>
                  <!-- 
                  <div class="mb-3 row">
                    <label for="html5-url-input" class="col-md-2 col-form-label">마켓 상세</label>
                    <div class="col-md-10">
                      <input class="form-control" type="url" id="html5-url-input" />
                    </div>
                  </div>
                   -->
                  <button type="submit" style="float: right; width:150px;" class="btn btn-outline-primary" onclick="return productUpdateBtn();">수정하기</button>
                </div>
              </div>
            </form>
              <!-- File input -->
            </div>

        <!-- / Content -->



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

<!-- Footer Start -->
<%@include file="/WEB-INF/views/common/footer.jsp" %>
<!-- Footer End -->
	<script>
	function productUpdateBtn(){
		var mainImg = $(".mainImg").text();
		var updateImg = $(".upImg").val();
		var category = $("#productCategory").val();
		if((mainImg==''&&updateImg=='')){
			 alert("메인이미지를 등록해주세요.");
			 return false;
		 } else if(category ==''){
			 alert("카테고리를 선택해주세요.")
			 return false;
		 }else {
			if(confirm("상품정보를 수정하시겠습니까?"))	{
				
			}else {
				return false;
			}
		 }	
	}
	$("#fileUpload").on("click",function(){
			$(".productFile").click();
	});
	
	$(".productFile").on("change",function(){
		$(this).next().hide();
		//$("#productImg1").hide();
	});
	
	$(".productDelBtn1").on("click",function(){
		//$("#productImg1").remove();
		$(this).prev().text("").hide();
		//$("#producetFile1").show();
		$(this).prev().prev().show();
		$(this).hide();
	});
	function deleteMainFile(obj,mainFileNo,mainFilepath){
		const mainFileNoInput = $("<input>");
		mainFileNoInput.attr("name","mainFileNo");
		mainFileNoInput.val(mainFileNo);
		mainFileNoInput.hide();
		const mainFilepathInput = $("<input>");
		mainFilepathInput.attr("name","productMainpath");
		mainFilepathInput.val(mainFilepath);
		mainFilepathInput.hide();
		
		$("#productUpdateFrm").append(mainFileNoInput).append(mainFilepathInput);
	}
	function deleteimgFile(obj,fileNo,filepath){
		const fileNoInput = $("<input>");
		fileNoInput.attr("name","fileNoList");
		fileNoInput.val(fileNo);
		fileNoInput.hide();
		const filepathInput = $("<input>");
		filepathInput.attr("name","productpathList");
		filepathInput.val(filepath);
		filepathInput.hide();
		
		$("#productUpdateFrm").append(fileNoInput).append(filepathInput);
	}
	
	</script>
    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->
    <script src="../assets/vendor/libs/jquery/jquery.js"></script>
    <script src="../assets/vendor/libs/popper/popper.js"></script>
    <script src="../assets/vendor/js/bootstrap.js"></script>
    <script src="../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

    <script src="../assets/vendor/js/menu.js"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->
    <script src="../assets/vendor/libs/masonry/masonry.js"></script>

    <!-- Main JS -->
    <script src="../assets/js/main.js"></script>

    <!-- Page JS -->

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
  </body>
</html>
