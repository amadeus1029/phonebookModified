<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="com.javaex.vo.PersonVo" %>
<%
    PhoneDao phoneDao = new PhoneDao();
    int personId = Integer.parseInt(request.getParameter("personId"));
    String name = phoneDao.getPerson(personId).getName();
    String hp = phoneDao.getPerson(personId).getHp();
    String company = phoneDao.getPerson(personId).getCompany();


%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>전화번호 등록</title>
</head>
<body>
    <h1>전화번호 수정폼</h1>
    <form action="./update.jsp" method="post">
        <span>이름</span><input type="text" name="name" value="<%=name%>">
        <span>전화번호</span><input type="text" name="hp" value="<%=hp%>">
        <span>회사번호</span><input type="text" name="company" value="<%=company%>">
        <input type="hidden" name="personId" value="<%=personId%>">
        <button type="submit" style="display: block;width: 60px;height: 25px;font-size: 20px;margin-top:20px;">수정</button>
        <a href="./list.jsp">리스트 보기</a>
    </form>
</body>
</html>
