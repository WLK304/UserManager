<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>删除确认</title>
    <style>
        *{margin:0;padding:0;box-sizing:border-box;font-family:"Microsoft YaHei",sans-serif;}
        body{background:#eef5fb;display:flex;justify-content:center;align-items:center;height:100vh;}
        .card{background:white;padding:45px;border-radius:16px;box-shadow:0 8px 30px rgba(0,80,180,0.1);text-align:center;}
        h2{color:#FF4D4F;margin-bottom:25px;}
        .btn{padding:12px 28px;margin:10px;border-radius:8px;text-decoration:none;display:inline-block;}
        .yes{background:#FF4D4F;color:white;}
        .no{background:#165DFF;color:white;}
    </style>
</head>
<body>
    <% int id = Integer.parseInt(request.getParameter("id")); %>
    <div class="card">
        <h2>确定删除该用户？</h2>
        <p style="margin-bottom:25px;font-size:16px;">用户ID：<%=id%></p>
        <a href="deleShow.jsp?id=<%=id%>" class="btn yes">确认删除</a>
        <a href="allShow.jsp" class="btn no">取消</a>
    </div>
</body>
</html>