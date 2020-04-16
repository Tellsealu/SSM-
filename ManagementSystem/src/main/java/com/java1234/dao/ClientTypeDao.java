package com.java1234.dao;

import java.util.List;
import java.util.Map;

import com.java1234.entity.ClientType;

public interface ClientTypeDao {

	public Integer add(ClientType clientType);

	public Integer update(ClientType clientType);

	public List<ClientType> list(Map<String, Object> map);

	public Integer getTotal(Map<String, Object> map);

	public Integer delete(Integer id);

	public ClientType findById(Integer id);

}
