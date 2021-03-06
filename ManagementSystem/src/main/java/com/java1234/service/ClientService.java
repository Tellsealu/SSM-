package com.java1234.service;

import java.util.List;
import java.util.Map;
import com.java1234.entity.Client;


public interface ClientService {

	
	public Integer add(Client client);
	
	public Integer update(Client client);
	
	public List<Client> list(Map<String,Object> map);
	
	public Integer getTotal(Map<String,Object> map);

	public Client list_heji(Map<String,Object> map);
	
	public Integer delete(Integer id);
	
	
	public Client finbByOpenid(String openid);
	
	public Client findById(Integer id);
	
}
