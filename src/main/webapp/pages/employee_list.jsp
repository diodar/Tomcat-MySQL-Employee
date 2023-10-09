<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Employees List</title>
    <style>
    table {
        width: 30%;
        border-collapse: collapse;
        margin-bottom: 20px;
    }
    th, td {
        padding: 12px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
    tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    .blueButton {
           	box-shadow: 7px 8px 0px 3px #1564ad;
           	background:linear-gradient(to bottom, #efff7a 5%, #378de5 100%);
           	background-color:#efff7a;
           	border-radius:12px;
           	border:2px solid #337bc4;
           	display:inline-block;
           	cursor:pointer;
           	color:#ffffff;
           	font-family:Courier New;
           	font-size:17px;
           	font-weight:bold;
           	font-style:italic;
           	padding:12px 44px;
           	text-decoration:none;
           	text-shadow:0px 5px 7px #528ecc;
           }
           .blueButton:hover {
           	background:linear-gradient(to bottom, #378de5 5%, #efff7a 100%);
           	background-color:#378de5;
           }
           .blueButton:active {
           	position:relative;
           	top:1px;
           }
        .editButton {
            box-shadow:inset 0px 1px 0px 0px #97c4fe;
            background:linear-gradient(to bottom, #3d94f6 5%, #1e62d0 100%);
            background-color:#3d94f6;
            border-radius:4px;
            border:1px solid #ffffff;
            display:inline-block;
            cursor:pointer;
            color:#ffffff;
            font-family:Arial;
            font-size:12px;
            padding:6px 22px;
            text-decoration:none;
            text-shadow:0px 1px 0px #b23e35;
        }
        .editButton:hover {
            background:linear-gradient(to bottom, #1e62d0 5%, #3d94f6 100%);
            background-color:#1e62d0;
        }
        .editButton:active {
            position:relative;
            top:1px;
        }
        .redButton {
                    box-shadow:inset 0px 39px 0px -24px #e67a73;
                    background-color:#e4685d;
                    border-radius:4px;
                    border:1px solid #ffffff;
                    display:inline-block;
                    cursor:pointer;
                    color:#ffffff;
                    font-family:Arial;
                    font-size:12px;
                    padding:6px 14px;
                    text-decoration:none;
                    text-shadow:0px 1px 0px #b23e35;
                }
                .redButton:hover {
                    background-color:#eb675e;
                }
                .redButton:active {
                    position:relative;
                    top:1px;
                }
        .listButton {
        	box-shadow: 7px 8px 0px 3px #d1a82c;
        	background:linear-gradient(to bottom, #ffec64 5%, #ffab23 100%);
        	background-color:#ffec64;
        	border-radius:12px;
        	border:2px solid #ffaa22;
        	display:inline-block;
        	cursor:pointer;
        	color:#333333;
        	font-family:Courier New;
        	font-size:17px;
        	font-weight:bold;
        	font-style:italic;
        	padding:12px 44px;
        	text-decoration:none;
        	text-shadow:0px 5px 7px #ffee66;
        }
        .listButton:hover {
        	background:linear-gradient(to bottom, #ffab23 5%, #ffec64 100%);
        	background-color:#ffab23;
        }
        .listButton:active {
        	position:relative;
        	top:1px;
        }
    </style>
</head>
<body>
    <center>
        <h1>Employee List</h1>
        <h3>
        <!-- <a href="<%=request.getContextPath()%>/new">Add New Employee</a> -->
            <a href="<%=request.getContextPath()%>/new" class="blueButton">Add Employee</a>
            &nbsp;&nbsp;&nbsp;
            <a href="<%=request.getContextPath()%>/list" class="listButton">List Employee</a>
        </h3>
    </center>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>Employees</h2></caption>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Position</th>
                <th>Phone</th>
                <th>Actions</th>
            </tr>
            <c:forEach var="employee" items="${listEmployee}">
                <tr>
                    <td><c:out value="${employee.id}" /></td>
                    <td><c:out value="${employee.name}" /></td>
                    <td><c:out value="${employee.position}" /></td>
                    <td><c:out value="${employee.phone}" /></td>
                    <td>
                        <a href="<%=request.getContextPath()%>/edit?id=<c:out value='${employee.id}' />" class="editButton">Edit</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="<%=request.getContextPath()%>/delete?id=<c:out value='${employee.id}' />" class="redButton">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>