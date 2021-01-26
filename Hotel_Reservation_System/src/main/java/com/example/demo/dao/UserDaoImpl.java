package com.example.demo.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.example.demo.model.User;

@Service
public class UserDaoImpl implements UserDao {

	private JdbcTemplate jdbcTemplate;
	
	public UserDaoImpl(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public int registerUser(User user) {
		
		try {
			
			String sql = "select UserEmail from user where UserEmail=? ";
			String sql2 = "insert into user(UserName,UserEmail,UserMobile,UserPassword) values(?,?,?,?)";
			
			List<String> users = jdbcTemplate.queryForList(sql, new Object[] { user.getEmail() },String.class);
			if (users.isEmpty()) {
				
				int counter = jdbcTemplate.update(sql2, new Object[] { user.getName(), user.getEmail(), user.getNumber(), user.getPassword() });
				return counter;
				
			} else {
				return 0;
			}
			
		}catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
		
	}

	@Override
	public String UserLogin(User user) {
		String sql = "select UserName from user where UserMobile=? and UserPassword=?";
		try {

			String username = jdbcTemplate.queryForObject(sql, new Object[] {
					user.getNumber(), user.getPassword() }, String.class);

			return username;
			
		} catch (Exception e) {
			return null;
		}
		
		
	}
	
}
