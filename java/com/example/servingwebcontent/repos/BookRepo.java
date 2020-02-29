package com.example.servingwebcontent.repos;

import com.example.servingwebcontent.domain.Book;
import org.springframework.data.repository.CrudRepository;
import java.util.List;

public interface BookRepo extends CrudRepository<Book, Integer> {

    List<Book> findByTitle_ganre(String title_ganre);

}
