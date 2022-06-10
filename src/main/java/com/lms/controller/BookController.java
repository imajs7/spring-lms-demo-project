package com.lms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lms.model.Book;
import com.lms.service.BookService;

@Controller
public class BookController {
	
	@Autowired
	public BookService bookService;
	
	@RequestMapping("/")
	public String getAllBooks(Model bookModel) {
		List<Book> allBooks = bookService.getAllBooks();
		bookModel.addAttribute("books", allBooks);
		System.out.println(allBooks.toString());
		return "booklist";
	}
	
	@RequestMapping("/home")
	public String getHome() {
		return "redirect:/";
	}
	
	@RequestMapping("/addbook")
	public String addNewBook(Model theModel) {
		Book book = new Book();
		theModel.addAttribute("book", book);
		return "addbook";
	}
	
	@RequestMapping("/edit/{id}")
	public String editBook(@PathVariable("id") int bookId, Model model) {
		Book book = bookService.getBookById(bookId);
		model.addAttribute("book", book);
		return "addbook";
	}
	
	@RequestMapping(value="/save", method=RequestMethod.POST)
	public String saveBook(@ModelAttribute Book book) {
		bookService.saveBook(book);
		return "redirect:/";
	}
	
	@RequestMapping("/delete/{id}")
	public String deleteBook(@PathVariable("id") int bookId) {
		bookService.deleteBook(bookId);
		return "redirect:/";
	}

}
