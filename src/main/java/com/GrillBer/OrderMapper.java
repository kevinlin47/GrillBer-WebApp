package com.GrillBer;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

import com.GrillBer.Order;

public class OrderMapper implements RowMapper<Order>{
	
	public Order mapRow(ResultSet rs,int rowNum) throws SQLException
	{
		Order order=new Order();
		
		order.setName(rs.getString("name"));
		order.setAddress(rs.getString("address"));
		order.setEmail(rs.getString("email"));
		order.setGrillType(rs.getString("grill_type"));
		order.setHours(rs.getInt("hours"));
		
		return order;
	}

}
