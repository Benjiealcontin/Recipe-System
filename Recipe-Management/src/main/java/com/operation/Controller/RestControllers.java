package com.operation.Controller;

import java.util.List;
import java.util.Objects;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.operation.Model.Recipes;
import com.operation.Model.User;
import com.operation.Model.UserImages;
import com.operation.Service.RequestData;
import com.operation.Service.Services;

@RestController
public class RestControllers {

	@Autowired
	private Services service;
	
	//Update Recipes
	@RequestMapping("/api/updaterecipes")
	@ResponseBody
	public ModelAndView updateRecipes(
			@RequestParam("userId")int userId,
			@RequestParam("repid")int repid,
			@RequestParam("recipename") String recipename,
			@RequestParam("meat")String meat,
			@RequestParam("vegetables")String vegetables,
			@RequestParam("spicesAndherbs")String spicesAndherbs,
			@RequestParam("procedures")String procedure) {
		
		 ModelAndView mav = new ModelAndView("redirect:/t/"+userId+"/user/recipe");
		Recipes u = service.getdataByid(repid);
		u.setRecipename(recipename);
		u.setMeat(meat);
		u.setVegetables(vegetables);
		u.setSpicesAndherbs(spicesAndherbs);
		u.setProcedures(procedure);
		service.Updatedata(u);
		
		return mav;
		
	}

	//Update Profile Picture
	@RequestMapping("/api/{userID}/images")
	@ResponseBody
	public ModelAndView updatepicture(
			@RequestParam("userfk") int userfk,
			@PathVariable("userID") int id,
			@RequestParam("file")MultipartFile file,
			HttpSession session) {
		 ModelAndView mav = new ModelAndView("redirect:/t/"+id+"/user/editProfile");
		 UserImages image = service.getdataByuserfk(id);
		 image.setImage(file);		 
		 service.updatepicture(image);
		 session.setAttribute("userimages", image);
		return mav;
		
	}
	
	
	//Delete Recipes
	@RequestMapping("/user/{userID}/deleteRecipes")
	public ModelAndView deleteRecipes(@RequestParam("id") int repid,@PathVariable int userID) {
		ModelAndView mav = new ModelAndView("redirect:/t/"+userID+"/user/recipe");
		service.DeleteRecipe(repid);
		return mav;
		
	}
	
	//Change password
	@RequestMapping("/api/changepass")
	public ModelAndView changepassword(
			@RequestParam("userid")int userId,
			@RequestParam("password")String password,
			@RequestParam("newpassword")String newpassword,
			User user) {
		ModelAndView mv = new ModelAndView();
		User oauthUser = service.checkpassword(userId,password);
		if(Objects.nonNull(oauthUser)) {
			String msg = "Change Successfully";
			mv.addObject("msg", msg);
			User u = service.getdataByid1(userId);
			u.setPassword(newpassword);
			service.changepassword(u);
			mv.setViewName("Changepassword");
			return mv;
		}		
		String msg = "Failed to Change Password";
		mv.addObject("msg", msg);
		mv.setViewName("Changepassword");
		return mv;

		
	}
}
