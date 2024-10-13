package dev.azmath.lms.library_management_system.service;

import dev.azmath.lms.library_management_system.model.Book;
import dev.azmath.lms.library_management_system.model.Member;
import dev.azmath.lms.library_management_system.model.Transaction;
import dev.azmath.lms.library_management_system.repository.BookRepository;
import dev.azmath.lms.library_management_system.repository.MemberRepository;
import dev.azmath.lms.library_management_system.repository.TransactionRepository;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.util.Optional;

@Service
public class LibraryService {

    private final BookRepository bookRepository;
    private final MemberRepository memberRepository;
    private final TransactionRepository transactionRepository;

    public LibraryService(BookRepository bookRepository, MemberRepository memberRepository, TransactionRepository transactionRepository) {
        this.bookRepository = bookRepository;
        this.memberRepository = memberRepository;
        this.transactionRepository = transactionRepository;
    }

    @Transactional
    public Book borrowBook(Long bookId, Long memberId) {
        Book book = bookRepository.findById(bookId)
                .orElseThrow(() -> new IllegalArgumentException("Book not found"));
        
        if (!book.getAvailable()) {
            throw new IllegalStateException("Book is already borrowed");
        }

        Member member = memberRepository.findById(memberId)
                .orElseThrow(() -> new IllegalArgumentException("Member not found"));

        Transaction transaction = new Transaction(book, member, LocalDate.now());
        transactionRepository.save(transaction);

        book.setAvailable(false);
        return bookRepository.save(book);
    }

    @Transactional
    public Book returnBook(Long bookId) {
        Book book = bookRepository.findById(bookId)
                .orElseThrow(() -> new IllegalArgumentException("Book not found"));

        Optional<Transaction> transactionOpt = transactionRepository.findByBookAndReturnDateIsNull(book);
        if (transactionOpt.isPresent()) {
            Transaction transaction = transactionOpt.get();
            transaction.setReturnDate(LocalDate.now());
            transactionRepository.save(transaction);
        } else {
            throw new IllegalStateException("Book is not currently borrowed");
        }

        book.setAvailable(true);
        return bookRepository.save(book);
    }
}
