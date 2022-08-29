package com.operation.Service;

import java.io.IOException;
import java.util.Base64;
import java.util.List;
import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.operation.Model.Admin;
import com.operation.Model.Email;
import com.operation.Model.Recipes;
import com.operation.Model.User;
import com.operation.Model.UserImages;
import com.operation.Repository.AdminRespository;
import com.operation.Repository.ImageRespo;
import com.operation.Repository.RecipesRepo;

import com.operation.Repository.UserRepo;

@Service
public class Services {

	
	@Autowired
	private UserRepo Userrepo;
	@Autowired
	private RecipesRepo recirepo;
	@Autowired
	private ImageRespo imagerepo;
	@Autowired
	private AdminRespository adminrepo;
	
	
	//Insert Data
	public User AddUser(User user) {
		return Userrepo.save(user);	
	}
	
	//Insert Recipes data
	public Recipes InsertRecipes(Recipes recipes) {
		return recirepo.save(recipes);
	}
	
	//Insert image
	public UserImages insertimage(MultipartFile file,int userfk) {
		UserImages u = new UserImages();
		String fileName = StringUtils.cleanPath(file.getOriginalFilename());
		if(fileName.contains(".."))
		{
			System.out.println("not a a valid file");
		}
		try {
			u.setImage(Base64.getEncoder().encodeToString(file.getBytes()));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		u.setUserfk(userfk);
		return imagerepo.save(u);
	
	}
	
	//Request data for table
	public List<RequestData> GetBycp_fk(int cp_fk){
		return recirepo.GetBycp_fk(cp_fk);
		
	}
	
	//Request data for Update
	public List<RequestData> GetById(int id){
		return recirepo.GetById(id);
		
	}
	
	//find by username
	public String findByUsername(String username) {
		return Userrepo.findByusername(username);
		
	}
	
	//find by Id for Edit Profile
	public List<User> findById(int id) {
		return Userrepo.findByid(id);
	}
	
	//find by Id for Image Profile
	public List<ImageRequest> findByid(int userfk) {
		return imagerepo.findByid(userfk);
	}
	
	//find by id For Update
	public Recipes  getdataByid(int repid) {
		return recirepo.findByrepid(repid);
		
	}
	
	//find by userfk For picture Update 
	public UserImages  getdataByuserfk(int userfk) {
		return imagerepo.findByuserfk(userfk);
		
	}
	
	
	//Update recipes
	public Recipes Updatedata(Recipes recipe) {
		Recipes r = recirepo.findByrepid(recipe.getRepid());
		r.setRecipename(recipe.getRecipename());
		r.setMeat(recipe.getMeat());
		r.setVegetables(recipe.getVegetables());
		r.setSpicesAndherbs(recipe.getSpicesAndherbs());
		r.setProcedures(recipe.getProcedures());
		return recirepo.save(r);
		
	}
	
	//Update profile picture
	public UserImages updatepicture(UserImages image) {
		UserImages i = imagerepo.findByuserfk(image.getUserfk());
		i.setImage(image.getImage());
		return imagerepo.save(i);	
	}
	
	//Delete
	public String DeleteRecipe(int repid) {
		recirepo.deleteById(repid);
		return "deleted";
		
	}
	
	//login
	
	  public User login(String username, String password) {
		  User user = Userrepo.findByUsernameAndPassword(username, password);
		   return user;
		  }
	  
	  // Admin login
	  public Admin adminlogin(String username, String password) {
		  Admin admin = adminrepo.findByUsernameAndPassword(username, password);
		  
		return admin;
		  
	  }
	  
	  //Count users and display to admin
	  public long count() {
		return Userrepo.count();
		  
	  }
	  
	//Count Recipes and display to admin
	  public long countRecipes() {
		return recirepo.count();
		  
	  }
	  
	  //Show data in admin page
	  
	  public List<User> showdata(){
		return (List<User>)Userrepo.findAll();
		  
	  }
	  
	  //Show recipes data in admin page
	  
	  public List<Recipes> showrecipes(){
		return (List<Recipes>)recirepo.findAll();
		  
	  }
	  
	  //Check if password is same in database
	  public User checkpassword(int id,String password) {
		User user = Userrepo.findByIdAndPassword(id, password);
		return user;
		  
	  }
	  
	  //Change Password
	  public User changepassword(User user) {
		  User u = Userrepo.findById(user.getId());
		  u.setPassword(user.getPassword());
		return Userrepo.save(u);
		  
	  }
	  
	  //find Id for Change password
		public User getdataByid1(int id) {
			return Userrepo.findById(id);
			
		}
	  
	  //Mail Sender
		public String getRandom() {
			Random rnd = new Random();
			int number = rnd.nextInt(999999);
			return String.format("%06d", number);
		}
		
		public boolean SendEmail(Email user) {
			boolean test = false;

			String toEmail = user.getEmail();
			String fromEmail = "benjiealcontin23@gmail.com";
			String password = "fdjcwkzyozcoefcq";

			try {

				// your host email smtp server details
				Properties pr = new Properties();
				pr.setProperty("mail.smtp.host", "smtp.gmail.com");
				pr.setProperty("mail.smtp.port", "587");
				pr.setProperty("mail.smtp.auth", "true");
				pr.setProperty("mail.smtp.starttls.enable", "true");
				pr.put("mail.smtp.socketFactory.port", "587");
				pr.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");

				// get session to authenticate the host email address and password
				Session session = Session.getInstance(pr, new Authenticator() {
					@Override
					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication(fromEmail, password);
					}
				});

				// set email message details
				Message mess = new MimeMessage(session);

				// set from email address
				mess.setFrom(new InternetAddress(fromEmail));
				// set to email address or destination email address
				mess.setRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));

				// set email subject
				mess.setSubject("User Email Verification");

				// set message text
				mess.setText("Registered successfully.Please verify your account using this code: " + user.getCode());
				// send the message
				Transport.send(mess);

				test = true;

			} catch (Exception e) {
				e.printStackTrace();
			}

			return test;
		}
}
