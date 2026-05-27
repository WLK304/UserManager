package dbutil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Dbconn {
    // 适配 mysql-connector-j-8.4.0 的驱动类名
    private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
    // 适配 MySQL 8.x 的 URL，带时区参数
    private static final String URL = "jdbc:mysql://localhost:3306/user_db?useSSL=false&characterEncoding=utf8&serverTimezone=UTC";
    // 你的 MySQL 账号密码
    private static final String USER = "root";
    private static final String PASSWORD = "xsq!@123";

    // 获取数据库连接
    public static Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName(DRIVER);
            conn = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println("驱动加载失败！");
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("数据库连接失败！");
        }
        return conn;
    }

    // 关闭资源（带 ResultSet）
    public static void close(Connection conn, PreparedStatement pstmt, ResultSet rs) {
        try {
            if (rs != null) rs.close();
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // 关闭资源（不带 ResultSet）
    public static void close(Connection conn, PreparedStatement pstmt) {
        close(conn, pstmt, null);
    }
}
