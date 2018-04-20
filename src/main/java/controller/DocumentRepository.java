package controller;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

// This will be AUTO IMPLEMENTED by Spring into a Bean called userRepository
// CRUD- Create, Read, Update, Delete

@Repository
public interface DocumentRepository extends CrudRepository<Document, Integer> {

	@Query("select u from Document u where u.user.username = ?1")
	  List<Document> findByUser_username(String username);
	
}