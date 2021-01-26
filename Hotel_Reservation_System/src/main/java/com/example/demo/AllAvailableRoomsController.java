package com.example.demo;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.RoomBookDao;
import com.example.demo.dao.RoomDao;
import com.example.demo.dao.RoomtypeDao;
import com.example.demo.model.Roombooks;
import com.example.demo.model.Rooms;
import com.example.demo.model.Roomtypes;

@Controller
public class AllAvailableRoomsController {

	@Autowired
	private RoomDao roomDao;
	@Autowired
	private RoomtypeDao roomtypedao;
	@Autowired
	private RoomBookDao roombookdao;
	
	@RequestMapping("/AllAvailableRooms")
	public ModelAndView listroooms(ModelAndView model) throws IOException{
		
		List<Rooms> listrooms = roomDao.roomList();
		model.addObject("listRooms", listrooms);
		model.setViewName("AllAvailableRooms.jsp");
		
		return model;
		
	}
	
	@RequestMapping("/	")
	public ModelAndView listrooms(ModelAndView model) throws IOException{
		
		List<Rooms> listrooms = roomDao.roomList();
		model.addObject("listRooms",listrooms);
		model.setViewName("adminroom.jsp");
		
		return model;
	}
	
	@RequestMapping("/Adminroomtype")
	public ModelAndView listroomtype(ModelAndView model) throws IOException{
		
		List<Roomtypes> listroomtype = roomtypedao.roomtypeList();
		model.addObject("listRoomtype",listroomtype);
		model.setViewName("adminroomtype.jsp");
		
		return model;
		
	}
	
	@RequestMapping("/ReportContent")
	public ModelAndView ReportContent(@RequestParam("checkin") String checkindate,@RequestParam("checkout") String checkoutdate) throws IOException{
		
		ModelAndView model = new ModelAndView();
		
		Roombooks roombook = new Roombooks();
		roombook.setCheckindate(checkindate);
		roombook.setCheckoutdate(checkoutdate);
		
		List<Roombooks> report = roombookdao.bookroomList(roombook);
		model.addObject("Report",report);
		model.setViewName("ReportContent.jsp");
		
		return model;
		
	}
}
