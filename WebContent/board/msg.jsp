<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import="domain.Admin"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    String kind = (String)request.getAttribute("kind");
    boolean result = (Boolean)request.getAttribute("result");
    System.out.println("kind: " + kind + ", result: " + result);
%>
 
<script language="javascript"> 
	if("<%=kind%>" == "writeOk"){
		   if(<%=result%>){
			   alert("입력 성공!");
		   }else {
			   alert("입력 실패!");
		   }
	}else{
		   if(<%=result%>){
			   alert("수정 성공!");
		   }else {
			   alert("수정 실패!");
		   }
	}
	location.href="board.do";
	
</script>