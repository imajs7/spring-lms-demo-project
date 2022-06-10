package com.lms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lms.dao.BookDao;
import com.lms.model.Book;

@Service
public class BookService {
	
	@Autowired
	public BookDao bookDao;
	
	public void saveBook(Book book) {
		this.bookDao.saveBook(book);
	}
	
	public List<Book> getAllBooks(){
		return bookDao.getAllBooks();
	}
	
	public Book getBookById(int bookId) {
		return this.bookDao.getBookById(bookId);
	}
	
	public void deleteBook(int bookId) {
		this.bookDao.deleteBook(bookId);
	}

}
