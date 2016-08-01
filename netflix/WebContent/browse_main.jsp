<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="login.css" />
<link rel="stylesheet" href="login_table.css" />
<jsp:include page="login_top.jsp" />
<jsp:include page="login_header.jsp" /> 
<div class="box">
		<h3>GoF 인기동영상 </h3>
		<table id="popvideo">
		<tr>
			<td ><img src="brakingbad.jpg" alt="" style="width:240px;height:150px;"></td>
			<td ><img src="dexter.jpg" alt="" style="width:240px;height:150px;"></td>
			<td ><img src="hungu.jpg" alt="" style="width:240px;height:150px;"></td>
			<td ><img src="houseof.jpg" alt="" style="width:240px;height:150px;"></td>
			<td ><img src="kimyhan.jpg" alt="" style="width:240px;height:150px;"></td>
		</tr>
		</table>
		<h3>신규 동영상 </h3>
		<table id="newvideo">
		<tr>
			<td ><img src="agassy.jpg" alt="" style="width:240px;height:150px;"></td>
			<td ><img src="goksung.jpg" alt="" style="width:240px;height:150px;"></td>
			<td ><img src="independenceday.jpg" alt="" style="width:240px;height:150px;"></td>
			<td ><img src="nosecuret.jpg" alt="" style="width:240px;height:150px;"></td>
			<td ><img src="tric.jpg" alt="" style="width:240px;height:150px;"></td>
		</tr>
		</table>
		<h3>내 동영상목록 </h3>
		<table id="myvideo">
		<tr>
			<td ><img src="matrix.jpg" alt="" style="width:240px;height:150px;"></td>
			<td ><img src="matrix2.jpg" alt="" style="width:240px;height:150px;"></td>
			<td ><img src="matrix3.jpg" alt="" style="width:240px;height:150px;"></td>
			<td ><img src="jukyuk.jpg" alt="" style="width:240px;height:150px;"></td>
			<td ><img src="davilsee.jpg" alt="" style="width:240px;height:150px;"></td>
		</tr>
		</table>
	</div>	
<jsp:include page="browse_footer.jsp" />
<jsp:include page="login_end.jsp" /> 