package com.bandiClasses.DMS.repository;

import java.util.List;

//@author TejeswarBobba

import org.springframework.data.repository.CrudRepository;

//@author TejeswarBobba

import com.bandiClasses.DMS.Models.Dog;

public interface DogRepository extends CrudRepository<Dog,Integer> {

	List<Dog> findByName(String name);
		
}
