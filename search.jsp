<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询用户</title>
    <style>
        *{margin:0;padding:0;box-sizing:border-box;font-family:"Microsoft YaHei",sans-serif;}
        body{background:#eef5fb;display:flex;justify-content:center;align-items:center;height:100vh;flex-direction:column;}
        .card{background:white;padding:40px;border-radius:16px;box-shadow:0 8px 30px rgba(0,80,180,0.1);width:380px;text-align:center;}
        h2{color:#165DFF;margin-bottom:25px;}
        input{width:100%;padding:12px 15px;margin:10px 0;border:1px solid #ddd;border-radius:8px;}
        button{padding:12px 30px;background:#165DFF;color:white;border:none;border-radius:8px;margin-top:10px;cursor:pointer;}
        button:hover{background:#0E42D2;}
        .back{margin-top:20px;color:#165DFF;text-decoration:none;}
    </style>
</head>
<body>
    <div class="card">
        <h2>根据ID查询用户</h2>
        <form action="showUser.jsp" method="get">
            <input type="number" name="id" placeholder="请输入用户ID" required>
            <button type="submit">立即查询</button>
        </form>
        <a href="index.jsp" class="back">返回首页</a>
    </div>
</body>
</html>