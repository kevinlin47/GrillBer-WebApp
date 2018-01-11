package com.GrillBer;

import javax.sql.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class ReviewTemplateJDBC implements ReviewDAO{
	
	private DataSource dataSource;
	private JdbcTemplate jdbcTemplateObject;
	
	public void setDataSource(DataSource dataSource)
	{
		this.dataSource=dataSource;
		this.jdbcTemplateObject=new JdbcTemplate(dataSource);
	}
	
	public Integer getRatingAmount(int ratingNumber)
	{
		String sql="select * from user_rating_table where rating_number=?";
		
		return jdbcTemplateObject.queryForObject(sql,new Object[] {ratingNumber},new IntegerMapper());
	}
	
	public void update(int ratingNumber)
	{	
		String sql="update user_rating_table set rating_amount=? where rating_number=?";
		
		int currentRatingAmount=getRatingAmount(ratingNumber);
		
		jdbcTemplateObject.update(sql,currentRatingAmount+1,ratingNumber);
		
		return;
	}
}
