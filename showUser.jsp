<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="entity.User" %>
<%@ page import="model.Model" %>
<html>
<head>
    <title>用户详情</title>
    <style>
        *{margin:0;padding:0;box-sizing:border-box;font-family:"Microsoft YaHei",sans-serif;}
        body{background:#eef5fb;display:flex;justify-content:center;align-items:center;height:100vh;flex-direction:column;}
        .card{background:white;padding:40px;border-radius:16px;box-shadow:0 8px 30px rgba(0,80,180,0.1);width:450px;}
        h2{color:#165DFF;text-align:center;margin-bottom:25px;}
        table{width:100%;border-collapse:collapse;}
        td{padding:14px;border-bottom:1px solid #eee;font-size:15px;}
        .opts{margin-top:25px;text-align:center;}
        .opts a{margin:0 10px;padding:10px 20px;background:#165DFF;color:white;border-radius:6px;text-decoration:none;}
        .opts a.del{background:#FF4D4F;}
    </style>
</head>
<body>
    <%
        int id = Integer.parseInt(request.getParameter("id"));
        Model model = new Model();
        User user = model.getUserById(id);
        if(user==null){out.println("<script>alert('用户不存在');location.href='search.jsp';</script>");return;}
    %>
    <div class="card">
        <h2>用户详情</h2>
        <table>
            <tr><td>ID</td><td><%=user.getId()%></td></tr>
            <tr><td>用户名</td><td><%=user.getUsername()%></td></tr>
            <tr><td>密码</td><td><%=user.getPassword()%></td></tr>
            <tr><td>邮箱</td><td><%=user.getEmail()%></td></tr>
            <tr><td>电话</td><td><%=user.getPhone()%></td></tr>
        </table>
        <div class="opts">
            <a href="update.jsp?id=<%=user.getId()%>">编辑</a>
            <a href="dele.jsp?id=<%=user.getId()%>" class="del">删除</a>
            <a href="index.jsp">首页</a>
        </div>
    </div>
</body>
</html>