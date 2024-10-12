package dev.azmath.lms.library_management_system.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import dev.azmath.lms.library_management_system.model.Book;

@RepositoryRestResource(collectionResourceRel = "books", path = "books")
public interface BookRepository extends JpaRepository<Book, Long> {
}
