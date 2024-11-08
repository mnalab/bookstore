package com.learnig.lab.bookstore.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class BookStroreController {

    @GetMapping("/")
    public String welcome(){
        return "BookStore Application";
    }

    @GetMapping("/hello")
    public String sayHello(){
        return "Hello From BookStore";
    }

}
