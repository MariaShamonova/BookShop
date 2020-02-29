package com.example.servingwebcontent;

import com.example.servingwebcontent.domain.Book;
import com.example.servingwebcontent.repos.BookRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@Controller
public class GreetingController {
    @Autowired
    private BookRepo bookRepo;

    private String title_ganre;

    @GetMapping
    public String main(Map<String, Object> model) {
        Iterable<Book> books =  bookRepo.findAll();
        model.put("books", books);
        return "main";
    }

    public GreetingController(BookRepo bookRepo) {
        this.bookRepo = bookRepo;
    }

    @PostMapping
    public String add(@RequestParam String title,
                      @RequestParam(required = false)  String title_ganre,
                      @RequestParam Integer price,
                      @RequestParam String author,
                      @RequestParam(required = false)  String publish_house,
                      @RequestParam String description,
                      @RequestParam Integer avr_rating,
                      Map<String, Object> model){
        Book book = new Book(title, title_ganre, price, author, publish_house, description, avr_rating);
        bookRepo.save(book);

        Iterable<Book> books =  bookRepo.findAll();
        model.put("book", books);
        return "main";
    }

    @PostMapping("filter")
    public String filter(@RequestParam String title, Map<String, Object> model){
        List<Book> books = bookRepo.findByTitle_ganre(title);

        model.put("book", books);
        return "main";
    }

}


