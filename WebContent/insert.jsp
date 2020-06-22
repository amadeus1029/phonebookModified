<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="com.javaex.vo.PersonVo" %>
<%
    request.setCharacterEncoding("UTF-8"); //이거 안하면 문자 다 깨짐
    PhoneDao phoneDao = new PhoneDao();
    String name = request.getParameter("name");
    String hp = request.getParameter("hp");
    String company = request.getParameter("company");
    PersonVo personVo = new PersonVo(name,hp,company);
    phoneDao.personInsert(personVo);

    response.sendRedirect("./list.jsp");
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>전화번호 등록</title>
</head>
<body>
    <a href="./list.jsp">리스트 보기</a>
</body>
</html>
