<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加用户</title>
    <style>
        *{margin:0;padding:0;box-sizing:border-box;font-family:"Microsoft YaHei",sans-serif;}
        body{background:#eef5fb;display:flex;justify-content:center;align-items:center;height:100vh;}
        .card{background:white;padding:40px;border-radius:16px;box-shadow:0 8px 30px rgba(0,80,180,0.1);width:380px;}
        h2{color:#165DFF;text-align:center;margin-bottom:25px;}
        input{width:100%;padding:12px 15px;margin:10px 0;border:1px solid #ddd;border-radius:8px;font-size:15px;}
        input:focus{border-color:#165DFF;outline:none;}
        button{width:100%;padding:13px;background:#165DFF;color:white;border:none;border-radius:8px;font-size:16px;margin-top:10px;cursor:pointer;transition:0.3s;}
        button:hover{background:#0E42D2;}
    </style>
</head>
<body>
    <div class="card">
        <h2>添加新用户</h2>
        <form action="insertShow.jsp" method="post">
            <input type="text" name="username" placeholder="用户名" required>
            <input type="password" name="password" placeholder="密码" required>
            <input type="email" name="email" placeholder="邮箱">
            <input type="text" name="phone" placeholder="电话">
            <button type="submit">确认添加</button>
        </form>
    </div>
</body>
</html>