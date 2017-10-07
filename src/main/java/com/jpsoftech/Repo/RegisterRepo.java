package com.jpsoftech.Repo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.jpsoftech.Model.Register;



public interface RegisterRepo extends CrudRepository<Register, Long>{
	List<Register> findByusername(String username);
	List<Register> findByUsernameAndPassword(String username, String password);
}