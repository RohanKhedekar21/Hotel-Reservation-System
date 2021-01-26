package com.example.demo.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;

import com.example.demo.model.Roombooks;

@Service
public class RoomBookDaoImpl implements RoomBookDao {

	private JdbcTemplate jdbcTemplate;
	
	public RoomBookDaoImpl(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	
	@Override
	public List<Roombooks> bookroomList(Roombooks roombook) {
		
		String checkindate = roombook.getCheckindate();
		String checkoutdate = roombook.getCheckoutdate();
		
		String sql = null;
		if(!checkindate.isEmpty() && !checkoutdate.isEmpty()) {
			sql = "select * from roombook where checkin >= '"+checkindate+"' AND checkout <= '"+checkoutdate+"'; ";
		}
		else if(!checkindate.isEmpty() && checkoutdate.isEmpty()) {
			sql = "select * from roombook where checkin >= "+checkindate+"; ";
		}
		else if(checkindate.isEmpty() && !checkoutdate.isEmpty()) {
			sql = "select * from roombook where checkout <= "+checkoutdate+"; ";
		}
			
			List<Roombooks> list = jdbcTemplate.query(sql, new RowMapper<Roombooks>() {

				@Override
				public Roombooks mapRow(ResultSet rs, int rowNum) throws SQLException {
					Roombooks roombooks = new Roombooks();
					
					int uid = rs.getInt("userid");
					//username(rs.getInt("userid"));
					//System.out.println(rs.getInt("userid"));
					String sql = "select UserName from user where Userid="+uid+";";
					List<Roombooks> list2 = jdbcTemplate.query(sql,new RowMapper<Roombooks>() {

						@Override
						public Roombooks mapRow(ResultSet rs, int rowNum) throws SQLException {
							//Roombooks roombookss = new Roombooks();
							
							roombooks.setUsername(rs.getString("UserName"));
							//System.out.println(rs.getString("UserName"));
							
							return roombooks;
						}
						
					});
					
					
					roombooks.setRoomname(rs.getString("roomname"));
					roombooks.setCheckindate(rs.getString("checkin"));
					roombooks.setCheckoutdate(rs.getString("checkout"));
					
					return roombooks;
				}
				
			});
			return list;
			
	}
	
}
