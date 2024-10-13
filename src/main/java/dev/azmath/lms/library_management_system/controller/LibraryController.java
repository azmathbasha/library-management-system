package dev.azmath.lms.library_management_system.controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import dev.azmath.lms.library_management_system.model.Book;
import dev.azmath.lms.library_management_system.service.LibraryService;

@RestController
@RequestMapping("/api/library")
public class LibraryController {

    private final LibraryService libraryService;

    public LibraryController(LibraryService libraryService) {
        this.libraryService = libraryService;
    }

    @PostMapping("/borrow")
    public Book borrowBook(@RequestParam Long bookId, @RequestParam Long memberId) {
        return libraryService.borrowBook(bookId, memberId);
    }

    @PostMapping("/return")
    public Book returnBook(@RequestParam Long bookId) {
        return libraryService.returnBook(bookId);
    }
}

