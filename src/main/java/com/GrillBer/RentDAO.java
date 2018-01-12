package com.GrillBer;

import javax.sql.DataSource;

public interface RentDAO {
	
	public void setDataSource(DataSource ds);
	
	public void createOrder(String name,String email,String address,String grillType,Integer hours);
	
	public Order getOrder(String email);
}
