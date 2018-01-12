package com.GrillBer;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

public class RentJDBCTemplate implements RentDAO{
	
	private DataSource dataSource;
	private JdbcTemplate jdbcTemplateObject;
	
	@Override
	public void setDataSource(DataSource ds) {
		this.dataSource=ds;
		this.jdbcTemplateObject=new JdbcTemplate(dataSource);
	}

	@Override
	public void createOrder(String name, String email, String address, String grillType, Integer hours) {
		String sql="insert into order_information(email,name,address,grill_type,hours) values(?,?,?,?,?)";
		
		jdbcTemplateObject.update(sql,email,name,address,grillType,hours);
		
		return;
	}

	@Override
	public Order getOrder(String email) {
		
		String sql="select * from order_information where email=?";
		
		Order order=jdbcTemplateObject.queryForObject(sql,new Object[]{email},new OrderMapper());
		
		return order;
	}

}
