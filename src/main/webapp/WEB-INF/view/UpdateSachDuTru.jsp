<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Contact V4</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor1/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor1/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor1/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor1/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor1/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor1/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
	<div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form validate-form"
				action="UpdateOneBookController" method="post"
				enctype="multipart/form-data">
				<span class="contact100-form-title"> C???p Nh???t ??i???n Tho???i
					<div>
						<c:if test="${themsach !=null}">
							<h3 style="color: red; font-family: serif; font-size: 20px;">
								Add Book Complete!</h3>
							<a href="Admin"> Back To Admin Page!</a>
						</c:if>
					</div>
				</span>

				<div class="wrap-input100 validate-input"
					data-validate="Name is required">
					<span class="label-input100">M?? ??i???n Tho???i</span> <input
						id="txtmasach" name="txtmadienthoai" placeholder="M?? ??i???n Tho???i"
						class="input100" required="" type="text" value="${madienthoai}">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input"
					data-validate="Name is required">
					<span class="label-input100">T??n ??i???n Tho???i</span> <input
						id="txttensach" name="txttendienthoai"
						placeholder="T??n ??i???n Tho???i" class="input100" required=""
						type="text" value="${tendienthoai}"> <span
						class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input"
					data-validate="Name is required">
					<span class="label-input100">M??n H??nh</span> <input id="txtmanhinh"
						name="txtmanhinh" placeholder="M??n H??nh" class="input100"
						required="" type="text" value="${manhinh}"> <span
						class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input"
					data-validate="Name is required">
					<span class="label-input100">Camera Sau</span> <input
						id="txtcamerasau" name="txtcamerasau" placeholder="Camera Sau"
						class="input100" required="" type="text" value="${camerasau }">
					<span class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input"
					data-validate="Name is required">
					<span class="label-input100">Camera Tr?????c</span> <input
						id="txtcameratruoc" name="txtcameratruoc"
						placeholder="Camera Tr?????c" class="input100" required=""
						type="text" value="${cameratruoc }"> <span
						class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input"
					data-validate="Name is required">
					<span class="label-input100">RAM</span> <input id="txtram"
						name="txtram" placeholder="Ram" class="input100" required=""
						type="text" value="${ram}"> <span class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input"
					data-validate="Name is required">
					<span class="label-input100">B??? Nh??? Trong</span> <input
						id="txtbonhotrong" name="txtbonhotrong" placeholder="B??? Nh??? Trong"
						class="input100" required="" type="text" value="${bonhotrong}">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input"
					data-validate="Name is required">
					<span class="label-input100">Gi??</span> <input id="txthedieuhanh"
						name="txtgia" placeholder="Gi??" class="input100" required=""
						type="number" value="${gia}"> <span class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input"
					data-validate="Name is required">
					<span class="label-input100">H??? ??i???u H??nh</span> <input
						id="txtsoluong" name="txthedieuhanh" placeholder="H??? ??i???u H??nh"
						class="input100" required="" type="text" value="${hedieuhanh }">
					<span class="focus-input100"></span>
				</div>
				<div class="wrap-input100 input100-select">
					<span class="label-input100">Th??? Lo???i</span>
					<div>
						<select class="selection-2" name="service"
							onchange="genderChanged(this)">
							<option selected>Ch???n lo???i ??i???n tho???i</option>
							<c:forEach items="${loai}" var="l">
								<option value="${l.maloai }">${l.tenloai }</option>
							</c:forEach>
						</select>
					</div>
					<script language="javascript">
						function genderChanged(obj) {
							var value = obj.value;
							result.value = value;
						}
					</script>
					<span class="focus-input100"></span> <input type="hidden"
						id="result" value="" name="txtloai" class="input100" />
				</div>


				<div class="wrap-input100 validate-input"
					data-validate="Name is required">
					<span class="label-input100">CPU</span> <input id="txtsotap"
						name="txtcpu" placeholder="CPU" class="input100" required=""
						type="text" value="${cpu}"> <span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input"
					data-validate="Name is required">
					<span class="label-input100">???nh</span><img alt=""
						src="<c:out value="${anh}"></c:out>" style="width: 75px"> <input
						id="txtfile" name="txtfile" placeholder="???nh" class="input100"
						required="" type="file"> <span class="focus-input100"></span>
				</div>

				<div class="container-contact100-form-btn">
					<div class="wrap-contact100-form-btn">
						<div class="contact100-form-bgbtn"></div>
						<button class="contact100-form-btn">
							<span> Submit <i class="fa fa-long-arrow-right m-l-7"
								aria-hidden="true"></i>
							</span>
						</button>
					</div>
				</div>
			</form>
		</div>
	</div>



	<div id="dropDownSelect1"></div>


</body>
</html>