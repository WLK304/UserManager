<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="entity.User" %>
<%@ page import="model.Model" %>
<html>
<head>
    <title>更新结果</title>
</head>
<body>
    <%
        request.setCharacterEncoding("UTF-8");
        int id = Integer.parseInt(request.getParameter("id"));
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");

        User user = new User(id, username, password, email, phone);
        Model model = new Model();
        boolean flag = model.updateUser(user);

        if (flag) {
            out.println("<script>alert('更新成功！');location.href='allShow.jsp';</script>");
        } else {
            out.println("<script>alert('更新失败！');history.back();</script>");
        }
    %>
</body>
</html>