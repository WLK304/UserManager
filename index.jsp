<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户综合管理系统</title>
    <style>
        *{margin:0;padding:0;box-sizing:border-box;font-family: "Microsoft YaHei",sans-serif;}
        body{background:#eef5fb;display:flex;justify-content:center;align-items:center;height:100vh;flex-direction:column;}
        .container{background:white;padding:50px 70px;border-radius:16px;box-shadow:0 8px 30px rgba(0,80,180,0.1);text-align:center;}
        h1{color:#165DFF;margin-bottom:30px;font-size:28px;}
        .btn{display:inline-block;margin:12px;padding:14px 32px;background:#165DFF;color:white;text-decoration:none;border-radius:8px;font-size:16px;transition:0.3s;}
        .btn:hover{background:#0E42D2;transform:translateY(-2px);}
    </style>
</head>
<body>
    <div class="container">
        <h1>用户综合管理系统</h1>
        <a href="insert.jsp" class="btn">添加用户</a>
        <a href="allShow.jsp" class="btn">用户列表</a>
        <a href="search.jsp" class="btn">查询用户</a>
    </div>
</body>
</html>