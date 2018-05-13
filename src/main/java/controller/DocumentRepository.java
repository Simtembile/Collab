package controller;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

// This will be AUTO IMPLEMENTED by Spring into a Bean called userRepository
// CRUD- Create, Read, Update, Delete

@Repository
public interface DocumentRepository extends CrudRepository<Document, Integer> {

	//@Query("select id, filename, datastream from Document as d, User as u where u.username = ?1 and d.users.username = ?1"
	//		+ "and d.id = du.documents_id")
	List<Document> findByUsers_username(String username);
	
}