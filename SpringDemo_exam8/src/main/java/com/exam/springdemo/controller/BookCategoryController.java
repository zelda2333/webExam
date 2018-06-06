package com.exam.springdemo.controller;

import com.exam.springdemo.dao.BookCategoryDao;
import com.exam.springdemo.entity.BookCategory;
import com.exam.springdemo.service.BookCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.math.BigInteger;
import java.sql.Timestamp;
import java.util.List;

@RestController
@RequestMapping(value = "/category")
public class BookCategoryController {
    @Autowired
   // private BookCategory bookCategory;
    private BookCategoryService service;
    /** @Description 获取全部分类信息 @Param @Return List<BookCategory> */
   @GetMapping("")
    public List<BookCategory> findAll()
    {
       // System.out.println(bookCategory.getCategoryName());
        return service.findAll();
    }

    /* @description 通过POST获取数据，并添加分类信息 @param bookCategory @return */
    @PostMapping("")
    public void saveBookCategory(BookCategory bookCategory){
        //System.out.println("name"+bookCategory.getCategoryName());
        service.saveBookCategory(bookCategory);
    }
    @GetMapping(value = "/{id}")
    public BookCategory findByCategoryId(@PathVariable("id") BigInteger id){
        return service.findByCategoryId(id);

    }
    @DeleteMapping("")
    public void deleteCategory(@RequestParam("id") BigInteger id){
        service.deleteCategory(id);
    }
   @PutMapping("")
    public void updateBookCategory(@RequestParam("id") BigInteger id, BookCategory bookCategory){

        //BookCategoryDao.save(bookCategory);
        //service.updateBookCategory(id,bookCategory);
        System.out.println("idid:"+bookCategory.getCategoryId());
        System.out.println("updatename"+bookCategory.getCategoryName());
    }
    /*通过类别来查询列表*/
    @GetMapping(value = "/categoryname")
    public List<BookCategory> CategoryByName(@RequestParam("name") String name){
        return service.findByCategoryName(name);
    }

}
