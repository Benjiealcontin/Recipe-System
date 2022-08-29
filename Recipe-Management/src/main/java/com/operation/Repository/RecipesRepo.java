package com.operation.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.operation.Model.Recipes;
import com.operation.Service.RequestData;


public interface RecipesRepo extends JpaRepository<Recipes, Integer>{

	Recipes findByrepid(int repid);
	
	//For table
	@Query("SELECT new com.operation.Service.RequestData(r.repid, r.recipename, r.meat, r.vegetables, r.spicesAndherbs, r.procedures, r.cp_fk) "
			+ "FROM User s JOIN s.recipes r WHERE r.cp_fk = ?1")
	List<RequestData> GetBycp_fk(int cp_fk);
	
	//For Update
	
	@Query("SELECT new com.operation.Service.RequestData(r.repid, r.recipename, r.meat, r.vegetables, r.spicesAndherbs, r.procedures, r.cp_fk) "
			+ "FROM User s JOIN s.recipes r WHERE r.id = ?1")
	List<RequestData> GetById(int id);
	
}


