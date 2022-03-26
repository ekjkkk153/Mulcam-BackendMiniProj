package com.mulcam.backend.dao;

import java.sql.SQLException;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.mulcam.backend.dto.Account;

@Mapper
@Repository
public interface AccountDAO {
	public Account selectAccount(String id) throws SQLException;
	public void insertAccount(Account account) throws SQLException;
}