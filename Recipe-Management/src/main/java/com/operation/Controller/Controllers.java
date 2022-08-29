package com.operation.Controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.operation.Model.Admin;
import com.operation.Model.Email;
import com.operation.Model.Recipes;
import com.operation.Model.User;
import com.operation.Model.UserImages;
import com.operation.Repository.RecipesRepo;
import com.operation.Repository.UserRepo;
import com.operation.Service.ImageRequest;
import com.operation.Service.RequestData;
import com.operation.Service.Services;

@Controller
public class Controllers {

	@Autowired
	private Services service;
	
	@Autowired
	private RecipesRepo repo;
	
	@Autowired
	private UserRepo userrepo;

	//Registration
	@PostMapping("/api/register")
	public String insertdata(@RequestParam("authcode")String code,@RequestParam("username")String username,@RequestParam("email")String email,@RequestParam("password")String password, @RequestParam("file")MultipartFile file,User user, HttpSession session,RedirectAttributes rd,ModelMap model ) {
		
		Email email1 = (Email) session.getAttribute("authcode");

		if (code.equals(email1.getCode())) {
			if(!file.isEmpty()) {
				service.AddUser(user);
				String data = service.findByUsername(username);
				int userfk = Integer.parseInt(data);
				service.insertimage(file, userfk);
				List<ImageRequest> imagelist = service.findByid(userfk);
				for(int i = 0; i < imagelist.size(); i++){
					imagelist.get(i).getImage();
				}
				session.setAttribute("userimages", imagelist);
				session.setAttribute("userID", data);
				return "redirect:/userpage";
			}else {
				service.AddUser(user);
				String data = service.findByUsername(username);
				String image = "/images/image.jpg";
				session.setAttribute("userID", data);
				session.setAttribute("userimages2", image);
				return "redirect:/userpage";
			}
		} else {
			String error = "Wrong Verification Code";
			rd.addFlashAttribute("error", error);
			return "redirect:/verify";
		}				
	}
	
	//login
    @PostMapping("api/login")
    public String login(@RequestParam("username")String username,@RequestParam("password")String password, User user, HttpSession session,RedirectAttributes rd ) {
     
     User oauthUser = service.login(user.getUsername(), user.getPassword());  
     Admin adminauth = service.adminlogin(username, password);
     System.out.print(oauthUser);
     if(Objects.nonNull(oauthUser)){ 	 
 		String data = service.findByUsername(username);
 		int id = Integer.parseInt(data);
 		List<ImageRequest> imagelist = service.findByid(id);
 		session.setAttribute("userimages", imagelist);
 		session.setAttribute("userID", data);		
 		return "redirect:/userpage"; 
     }else if(Objects.nonNull(adminauth)) {
    	 List<User> datalist = service.showdata();
    	 session.setAttribute("data", datalist);
    	 session.setAttribute("count", service.count());
    	 session.setAttribute("countrecipes", service.countRecipes());
    	 return "redirect:/Admin"; 
     }
    	 String msg = "Wrong Credentials!!";
    	 rd.addFlashAttribute("msg", msg);
    	 return "redirect:/login";   
     }
    
    
    
    //Insert recipes
    @PostMapping("/api/recipes")
    public String insertRecipes(@RequestParam("recipename")String recipename,@RequestParam("meat")String meat,
    		@RequestParam("vegetables")String vegetables,@RequestParam("spicesAndherbs")String spicesAndherbs,
    		@RequestParam("procedures")String procedures,@RequestParam("cp_fk")int cp_fk,
    		Recipes recipes,ModelMap model) {
    	service.InsertRecipes(recipes);
    	
    	List<String> meats = new ArrayList<String>();
    	meats.add(meat);
    	List<String> v = new ArrayList<String>();
    	v.add(vegetables);
    	List<String> s = new ArrayList<String>();
    	s.add(spicesAndherbs);
    	List<String> p = new ArrayList<String>();
    	p.add(procedures);
    	
    	model.addAttribute("recipename", recipename);
    	model.addAttribute("meat", meats);
    	model.addAttribute("vegetables", v);
    	model.addAttribute("spicesAndherbs", s);
    	model.addAttribute("procedures", p);
    	
    	return "checkrecipe";		
    }
    
//    //Insert Image
//    @PostMapping("/api/{userID}/images")
//    public String insertimage(@PathVariable("userID") int id, @RequestParam("file")MultipartFile file,@RequestParam("userfk")int userfk,ModelMap model) {   	
//    	List<User> list = service.findById(id);
//    	model.addAttribute("userdata", list);
//    	service.insertimage(file, userfk);
//		return "redirect:/t/"+id+"/user/editProfile";
//    	
//    }

    //Show data in Table by id
    @RequestMapping("/t/{userID}/user/recipe")
    public String showdataById(@PathVariable("userID")int cp_fk,ModelMap model,HttpSession session) {
    	List<RequestData> list = service.GetBycp_fk(cp_fk);
    	if(!list.isEmpty()) {
        	model.addAttribute("data", list);	
    		return "UserRecipes";
    	}else {
    		String image = "/images/image.jpg";
    		model.addAttribute("data", list);
    		session.setAttribute("userimages2", image);
    		return "UserRecipes";
    	}

    	
    }
    

	//Update
	@RequestMapping("/user/{userID}/editRecipes/")
	public String UpdateForm(@RequestParam("id") int id,@PathVariable int userID,ModelMap model) {
		List<RequestData> list = service.GetById(id);
		model.addAttribute("data", list);
		model.addAttribute("recipeId", id);
		model.addAttribute("userID", userID);
		return "EditRecipes";
		
	}
    
    //Edit Profile
	@RequestMapping("/t/{userID}/user/editProfile")
	public String EditProfile(@PathVariable("userID") int userfk,@PathVariable("userID") int id, ModelMap model, HttpSession session) {
		List<User> list = service.findById(id);
		List<ImageRequest> imagelist = service.findByid(userfk);
		if(!imagelist.isEmpty()) {
			model.addAttribute("userdata", list);
			session.setAttribute("userimages", imagelist);
			return "editProfile";	
		}else {
			String image = "/images/image.jpg";
			model.addAttribute("userdata", list);
			session.setAttribute("userimages2", image);
			session.setAttribute("userimages", imagelist);
			return "editProfile";	
		}
	
	}
    
    
    
	//Email Sender
	@PostMapping("/verify")
	public String verify(@RequestParam("username")String username,@RequestParam("email")String email
			,@RequestParam("password")String password,User user, 
			HttpSession session,RedirectAttributes rd) {
		
		
		List<User> exist = userrepo.findByusernameOrEmail(username,email);
		
		if(!(exist.size()>0)){
			String code = service.getRandom();

			// craete new user using all information
			Email user1 = new Email(username, email,code);

			// call the send email method
			boolean test = service.SendEmail(user1);

			
			// check if the email send successfully
			if (test) {
				
				session.setAttribute("authcode", user1);
				session.setAttribute("username", username);
				session.setAttribute("email", email);
				
				session.setAttribute("password", password);
				return "VerifyCode";
			}else {
				String msg = "Please try again later!!";
				rd.addFlashAttribute("msg2", msg);
				return "redirect:/register";
			}
		}
		String msg = "Failed to send verification email or Already Exist!!";
		rd.addFlashAttribute("msg3", msg);
		return "redirect:/register";
	
	}
      
    
    
    
    
    
    
    
    
    
    
    
    
//	// Response a data using Controller in JSON Type
//	// If no @ResponseBody you can't return DATA 
//	@GetMapping("/getall/{id}")
//	public @ResponseBody User getall(@PathVariable("id")int id) {		
//		return service.getbyid(id);
//	}
	
	
    
    }
