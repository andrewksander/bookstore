package com.qa;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan({"com.qa.controllers"})
public class BookShopProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(BookShopProjectApplication.class, args);
	}
}
