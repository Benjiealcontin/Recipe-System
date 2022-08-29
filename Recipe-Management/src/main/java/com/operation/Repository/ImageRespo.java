package com.operation.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.operation.Model.User;
import com.operation.Model.UserImages;
import com.operation.Service.ImageRequest;

public interface ImageRespo extends JpaRepository<UserImages, Integer>{

	UserImages findByuserfk(int userfk);
	
	@Query("SELECT new com.operation.Service.ImageRequest(u.id, u.userfk, u.image) FROM User s JOIN s.userimages u WHERE u.userfk = ?1")
	 List<ImageRequest>findByid(int userfk) ;

}
