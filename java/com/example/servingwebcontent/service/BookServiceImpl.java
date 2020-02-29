package com.example.servingwebcontent.service;

import com.example.servingwebcontent.dao.BookDao;
import com.example.servingwebcontent.domain.Book;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public class BookServiceImpl implements BookService{
    private BookDao bookDao;

    @Override
    @Transactional
    public void addBook(Book book) {
        this.bookDao.addBook(book);
    }

    @Override
    @Transactional
    public void updateBook(Book book) {
        this.bookDao.updateBook(book);
    }

    @Override
    @Transactional
    public void removeBook(Integer bookID) {
        this.bookDao.removeBook(bookID);
    }

    @Override
    @Transactional
    public Book getBookByBookID(Integer bookID) {
        return this.bookDao.getBookByBookID(bookID);
    }

    @Override
    @Transactional
    public List<Book> listBooks() {
        return this.bookDao.listBooks();
    }

    public void setBookDao(BookDao bookDao) {
        this.bookDao = bookDao;
    }
}
