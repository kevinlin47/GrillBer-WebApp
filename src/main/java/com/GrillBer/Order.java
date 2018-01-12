package com.GrillBer;

public class Order {

	private String name;
	private String email;
	private String grillType;
	private String address;
	private Integer hours;
	
	public void setName(String name)
	{
		this.name=name;
	}
	
	public String getName()
	{
		return name;
	}
	
	public void setEmail(String email)
	{
		this.email=email;
	}
	
	public String getEmail()
	{
		return email;
	}
	
	public void setGrillType(String grillType)
	{
		this.grillType=grillType;
	}
	
	public String getGrillType()
	{
		return grillType;
	}
	
	public void setAddress(String address)
	{
		this.address=address;
	}
	
	public String getAddress()
	{
		return address;
	}
	
	public void setHours(Integer h)
	{
		this.hours=h;
	}
	
	public Integer getHours()
	{
		return hours;
	}
	
}
