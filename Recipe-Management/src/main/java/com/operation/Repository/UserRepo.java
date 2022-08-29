package com.operation.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.operation.Model.User;

public interface UserRepo extends JpaRepository<User, Integer>{

	
	List<User> findByid(int id);
	
	User findByemail(String email);
	List<User> findByusernameOrEmail(String username,String email);
	
	@Query("SELECT id FROM User WHERE username = ?1")
	String findByusername(String username);
	
	User findByUsernameAndPassword(String username, String password);
	
	
	//Change password
	User findById(int id);
	User findByIdAndPassword(int id,String password);
}
