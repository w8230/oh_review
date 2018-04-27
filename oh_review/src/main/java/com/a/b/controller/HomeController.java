package com.a.b.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
@Controller
@SessionAttributes("login_member")
public class HomeController {
	// 단순 페이지 이동
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "index";
	}	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout() {
		
		return "alert/logout";
	}
	@RequestMapping(value="/join_step1", method=RequestMethod.GET)
	public String join_step1() {
		return "join/join_step1";
	}
	@RequestMapping(value="/join_step2", method=RequestMethod.GET)
	public String join_step2() {
		return "join/join_step2";
	}
	@RequestMapping(value="/admin_index", method=RequestMethod.GET)
	public String admin_index() {
		return "admin/admin_index";
	}
	@RequestMapping(value="/admin_table", method=RequestMethod.GET)
	public String admin_table() {
		return "admin/admin_table";
	}
	@RequestMapping(value="/find_pw", method=RequestMethod.GET)
	public String find_pw() {
		return "find/find_pw";
	}
	@RequestMapping(value="/find_id", method=RequestMethod.GET)
	public String find_id() {
		return "find/find_id";
	}
	@RequestMapping(value="/cts_main", method=RequestMethod.GET)
	public String cts_main() {
		return "contact/cts_main";
	}
}
