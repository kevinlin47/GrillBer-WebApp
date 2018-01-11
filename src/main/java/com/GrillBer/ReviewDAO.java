package com.GrillBer;

import javax.sql.DataSource;

public interface ReviewDAO {
	
	public void setDataSource(DataSource ds);
	
	public void update(int ratingNumber);
	
	public Integer getRatingAmount(int ratingNumber);
}
