package com.example.servingwebcontent.service;

import com.example.servingwebcontent.domain.Book;

import java.util.List;

public interface BookService {
    public void addBook(Book book);
    public void updateBook(Book book);
    public void removeBook(Integer bookID);
    public Book getBookByBookID(Integer bookID);
    public List<Book> listBooks();
}
