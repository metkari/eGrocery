package dao;

import pojos.Customer;

public interface CustomerDao {
	public Customer validateCustomer(String em,String pass) throws Exception;
	public Customer registerCustomer(Customer c) throws Exception;

}
