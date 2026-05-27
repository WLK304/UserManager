<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.Model" %>
<html>
<head>
    <title>删除结果</title>
</head>
<body>
    <%
        int id = Integer.parseInt(request.getParameter("id"));
        Model model = new Model();
        boolean flag = model.deleteUser(id);

        if (flag) {
            out.println("<script>alert('删除成功！');location.href='allShow.jsp';</script>");
        } else {
            out.println("<script>alert('删除失败！');history.back();</script>");
        }
    %>
</body>
</html>