package com.WYC.myapp.farming.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PublicController {
		
		//지역축제 화면이동
		@RequestMapping(value="festival")
		public String festival() {
			return "festival";
		}
		
		//로그인 화면이동
		@RequestMapping(value="login")
		public String login() {
			return "login";
		}
		
		//아이디 찾기 화면이동
		@RequestMapping(value="find_id")
		public String findId() {
			return "find_id";
		}
		
		//비밀번호 찾기 화면이동
		@RequestMapping(value="find_pw")
		public String findPw() {
			return "find_pw";
		}
		
		//회원가입 화면이동
		@RequestMapping(value="joinMember")
		public String joinMember() {
			return "joinMember";
		}
		
		//정책조회 화면이동
		@RequestMapping(value="serviceEsidence")
		public String serviceEsidence() {
			return "serviceEsidence";
		}
		
		//정책조회 세부정보 화면이동
		@RequestMapping(value="serviceEsidence_detail")
		public String serviceEsidenceDetail() {
			return "serviceEsidence_detail";
		}
		
}
