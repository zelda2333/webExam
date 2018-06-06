package com.exam.springdemo.service;

import com.exam.springdemo.dao.BookCategoryDao;
import com.exam.springdemo.entity.BookCategory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigInteger;
import java.util.List;

@Service
public class BookCategoryService {
    @Autowired
    private BookCategoryDao bookCategoryDao;

    public List<BookCategory> findAll(){

        return bookCategoryDao.findAll();
    }
    /*    @description添加书籍分类信息@param bookCategory@return*/

    public void saveBookCategory(BookCategory bookCategory) {
        bookCategoryDao.save(bookCategory);
    }
    /*@description查询一个图书类别*/
    public BookCategory findByCategoryId(BigInteger id){ return bookCategoryDao.findById(id).orElse(null);}
    /*    @description更新书籍分类信息@param bookCategory@return*/
    public void updateBookCategory( BigInteger id,BookCategory bookCategory){bookCategoryDao.save(bookCategory);}
    /*删除*/
    public void deleteCategory(BigInteger id){bookCategoryDao.deleteById(id);}
    /*用分类名查询*/
    public List<BookCategory> findByCategoryName(String name){return  bookCategoryDao.findByCategoryName(name);}
}
