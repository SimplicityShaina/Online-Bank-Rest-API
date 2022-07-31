package com.example.MicroBanking.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.MicroBanking.domain.Account;


public interface AccountRepository extends JpaRepository <Account,Long>{


}
