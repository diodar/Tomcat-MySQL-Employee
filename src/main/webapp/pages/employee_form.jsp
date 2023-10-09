<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Employee List</title>
<style>
table {
        width: 30%;
        border-collapse: collapse;
        margin-bottom: 20px;
    }
    th, td {
        padding: 12px;
        text-align: left;
        border-bottom: 2px solid #ddd;
    }
    tr:nth-child(even) {
        background-color: #f2f2f2;
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
            <a href="<%=request.getContextPath()%>/list"  class="listButton">List Employee</a>
        </h3>
    </center>
    <div align="center">
        <c:if test="${employee != null}">
            <form action="update" method="post">
        </c:if>
        <c:if test="${employee == null}">
            <form action="insert" method="post">
        </c:if>
        <table border="1" cellpadding="5">
            <caption>
                <h3>
                    <c:if test="${employee != null}">
                        Edit Employee
                    </c:if>
                    <c:if test="${employee == null}">
                        Add New Employee
                    </c:if>
                </h3>
            </caption>
                <c:if test="${employee != null}">
                    <input type="hidden" name="id" value="<c:out value='${employee.id}' />" />
                </c:if>
            <tr>
                <th>Name: </th>
                <td>
                    <input type="text" name="name" size="45"
                            value="<c:out value='${employee.name}' />"
                        />
                </td>
            </tr>
            <tr>
                <th>Position: </th>
                <td>
                    <input type="text" name="position" size="45"
                            value="<c:out value='${employee.position}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Phone: </th>
                <td>
                    <input type="text" name="phone" size="45"
                            value="<c:out value='${employee.phone}' />"
                    />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <form action="<%=request.getContextPath()%>/insert">
                        <input type="submit" value="Save" />
                    </form>
                </td>
            </tr>
        </table>
        </form>
    </div>
</body>
</html>