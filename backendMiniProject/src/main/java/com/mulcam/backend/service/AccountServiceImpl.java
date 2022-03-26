package com.mulcam.backend.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mulcam.backend.dao.AccountDAO;
import com.mulcam.backend.dto.Account;

@Service
public class AccountServiceImpl implements AccountService{
	@Autowired
	AccountDAO accountDAO;

	public void setAccountDAO(AccountDAO accountDAO) {
		this.accountDAO = accountDAO;
	}

	@Override
	public Account login(String id, String password) throws Exception {
		Account account = accountDAO.selectAccount(id);
		return id.equals(account.getId()) && password.equals(account.getPassword())? account:null;
	}

	@Override
	public String accountOverlap(String id) throws Exception {
		return accountDAO.selectAccount(id)==null? "false":"true";
		
	}

	@Override
	public Account join(Account account) throws Exception {
		Account alreadyMem = accountDAO.selectAccount(account.getId());
		if(alreadyMem != null && alreadyMem.getId().equals(account.getId())) throw new Exception("이미 가입한 이메일입니다.");
		accountDAO.insertAccount(account);
		return accountDAO.selectAccount(account.getId());
	}

	@Override
	public boolean accOverlap(String id) throws Exception {
		Account account = accountDAO.selectAccount(id);
		return account!=null? true:false;
	}
	
	

	
	
}
