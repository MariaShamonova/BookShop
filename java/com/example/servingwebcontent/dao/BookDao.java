package com.example.servingwebcontent.dao;

import com.example.servingwebcontent.domain.Book;
import java.util.List;

public interface BookDao {
    public void addBook(Book book);
    public void updateBook(Book book);
    public void removeBook(Integer bookID);
    public Book getBookByBookID(Integer bookID);
    public List<Book> listBooks();

}
