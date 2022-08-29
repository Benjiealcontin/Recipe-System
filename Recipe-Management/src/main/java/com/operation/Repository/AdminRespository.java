package com.operation.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.ui.Model;

import com.operation.Model.Admin;

public interface AdminRespository extends JpaRepository<Admin, Integer> {

	Admin findByUsernameAndPassword(String username, String password);
}
