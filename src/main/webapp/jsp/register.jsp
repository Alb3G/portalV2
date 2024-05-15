<%@ page import="models.Course" %>
<%@ page import="models.School" %>
<%@ page import="java.util.List" %>
<%@ page import="utils.Util" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		 pageEncoding="ISO-8859-1"%>

<%
	List<School> schools = Util.getAllSchools();
	List<Course> courses = Util.getAllCourses();
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1" name="viewport"
		content="width=device-width, initial-scale=1.25, maximum-scale=1">
	<!-- CSS -->
	<link href="../styles/styleRegister.css" rel="stylesheet">
	<!-- FONTS -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link
		href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100..900;1,100..900&display=swap"
		rel="stylesheet">
	<!-- FAVICON -->
	<link rel="icon" type="image/x-icon" href="../images/accFavicon.jpg">
	<title>Register</title>
</head>

<body>
	<div id="mainContainer">
		<!-- ACCENTURE IMAGE -->
		<img src="../images/logoAccenture.svg" id="logoAccenture">
		
		<!-- FORM -->
		<form action="" method="post" class="login" onsubmit=" return userValidation()">
			<!-- NOMBRE -->
			<div class="input_container" id="nameContainer">
				<input type="text" name="user_name" id="nameInput" required> <label>Nombre</label>
			</div>
			
			<!-- APELLIDOS -->
			<div class="input_container" id="lastNameContainer">
				<input type="text" name="user_lastname" id="lastNameInput" required> <label>Apellidos</label>
			</div>
			
			<!-- EMAIL -->
			<div class="input_container" id="emailContainer">
				<input type="email" name="user_email" id="emailInput" required> <label>Email</label>
			</div>
			
			<!-- FECHA NACIMIENTO -->
			<div class="input_container" id="dateContainer">
				<input type="date" class="date" id="dateInput" name="user_birthday" required>
			</div>
			
			<!-- NIF -->
			<div class="input_container" id="dnieContainer">
				<input type="text" name="user_nif" id="dnieInput" required> <label>NIF</label>
			</div>
			
			<!-- CENTRO -->
			<div class="input_container" id="schoolContainer">
				<select name="user_center" id="schoolInput" required>
					<option value="0" disabled selected>-- Seleccione un centro --</option>
					<%for(int i = 0; i < schools.size(); i++) { %>
					<option value="<%= schools.get(i).getIdSchool()%>"><%= schools.get(i).getSchoolName()%></option>
					<% } %>
				</select>
			</div>
			
			<!-- CURSO -->
			<div class="input_container" id="courseContainer">
				<select name="user_course" id="courseInput" required>
					<option value="0" disabled selected>-- Seleccione un curso --</option>
					<%for(int i = 0; i < courses.size(); i++) { %>
					<option value="<%= courses.get(i).getId_course()%>"><%= courses.get(i).getNameCourse()%></option>
					<% } %>
				</select>
			</div>
			
			<!-- CONTRASE�A -->
			<div class="input_container" id="passContainer">
				<input type="password" name="user_password" id="passInput" minlength="8" required> <label>Contrase�a</label>
			</div>
			
			<!-- REPITE CONTRASE�A -->
			<div class="input_container" id="pass2Container">
				<input type="password" name="user_password2" id="passInput2" minlength="8" required> <label>Repetir contrase�a</label>
			</div>
			
			<!-- BOT�N REGISTRO -->
			<button type="submit" class="register-button container-button">Registrar</button>

			<!-- LOGIN LINK -->
			<div class="account-animation">
				<a href="./login.jsp" class="animated-link"> Tengo una cuenta creada</a>
			</div>
		</form>
	</div>

	<!-- FOOTER -->
	<footer>
		<p>Aplicaci�n creada por <strong>Grupo La Rubia & co</strong></p>
	</footer>
	<script src="../scripts/register.js"></script>
	<script>
		let validationResults = {};

		function userValidation() {
			validationResults = {
				name: checkNameInput(),
				lastName: checkLastNameInput(),
				email: checkEmailInput(),
				dnie: checkDnieInput(),
				password: checkPassInput(),
				password2: checkPass2Input()
			};

			return Object.values(validationResults).every(result => result);
		}
	</script>
</body>
</html>