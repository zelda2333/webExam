package com.exam.springdemo.dao;

import com.exam.springdemo.entity.BookCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.math.BigInteger;
import java.util.List;

@Repository
public interface BookCategoryDao extends JpaRepository<BookCategory,BigInteger> {
    //类别名称来查询  方法名有讲究不能乱写
    public List<BookCategory> findByCategoryName(String categoryName);
}
