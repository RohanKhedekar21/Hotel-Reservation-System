package com.example.demo.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;

import com.example.demo.model.Roomtypes;
@Service
public class RoomtypeDaoImpl implements RoomtypeDao {

	private JdbcTemplate jdbcTemplate;
	
	public RoomtypeDaoImpl(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public List<Roomtypes> roomtypeList() {
		List<Roomtypes> list = jdbcTemplate.query("select * from roomtype", new RowMapper<Roomtypes>() {

			@Override
			public Roomtypes mapRow(ResultSet rs, int rowNum) throws SQLException {
				Roomtypes roomtypes = new Roomtypes();
				
				roomtypes.setRoomtypeid(rs.getString("roomtypeid"));
				roomtypes.setRoomtype(rs.getString("roomtype"));
				
				return roomtypes;
			}
			
		});
		return list;
	}

}
