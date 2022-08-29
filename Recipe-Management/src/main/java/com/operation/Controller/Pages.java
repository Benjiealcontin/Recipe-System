package com.operation.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;

import com.operation.Model.User;
import com.operation.Service.ImageRequest;
import com.operation.Service.Services;


@Controller
public class Pages {
	
	@Autowired
	private Services service;

	@RequestMapping("/")	
	public ModelAndView homepage() {
		return new ModelAndView("index");		
	}
	
	@RequestMapping("/Admin")	
	public ModelAndView Adminpage(HttpSession session) {
   	 List<User> datalist = service.showdata();
   	 session.setAttribute("data", datalist);
		return new ModelAndView("Admin");		
	}
	
	@RequestMapping("/login")
	public ModelAndView loginpage(@ModelAttribute("msg")String msg) {
		ModelAndView mv = new ModelAndView("login");
		mv.addObject("msg", msg);
		return mv;
		
	}
	@RequestMapping("/register")
	public ModelAndView registerpage(@ModelAttribute("msg2")String msg2) {
		ModelAndView mv = new ModelAndView("register");
		mv.addObject("msg2", msg2);
		return mv;
		
	}
	
	@RequestMapping("/userpage")
	public ModelAndView userpage() {
		return new ModelAndView("userpage");		
	}
	
	@RequestMapping("/changepassword")
	public ModelAndView changepasswordpage() {
		return new ModelAndView("Changepassword");		
	}
	
	@RequestMapping("/admin/allRecipes")
	public ModelAndView Recipes(HttpSession session) {
   	 List<com.operation.Model.Recipes> datalist = service.showrecipes();
   	 session.setAttribute("data", datalist);
   	 session.setAttribute("count", service.count());
   	 session.setAttribute("countrecipes", service.countRecipes());
		return new ModelAndView("AdminRecipes");		
	}
	
	@RequestMapping("t/{userID}/changeimage")
	public ModelAndView changeimagepage(@PathVariable("userID")int id, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		List<ImageRequest> imagelist = service.findByid(id);
		mv.addObject("userdata", id);
		session.setAttribute("userimages", imagelist);
		mv.setViewName("ChangeImage");
		return mv;		
	}
	
	
//	@RequestMapping("/makeRecipe/recipe")
//	public ModelAndView makerecipepage() {
//		return new ModelAndView("makerecipes");	
//	}

	
	@RequestMapping("/userpage/make/recipe")
	public ModelAndView makerecipepage() {
		return new ModelAndView("makerecipes");	
	}
	
	@RequestMapping("/cook/recipe")
	public ModelAndView checkrecipepage() {
		return new ModelAndView("checkrecipe");	
	}
	
	@RequestMapping("/user/showdata")
	public ModelAndView userrecipepage() {
		return new ModelAndView("UserRecipes");	
	}
	
	@RequestMapping("/user/editProfile")
	public ModelAndView editprofile() {
		return new ModelAndView("editProfile");	
	}
	
	@RequestMapping("/user/editRecipe")
	public ModelAndView editrecipes() {
		return new ModelAndView("EditRecipes");	
	}
	
	@RequestMapping("/verify")
	public ModelAndView verifypage(@ModelAttribute("error")String error) { 
	ModelAndView mv = new ModelAndView("VerifyCode");
	mv.addObject("error", error);
		return mv;		
	}
	
	//Recipes
	
	@RequestMapping("/Recipes/Pritong-isda")
	public ModelAndView Pritong_isda() {
		return new ModelAndView("Pritong-isda");	
	}
	
	@RequestMapping("/Recipes/Pritong-manok")
	public ModelAndView Pritong_manok() {
		return new ModelAndView("Pritong-manok");	
	}
	
	@RequestMapping("/Recipes/Kinilaw")
	public ModelAndView kinilaw() {
		return new ModelAndView("Kinilaw");	
	}
	
	@RequestMapping("/Recipes/Sugba-isda")
	public ModelAndView Sugba_isda() {
		return new ModelAndView("Sugba-isda");	
	}
	
	@RequestMapping("/Recipes/Sinigang")
	public ModelAndView Sinigang() {
		return new ModelAndView("Sinigang");	
	}
	
	@RequestMapping("/Recipes/Bulad-isda")
	public ModelAndView bulad_isda() {
		return new ModelAndView("Bulad-isda");	
	}
	
}
