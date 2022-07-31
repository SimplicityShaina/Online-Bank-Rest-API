package com.project.onlinebanking;

import org.springframework.boot.SpringApplication;

import org.springframework.boot.autoconfigure.SpringBootApplication;


@SpringBootApplication
public class BankingRestAPI {

	public static void main(String[] args) {
		SpringApplication.run(BankingRestAPI.class, args);
		System.out.println("spring started");
	}
}
