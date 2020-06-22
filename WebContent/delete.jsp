<%@ page import="com.javaex.dao.PhoneDao" %>
<%
    PhoneDao phoneDao = new PhoneDao();
    int personId = Integer.parseInt(request.getParameter("personId"));
    phoneDao.personDelete(personId);

    response.sendRedirect("./list.jsp");
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

