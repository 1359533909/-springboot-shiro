package com.mxl.demo.controller;

import java.util.List;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.ExcessiveAttemptsException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class DemoController {
	@RequestMapping("/")
	public String toDemo() {
		return "sign-in";
	}
	@RequestMapping("/toLogin")
	public String toLogin() {
		return "sign-in";
	}
	@RequestMapping("/Unauthor")
	public String Unauthor() {
		return "Unauthor";
	}
	
//	登录
	@RequestMapping(value="/login")
	public String Login(String username,String password,Model model) {
		Subject subject = SecurityUtils.getSubject();
		UsernamePasswordToken token=new UsernamePasswordToken(username,password);
		try {
			subject.login(token);
			//加载评论区数据
			model.addAttribute("username", username);
			return "/user/index";
		} catch (UnknownAccountException e) {
			// 用户名不存在
			model.addAttribute("msg", "用户名不存在!");
			return "sign-in";
		}catch (IncorrectCredentialsException e) {
			// TODO: handle exception
			model.addAttribute("msg", "密码不正确!");
			return "sign-in";
		}catch(ExcessiveAttemptsException e){
			model.addAttribute("msg", "登录次数已经超过限制，请一分钟后重试");
			return "sign-in";
		}
	}
}
