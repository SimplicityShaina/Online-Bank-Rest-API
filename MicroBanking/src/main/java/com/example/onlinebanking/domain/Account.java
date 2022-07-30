package com.example.onlinebanking.domain;

import java.util.Date;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;

import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import org.hibernate.validator.constraints.Range;
import com.fasterxml.jackson.annotation.JsonIgnore;


@Entity
@Table(name="account")
public class Account {
	@Id
	@NotNull(message="account number cannot be null") //HERE VALIDATING USING JAVAX VALIDATION
	private long accno;

	private String accType;
	
	private String accholdername;
	
	//@DateTimeFormat(pattern="yyyy/mm/dd")

	private Date opendate;
	
	@Range(min=1000,max=5000,message="accBalance between 1000 and 5000") //HERE VALIDATING USING HIBERNATE VALIDATION
	private double accBalance;
	
	private long mobile;
	
	private String username;
	private String password;
	


	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public long getMobile() {
		return mobile;
	}

	public void setMobile(long mobile) {
		this.mobile = mobile;
	}


	
	@ManyToMany(cascade={CascadeType.ALL})
	@JoinTable(name="account_transaction",joinColumns={@JoinColumn(name="accno")},inverseJoinColumns={@JoinColumn(name="id")})
	//@JsonManagedReference
	@JsonIgnore
	private Set<Transaction> transactions=new HashSet<Transaction>();
	
	
	public Account(){
		
	}
	
	public long getAccno() {
		return accno;
	}




	public void setAccno(long accno) {
		this.accno = accno;
	}




	public String getAccType() {
		return accType;
	}




	public void setAccType(String accType) {
		this.accType = accType;
	}




	public String getAccholdername() {
		return accholdername;
	}




	public void setAccholdername(String accholdername) {
		this.accholdername = accholdername;
	}




	public Date getOpendate() {
		return opendate;
	}




	public void setOpendate(Date opendate) {
		this.opendate = opendate;
	}




	public double getAccBalance() {
		return accBalance;
	}




	public void setAccBalance(double accBalance) {
		this.accBalance = accBalance;
	}




	public Set<Transaction> getTransactions() {
		return transactions;
	}




	public void setTransactions(Set<Transaction> transactions) {
		this.transactions = transactions;
	}




	@Override
	public String toString() {
		return "Account [accno=" + accno + ", accType=" + accType + ", accholdername=" + accholdername + ", opendate="
		+ opendate + ", accBalance=" + accBalance + ", mobile=" + mobile + ", transactions=" + transactions
		+ "]";
	}



}
