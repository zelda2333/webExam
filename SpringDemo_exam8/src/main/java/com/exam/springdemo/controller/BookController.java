package com.exam.springdemo.controller;

import com.exam.springdemo.entity.Book;
import com.exam.springdemo.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/book")
public class BookController {
    @Autowired
    // private BookCategory bookCategory;
    private BookService service;
    /** @Description 获取书籍id @Param @Return List<Book>id */
    @GetMapping("")
    public List<Book> queryBook(@RequestParam("id") String id){
        System.out.println("book"+service.queryBook(id));
        return service.queryBook(id);
    }
}
