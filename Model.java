package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dbutil.Dbconn;
import entity.User;

public class Model {
    private Connection conn = null;
    private PreparedStatement pstmt = null;
    private ResultSet rs = null;

    // 添加用户
    public boolean addUser(User user) {
        String sql = "INSERT INTO user(username, password, email, phone) VALUES(?,?,?,?)";
        boolean flag = false;
        try {
            conn = Dbconn.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, user.getUsername());
            pstmt.setString(2, user.getPassword());
            pstmt.setString(3, user.getEmail());
            pstmt.setString(4, user.getPhone());
            int count = pstmt.executeUpdate();
            if (count > 0) flag = true;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Dbconn.close(conn, pstmt);
        }
        return flag;
    }

    // 更新用户
    public boolean updateUser(User user) {
        String sql = "UPDATE user SET username=?, password=?, email=?, phone=? WHERE id=?";
        boolean flag = false;
        try {
            conn = Dbconn.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, user.getUsername());
            pstmt.setString(2, user.getPassword());
            pstmt.setString(3, user.getEmail());
            pstmt.setString(4, user.getPhone());
            pstmt.setInt(5, user.getId());
            int count = pstmt.executeUpdate();
            if (count > 0) flag = true;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Dbconn.close(conn, pstmt);
        }
        return flag;
    }

    // 删除用户
    public boolean deleteUser(int id) {
        String sql = "DELETE FROM user WHERE id=?";
        boolean flag = false;
        try {
            conn = Dbconn.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, id);
            int count = pstmt.executeUpdate();
            if (count > 0) flag = true;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Dbconn.close(conn, pstmt);
        }
        return flag;
    }

    // 根据ID查询单个用户
    public User getUserById(int id) {
        String sql = "SELECT * FROM user WHERE id=?";
        User user = null;
        try {
            conn = Dbconn.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, id);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                user = new User(
                    rs.getInt("id"),
                    rs.getString("username"),
                    rs.getString("password"),
                    rs.getString("email"),
                    rs.getString("phone")
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Dbconn.close(conn, pstmt, rs);
        }
        return user;
    }

    // 查询所有用户
    public List<User> getAllUsers() {
        String sql = "SELECT * FROM user";
        List<User> list = new ArrayList<>();
        try {
            conn = Dbconn.getConnection();
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                User user = new User(
                    rs.getInt("id"),
                    rs.getString("username"),
                    rs.getString("password"),
                    rs.getString("email"),
                    rs.getString("phone")
                );
                list.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Dbconn.close(conn, pstmt, rs);
        }
        return list;
    }
}
