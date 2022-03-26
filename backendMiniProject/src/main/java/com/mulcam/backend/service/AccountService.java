package com.mulcam.backend.service;

import org.springframework.stereotype.Service;

import com.mulcam.backend.dto.Account;

@Service
public interface AccountService {
	public Account login(String id, String password) throws Exception;
	public String accountOverlap(String id) throws Exception;
	public Account join(Account account) throws Exception;
	public boolean accOverlap(String id) throws Exception;
}
