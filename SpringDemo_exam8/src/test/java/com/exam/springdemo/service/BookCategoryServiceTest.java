package com.exam.springdemo.service;

import com.exam.springdemo.entity.BookCategory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;


import javax.transaction.Transactional;

import java.awt.*;
import java.awt.print.Book;
import java.math.BigInteger;
import java.sql.Timestamp;

import static org.junit.Assert.*;
@RunWith(SpringRunner.class)
@SpringBootTest
@Transactional
public class BookCategoryServiceTest {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private BookCategoryService service;
    private BookCategory bookCategory;
    @Test
    public void findAll(){
        System.out.println("name"+bookCategory.getCategoryName());
        logger.debug(service.findAll().toString());
    }
    @Test
    public void findById(BigInteger id){
        logger.debug(service.findByCategoryId(id).toString());
    }
    public void findByCategoryName(String name){
        logger.debug(service.findByCategoryName(name).toString());
    }
    @Test
    public void save(){
        BookCategory bookCategory = new BookCategory();
        Timestamp t = new Timestamp(System.currentTimeMillis());
        bookCategory.setCategoryName("科技");
        bookCategory.setCreateTime(t);
        bookCategory.setUpdateTime(t);
        service.saveBookCategory(bookCategory);
    }
}
