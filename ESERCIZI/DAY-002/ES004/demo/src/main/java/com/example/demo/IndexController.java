package com.example.demo;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

RestController
public class IndexController {

    @RequestMapping("/")
    public string index() {
        return "Hello from Spring Boot!";
    }

}
   


