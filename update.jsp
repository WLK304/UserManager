<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="entity.User" %>
<%@ page import="model.Model" %>
<html>
<head>
    <title>修改用户</title>
    <style>
        *{margin:0;padding:0;box-sizing:border-box;font-family:"Microsoft YaHei",sans-serif;}
        body{background:#eef5fb;display:flex;justify-content:center;align-items:center;height:100vh;}
        .card{background:white;padding:40px;border-radius:16px;box-shadow:0 8px 30px rgba(0,80,180,0.1);width:380px;}
        h2{color:#165DFF;text-align:center;margin-bottom:25px;}
        input{width:100%;padding:12px 15px;margin:10px 0;border:1px solid #ddd;border-radius:8px;font-size:15px;}
        input:focus{border-color:#165DFF;outline:none;}
        button{width:100%;padding:13px;background:#165DFF;color:white;border:none;border-radius:8px;font-size:16px;margin-top:10px;cursor:pointer;}
        button:hover{background:#0E42D2;}
    </style>
</head>
<body>
    <%
        int id = Integer.parseInt(request.getParameter("id"));
        Model model = new Model();
        User user = model.getUserById(id);
    %>
    <div class="card">
        <h2>修改用户信息</h2>
        <form action="updateShow.jsp" method="post">
            <input type="hidden" name="id" value="<%=user.getId()%>">
            <input type="text" name="username" value="<%=user.getUsername()%>" required>
            <input type="password" name="password" value="<%=user.getPassword()%>" required>
            <input type="email" name="email" value="<%=user.getEmail()%>">
            <input type="text" name="phone" value="<%=user.getPhone()%>">
            <button type="submit">保存修改</button>
        </form>
    </div>
</body>
</html>