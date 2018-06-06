package com.exam.springdemo.service;

import com.exam.springdemo.dao.BookDao;
import com.exam.springdemo.entity.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookService {
    @Autowired
    private BookDao dao;

    public List<Book> queryBook(String id){
        return dao.queryBook(id);
    }
}