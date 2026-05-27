<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="entity.User" %>
<%@ page import="model.Model" %>
<html>
<head>
    <title>添加结果</title>
</head>
<body>
    <%
        request.setCharacterEncoding("UTF-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");

        User user = new User(username, password, email, phone);
        Model model = new Model();
        boolean flag = model.addUser(user);

        if (flag) {
            out.println("<script>alert('添加成功！');location.href='index.jsp';</script>");
        } else {
            out.println("<script>alert('添加失败！');history.back();</script>");
        }
    %>
</body>
</html>