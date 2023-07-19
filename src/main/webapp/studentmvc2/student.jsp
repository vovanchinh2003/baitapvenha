<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.time.LocalDate"%>
<%@ page import="pxu.edu.vn.bai2.*"%>
<%@ page import="pxu.edu.vn.dao.connectjdbc.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Students Management</title>
<!-- Include CSS and JS libraries -->
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.13.5/css/jquery.dataTables.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
	
<!-- Include your custom CSS here if needed -->
</head>
<body>
	<h1>Quản lý sinh viên</h1>

	<button type="button" class="btn btn-success" data-bs-toggle="modal"
		data-bs-target="#addStudentModal">Add Student</button>

	<!-- DataTable to display the list of students -->
	<table id="studentTable" class="display">
		<thead>
			<tr>
				<th>ID</th>
				<th>Full Name</th>
				<th>Gender</th>
				<th>Birthday</th>
				<th>Phone Number</th>
				<th>Actions</th>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>

	<!-- Add Student Modal -->
	<div class="modal fade" id="addStudentModal" tabindex="-1"
		role="dialog" aria-labelledby="addStudentModalLabel"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="addStudentModalLabel">Add Student</h5>
					<button type="button" class="close" data-bs-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<!-- Add Student Form -->
					<form id="addStudentForm">
						<div class="form-group">
							<label for="fullname">Full Name</label> <input type="text"
								class="form-control" id="fullname" name="fullname" required>
						</div>
						<div class="form-group">
							<label for="gender">Gender</label> <select class="form-control"
								id="gender" name="gender" required>
								<option value="Male">Male</option>
								<option value="Female">Female</option>
							</select>
						</div>
						<div class="form-group">
							<label for="birthday">Birthday</label> <input type="date"
								class="form-control" id="birthday" name="birthday" required>
						</div>
						<div class="form-group">
							<label for="phoneNumber">Phone Number</label> <input type="text"
								class="form-control" id="phoneNumber" name="phoneNumber"
								required>
						</div>
						<div class="form-check">
							<input type="checkbox" class="form-check-input" id="isActive"
								name="isActive"> <label class="form-check-label"
								for="isActive">Active</label>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary" id="addStudentBtn">Add
						Student</button>
				</div>
			</div>
		</div>
	</div>

	<!-- Edit Student Modal -->
	<div class="modal fade" id="editStudentModal" tabindex="-1"
		role="dialog" aria-labelledby="editStudentModalLabel"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="editStudentModalLabel">Edit
						Student</h5>
					<button type="button" class="btn btn-close close" data-bs-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<!-- Edit Student Form -->
					<form id="editStudentForm">
						<input type="hidden" id="editId" name="id">
						<div class="form-group">
							<label for="editFullname">Full Name</label> <input type="text"
								class="form-control" id="editFullname" name="fullname" required>
						</div>
						<div class="form-group">
							<label for="editGender">Gender</label> <select
								class="form-control" id="editGender" name="gender" required>
								<option value="Nam">Nam</option>
								<option value="Nữ">Nữ</option>
								<option value="Khác">Khác</option>
							</select>
						</div>
						<div class="form-group">
							<label for="editBirthday">Birthday</label> <input type="date"
								class="form-control" id="editBirthday" name="birthday" required>
						</div>
						<div class="form-group">
							<label for="editPhoneNumber">Phone Number</label> <input
								type="text" class="form-control" id="editPhoneNumber"
								name="phoneNumber" required>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary" id="editStudentBtn">Save
						Changes</button>
				</div>
			</div>
		</div>
	</div>


	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
		src="https://cdn.datatables.net/1.13.5/js/jquery.dataTables.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
		integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
		crossorigin="anonymous"></script>
		
	<script type="text/javascript" src="script.js"></script>
</body>
</html>
