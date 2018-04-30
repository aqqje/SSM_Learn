<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% 
	pageContext.setAttribute("APP_PATH", request.getContextPath()); 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${APP_PATH }/static/js/jquery-1.12.4.min.js"></script>
<link href="${APP_PATH }/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
<script src="${APP_PATH }/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<title>员工列表</title>
</head>
<body>	
	<div class="container">
		<!-- 标题 -->
		<div class="row">
			<div class="col-md-12">
				<h1>SSM-CRUD</h1>
			</div>
		</div>
		<!-- 按钮,新增,删除 -->
		<div class="row">
			<div class="col-md-2 col-md-offset-10">
				<button class="btn btn-primary">新增</button>
				<button class="btn btn-danger">删除</button>
			</div>
		</div>
		<!-- 表单信息 -->
		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover">
					<tr>
						<tr>
						<th>#</th>
						<th>empName</th>
						<th>gender</th>
						<th>email</th>
						<th>deptName</th>
						<th>操作</th>
					</tr>
					<c:forEach items="${info.list }" var="emp">
						<tr>
						<td>${emp.empId }</td>
						<td>${emp.empName }</td>
						<td>${emp.gender=="M"?"男":"女" }</td>
						<td>${emp.email }</td>
						<td>${emp.department.deptName }</td>
						<td>
							<button class="btn btn-info btn-sm">
								<span class="glyphicon glyphicon-pencil" aria-hidden="true">&nbsp;编辑</span>
							</button>
							<button class="btn btn-danger btn-sm">
								<span class="glyphicon glyphicon-trash" aria-hidden="true">&nbsp;删除 </span>
							</button>
						</td>
					</tr>
					</c:forEach>
				</table>
			</div>
		</div>
		<!-- 分页 -->
		<div class="row">
			<!-- 分页信息 -->
			<div class="col-md-6">
			当前${info.pageNum }页,总${info.pages }页,总 ${info.total } 条记录
			</div>
			<!-- 分页条 -->
			<div class="col-md-6">
				<nav aria-label="Page navigation">
				  <ul class="pagination">
				  	<li><a href="${APP_PATH }/emps?pn=1">首页</a></li>
				  	<c:if test="${info.hasPreviousPage }">
						<li><a href="${APP_PATH }/emps?pn=${info.pageNum-1}"
							aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
						</a></li>
					</c:if>
				    <c:forEach items="${info.navigatepageNums }" var="pn_nums">
				    	<c:if test="${pn_nums == info.pageNum }">
							<li class="active"><a href="#">${pn_nums }</a></li>
						</c:if>
						<c:if test="${pn_nums != info.pageNum }">
							<li><a href="${APP_PATH }/emps?pn=${pn_nums }">${pn_nums }</a></li>
						</c:if>
				    </c:forEach>
				    <c:if test="${info.hasNextPage }">
						<li><a href="${APP_PATH }/emps?pn=${info.pageNum+1 }"
							aria-label="Next"> <span aria-hidden="true">&raquo;</span>
						</a></li>
					</c:if>
				    <li><a href="${APP_PATH }/emps?pn=${info.pages } ">尾页</a></li>
				  </ul>
				</nav>
			</div>
		</div>
	</div>
</body>
</html>