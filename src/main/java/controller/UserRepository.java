package controller;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import controller.User;

// This will be AUTO IMPLEMENTED by Spring into a Bean called userRepository
// CRUD- Create, Read, Update, Delete

@Repository
public interface UserRepository extends CrudRepository<User, String> {

	@Query("select u from User u where u.username = ?1 and u.password = ?2")
	  User findByUsernameAndPassword(String username, String password);
	
}