<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="entity.User" %>
<%@ page import="model.Model" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <title>用户列表</title>
    <style>
        *{margin:0;padding:0;box-sizing:border-box;font-family:"Microsoft YaHei",sans-serif;}
        body{background:#eef5fb;padding:40px;}
        .container{max-width:1000px;margin:0 auto;background:white;padding:30px;border-radius:16px;box-shadow:0 8px 30px rgba(0,80,180,0.1);}
        h2{color:#165DFF;text-align:center;margin-bottom:25px;}
        table{width:100%;border-collapse:collapse;}
        th{background:#165DFF;color:white;padding:14px;text-align:left;}
        td{padding:14px;border-bottom:1px solid #eee;}
        a{padding:6px 12px;background:#165DFF;color:white;border-radius:4px;text-decoration:none;margin-right:4px;font-size:14px;}
        a.del{background:#FF4D4F;}
        .back{display:inline-block;margin-top:20px;padding:10px 20px;background:#165DFF;color:white;border-radius:6px;text-decoration:none;}
    </style>
</head>
<body>
    <div class="container">
        <h2>所有用户列表</h2>
        <table>
            <tr>
                <th>ID</th><th>用户名</th><th>邮箱</th><th>电话</th><th>操作</th>
            </tr>
            <%
                Model m = new Model();
                List<User> list = m.getAllUsers();
                for(User u : list){
            %>
            <tr>
                <td><%=u.getId()%></td>
                <td><%=u.getUsername()%></td>
                <td><%=u.getEmail()%></td>
                <td><%=u.getPhone()%></td>
                <td>
                    <a href="showUser.jsp?id=<%=u.getId()%>">查看</a>
                    <a href="update.jsp?id=<%=u.getId()%>">编辑</a>
                    <a href="dele.jsp?id=<%=u.getId()%>" class="del">删除</a>
                </td>
            </tr>
            <%}%>
        </table>
        <div style="text-align:center;">
            <a href="index.jsp" class="back">返回首页</a>
        </div>
    </div>
</body>
</html>