package com.example.demo.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;

import com.example.demo.model.Rooms;

@Service
public class RoomDaoImpl implements RoomDao {

	private JdbcTemplate jdbcTemplate;
	
	public RoomDaoImpl(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public List<Rooms> roomList() {
		List<Rooms> list = jdbcTemplate.query("select * from rooms", new RowMapper<Rooms>() {

			@Override
			public Rooms mapRow(ResultSet rs, int rowNum) throws SQLException {
				Rooms rooms = new Rooms();
				
				rooms.setRoomname(rs.getString("room_name"));
				rooms.setRoomtype(rs.getString("room_type"));
				rooms.setNumberofchild(rs.getString("numberofchild"));
				rooms.setNumberofadult(rs.getString("numberofadult"));
				rooms.setRoomprice(rs.getString("room_price"));
				rooms.setRoomid(rs.getString("roomid"));
				rooms.setRoomcapacity(rs.getString("room_capacity"));
				
				return rooms;
			}
			
		});
		return list;
	}

	
}
