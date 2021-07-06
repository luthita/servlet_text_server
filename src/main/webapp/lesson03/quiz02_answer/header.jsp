<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header class="d-flex align-items-center">
	<%-- 로고 영역 --%>
	<div class="logo">
		<h3><a class="text-success" href="list_template.jsp">Melong</a></h3>
	</div>
	
	<%-- 검색 영역 --%>
	<div class="search ml-5">
		<div class="search-bar">
			<form method="get" action="info_template.jsp">
				<div class="input-group">
					<input type="text" class="form-control" name ="search">
					<div class="input-group-append">
						<input type="submit"class="btn btn-info" value="검색">
					</div>
				</div>
			
			</form>
		</div>
	</div>
</header>