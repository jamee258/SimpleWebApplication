<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Servers List</title>
<style>
html {
	background-color: #289ee2;
	font-size: 20px;
}

h1 {
	font-size: 28px;
}

h2, h3, h4 {
	font-size: 22px;
}

.menu {
	margin-left: -100px;
}

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	padding-top: 100px; /* Location of the box */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
	border: 3px dashed #ccc;
	color: white;
	font-family: calibri;
	background-color: #289ee2;
	margin: auto;
	padding: 20px;
	border: 1px solid #888;
	width: 100%;
	font-family: calibri;
}

/* The Close Button */
.close {
	color: #aaaaaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: #000;
	text-decoration: none;
	cursor: pointer;
}
</style>
</head>
<body>
	<!-- The Modal -->
	<div id="myModal" class="modal">

		<!-- Modal content -->
		<div class="modal-content">
			<span class="close">&times;</span>
			<p>
				Server:
				<script>
					f1.Server
				</script>
			</p>
			<p>
				Type:
				<script>
					f1.Type
				</script>
			</p>
			<p>
				Environment:
				<script>
					f1.Environment
				</script>
			</p>
			<p>
				App1:
				<script>
					f1.App1
				</script>
			</p>
			<p>
				App2:
				<script>
					f1.App2
				</script>
			</p>
			<p>
				App3:
				<script>
					f1.App3
				</script>
			</p>
			<p>
				App4:
				<script>
					f1.App4
				</script>
			</p>
			<p>
				App5:
				<script>
					f1.App5
				</script>
			</p>
			<p>
				App6:
				<script>
					f1.App6
				</script>
			</p>
			<p>
				App7:
				<script>
					f1.App7
				</script>
			</p>
			<p>
				App8:
				<script>
					f1.App8
				</script>
			</p>
			<p>
				Start Date:
				<script>
					f1.Start_Date
				</script>
			</p>
			<p>
				End Date:
				<script>
					f1.End_Date
				</script>
			</p>
			<p>
				Allocation Status:
				<script>
					f1.Allocation_Status
				</script>
			</p>
			<p>
				Comments:
				<script>
					f1.Comments
				</script>
			</p>
			<p>
				Application Links:
				<script>
					f1.Application_Links
				</script>
			</p>
			<p>
				Installed Softwares And Versions:
				<script>
					f1.Installed_Softwares_And_Versions
				</script>
			</p>
			<p>
				Support End Date:
				<script>
					f1.Support_End_Date
				</script>
			</p>
			<p>
				Space Available(GB):
				<script>
					f1.Space_Available
				</script>
			</p>
		</div>

	</div>
</head>
<body>


	<jsp:include page="_header.jsp"></jsp:include>

	<jsp:include page="_menu.jsp"></jsp:include>

	<h3>Servers Information</h3>

	<h4>Select A Server Name:</h4>

	<button id="myBtn">Database</button>
	<button id="myBtn1">JBOSS</button>
	<button id="myBtn2">Mule</button>
	<button id="myBtn3">BO</button>
	<button id="myBtn4">ETL</button>
	<button id="myBtn5">SharePoint Application</button>

	<script>
		function f1() {
			var Server = Packages.org.o7planning.simplewebapp.utils.DBUtils.queryProduct.rs
					.getServer();
			var Type = Packages.org.o7planning.simplewebapp.utils.DBUtils.queryProduct.rs
					.getType();
			var Environment = Packages.org.o7planning.simplewebapp.utils.DBUtils.queryProduct.rs
					.getEnvironment();
			var App1 = Packages.org.o7planning.simplewebapp.utils.DBUtils.queryProduct.rs
					.getApp1();
			var App2 = Packages.org.o7planning.simplewebapp.utils.DBUtils.queryProduct.rs
					.getApp2();
			var App3 = Packages.org.o7planning.simplewebapp.utils.DBUtils.queryProduct.rs
					.getApp3();
			var App4 = Packages.org.o7planning.simplewebapp.utils.DBUtils.queryProduct.rs
					.getApp4();
			var App5 = Packages.org.o7planning.simplewebapp.utils.DBUtils.queryProduct.rs
					.getApp5();
			var App6 = Packages.org.o7planning.simplewebapp.utils.DBUtils.queryProduct.rs
					.getApp6();
			var App7 = Packages.org.o7planning.simplewebapp.utils.DBUtils.queryProduct.rs
					.getApp7();
			var App8 = Packages.org.o7planning.simplewebapp.utils.DBUtils.queryProduct.rs
					.getApp8();
			var Start_Date = Packages.org.o7planning.simplewebapp.utils.DBUtils.queryProduct.rs
					.getStart_Date();
			var End_Date = Packages.org.o7planning.simplewebapp.utils.DBUtils.queryProduct.rs
					.getEnd_Date();
			var Allocation_Status = Packages.org.o7planning.simplewebapp.utils.DBUtils.queryProduct.rs
					.getAllocation_Status();
			var Comments = Packages.org.o7planning.simplewebapp.utils.DBUtils.queryProduct.rs
					.getComments();
			var Application_Links = Packages.org.o7planning.simplewebapp.utils.DBUtils
					.Application_Links();
			var Installed_Softwares_And_Versions = Packages.org.o7planning.simplewebapp.utils.DBUtils.queryProduct.rs
					.getInstalled_Softwares_And_Versions();
			var Support_End_Date = Packages.org.o7planning.simplewebapp.utils.DBUtils.queryProduct.rs
					.getSupport_End_Date();
			var Space_Available = Packages.org.o7planning.simplewebapp.utils.DBUtils.queryProduct.rs
					.Space_Available();
		}

		// Get the popup
		var modal = document.getElementById('myModal');

		// Get the button that opens the popup
		var btn = document.getElementById("myBtn");
		var btn1 = document.getElementById("myBtn1");
		var btn2 = document.getElementById("myBtn2");
		var btn3 = document.getElementById("myBtn3");
		var btn4 = document.getElementById("myBtn4");
		var btn5 = document.getElementById("myBtn5");

		// Get the <span> element that closes the popup
		var span = document.getElementsByClassName("close")[0];

		// When the user clicks the button, open the popup 
		btn.onclick = function() {
			modal.style.display = "block";
		}

		btn1.onclick = function() {
			modal.style.display = "block";
		}

		btn2.onclick = function() {
			modal.style.display = "block";
		}

		btn3.onclick = function() {
			modal.style.display = "block";
		}

		btn4.onclick = function() {
			modal.style.display = "block";
		}

		btn5.onclick = function() {
			modal.style.display = "block";
		}

		// When the user clicks on <span> (x), close the popup
		span.onclick = function() {
			modal.style.display = "none";
		}

		// When the user clicks anywhere outside of the popup, close it
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}
	</script>

	<jsp:include page="_footer.jsp"></jsp:include>

</body>
</html>