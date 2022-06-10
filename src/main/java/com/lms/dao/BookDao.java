package com.lms.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lms.model.Book;

@Repository
public class BookDao {
	
	@Autowired
	private HibernateTemplate hTemplate;
	
	@Transactional
	public void saveBook(Book book) {
		this.hTemplate.saveOrUpdate(book);
	}
	
	public List<Book> getAllBooks(){
		return this.hTemplate.loadAll(Book.class);
	}
	
	public Book getBookById(int bookId) {
		return this.hTemplate.get(Book.class, bookId);
	}
	
	@Transactional
	public void deleteBook(int bookId) {
		Book book = this.hTemplate.load(Book.class, bookId);
		this.hTemplate.delete(book);
	}

}
