package com.gzk.service;

import com.gzk.pojo.Books;

import java.util.List;


public interface BookService {

    //增加一本书
    int addBook(Books books);

    //删除一本书
    int deleteBook(int id);

    //修改一本书
    int updateBook(Books books);

    //查询一本书
    Books queryBookById(int id);

    //查询所有书
    List<Books> queryAllBook();

    Books queryBookByName(String bookName);

    //模糊查询
    List<Books> queryLikeBooks(String bookName);
}
