package dev.azmath.lms.library_management_system.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import dev.azmath.lms.library_management_system.model.Book;
import dev.azmath.lms.library_management_system.model.Transaction;

@RepositoryRestResource(collectionResourceRel = "transactions", path = "transactions")
public interface TransactionRepository extends JpaRepository<Transaction, Long> {

    Optional<Transaction> findByBookAndReturnDateIsNull(Book book);
}