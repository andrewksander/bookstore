package com.qa.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qa.models.Book;
import com.qa.services.BookService;

@Controller
@ComponentScan({ "com.qa.models", "com.qa.repositories", "com.qa.services" })
@EntityScan("com.qa.models")
public class MyController {

	@Autowired
	private BookService bookService;

	@RequestMapping("/")
	public String hello() {
		return "welcome";
	}

	@RequestMapping("/bookform")
	public String books() {
		return "registerbook";
	}

	@RequestMapping("/addbook")
	public String addBookProcess(@ModelAttribute Book b) {
		bookService.createBookRecord(b);

		return "redirect:/admin_page";
	}

	@RequestMapping("/removebook/{id}")
	public String removeBookProcess(@PathVariable("id") int id) {
		bookService.removeBookRecord(id);
		return "redirect:/admin_page";
	}

	@RequestMapping("/edit/{id}")
	public String updateBook(@PathVariable("id") int id, Model model) {
		Iterable<Book> b = bookService.getBookById(id);
		b=bookService.getBookById(id);
		model.addAttribute("b", b);
		
		//bookService.getBookById(id);
		return "book_edit";

	}
	@RequestMapping("/edit/{id}/updateBookRecord")
	public String updateBookRecord(@ModelAttribute Book b) {
		bookService.createBookRecord(b);

		return "redirect:/admin_page";
	}

	@RequestMapping("/order_page")
	public String orderBookProcess(@PathVariable("id") int id, Model model) {
		Iterable<Book> bookById = bookService.getBookById(id);
		model.addAttribute("bookById", bookById);
		return "order_page";

	}

	@RequestMapping("/login")
	public String login() {
		return "login";
	}

	@RequestMapping("/admin_page")
	public String adminPage(Model model) {
		Iterable<Book> allBooks = bookService.getAllBooks();
		model.addAttribute("allBooks", allBooks);
		return "admin_page";
	}

	@RequestMapping("/customer_page")
	public String customerPage(Model model) {
		Iterable<Book> allBooks = bookService.getAllBooks();
		model.addAttribute("allBooks", allBooks);
		return "customer_page";
	}

}
