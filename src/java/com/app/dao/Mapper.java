/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.app.dao;

import com.app.pojo.User;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author amolw
 */
public class Mapper implements RowMapper<User> {
   public User mapRow(ResultSet rs, int rowNum) throws SQLException {
      User u = new User();
      u.setId(rs.getInt("id"));
      u.setPAN(rs.getString("PAN"));
        u.setName(rs.getString("name"));
       u.setAddress(rs.getString("address"));
       u.setDOB(rs.getString("DOB"));
      return u;
}
    
}
