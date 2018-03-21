package com.qa.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qa.models.Book;
import com.qa.repositories.BookRepository;

@Service
public class BookService {

	@Autowired
	private BookRepository bookRepository;

	public Book createBookRecord(Book b) {
		return bookRepository.save(b);
	}
	public Book updateBookRecord(Book b) {
		return bookRepository.updateBookRecord(b);
	}

	public Iterable<Book> getBookById(int id) {
		return bookRepository.getBookById(id);
	}

	public Book FindOneBook(int id) {
		return bookRepository.findOne(id);
	}

	public void removeBookRecord(int id) {
		this.bookRepository.delete(id);
	}

	public Iterable<Book> getAllBooksByBookname(String bookname) {
		return bookRepository.getBookByBookname(bookname);
	}

	public Iterable<Book> getAllBooksByAuthor(String author) {
		return bookRepository.getBookByAuthor(author);
	}

	public Iterable<Book> getAllBooksByGenre(String genre) {
		return bookRepository.getBookByGenre(genre);
	}

	public Iterable<Book> getAllBooksByOverview(String overview) {
		return bookRepository.getBookByOverview(overview);
	}


	public Iterable<Book> getAllBooksByPrice(double price) {
		return bookRepository.getBookByPrice(price);
	}

	public Iterable<Book> getAllBooks() {
		return bookRepository.findAll();
	}
}
