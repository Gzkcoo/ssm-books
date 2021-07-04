package com.gzk.controller;


import com.gzk.pojo.Books;
import com.gzk.service.BookService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.awt.print.Book;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {

    //controller调service层
    @Autowired
    @Qualifier("bookServiceImpl")
    private BookService bookService;

    //查询全部书籍，并返回一个书籍展示页面
    @RequestMapping("/allBook")
    public String list(Model model){
        List<Books> list = bookService.queryAllBook();
        model.addAttribute("list",list);
        return "allBook";
    }

    //跳转到增加书籍页面
    @RequestMapping("/toAddBook")
    public String toAddPage(Model model) {
        return "addBook";
    }

    //添加书籍的请求
    @RequestMapping("/addBook")
    public String addBook(Books books) {

        bookService.addBook(books);
        //重定向
        return "redirect:/book/allBook";
    }

    //跳转到修改页面
    @RequestMapping("/toUpdate")
    public String toUpdatePaper(int id,Model model) {
        Books books = bookService.queryBookById(id);
        model.addAttribute("books",books);
        return "updateBook";
    }

    //修改书籍的请求
    @RequestMapping("/updateBook")
    public String updateBook(Books books) {
        bookService.updateBook(books);
        return "redirect:/book/allBook";
    }

    //删除书籍的请求
    @RequestMapping("/deleteBook/{bookId}")
    public String deleteBook(@PathVariable("bookId") int id) {
        bookService.deleteBook(id);
        return "redirect:/book/allBook";
    }

    //查询书籍
    @RequestMapping("/queryBook")
    public String queryBook(String queryBookName,Model model){

        List<Books> list = bookService.queryLikeBooks(queryBookName);
        if(list==null){
            list = bookService.queryAllBook();
            model.addAttribute("error","未找到");
        }
        model.addAttribute("list",list);
        return "allBook";
    }

    @RequestMapping("/queryBookCust")
    public String queryBookCust(String queryBookName,Model model){

        List<Books> list = bookService.queryLikeBooks(queryBookName);
        if(list==null){
            list = bookService.queryAllBook();
            model.addAttribute("error","未找到");
        }
        model.addAttribute("list",list);
        return "allBook_cust";
    }

    //查询全部书籍，并返回一个顾客书籍展示页面
    @RequestMapping("/allBookCust")
    public String listCust(String name,String flag, Model model){
        //书籍数量减一
        if (name != null)
        {
            Books books = bookService.queryBookByName(name);
            books.setBookCounts(books.getBookCounts()-1);
            bookService.updateBook(books);
        }
        List<Books> list = bookService.queryAllBook();
        model.addAttribute("flag",flag);
        model.addAttribute("list",list);
        return "allBook_cust";
    }

    //购买书籍
    @RequestMapping("/toPayBook")
    public String toPayBook(String name, Model model){

        model.addAttribute("name",name);
        return "payBook";
    }

}
