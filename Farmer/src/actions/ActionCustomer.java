package actions;

import static utils.HibernateUtils.getSf;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import pojos.Customer;
import pojos.Myadvertisement;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import dao.CustomerDaoImpl;

public class ActionCustomer extends ActionSupport implements SessionAware,
		ModelDriven<Customer> {

	private Customer customerModel;
	Map<String, Object> sessMap;

	public Customer getCustomerModel() {
		return customerModel;
	}

	public void setCustomerModel(Customer customerModel) {
		this.customerModel = customerModel;
	}

	public Customer getModel() {
		System.out.println("in get model");
		customerModel = new Customer();
		return customerModel;
	};

	public String registerCstomers() throws Exception {
		System.out.println("in register action");
		System.out.println("user model" + customerModel);
		Customer regCustomer = null;
		try {
			regCustomer = new CustomerDaoImpl().registerCustomer(customerModel);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "reg_failed";
		}
		return "reg_success";
	}

	public String validateUser() throws Exception {
		System.out.println("in exec  : validate");
		// invoke dao layer for cust validation
		Customer cust = null;
		try {
			cust = new CustomerDaoImpl().validateCustomer(
					customerModel.getCEmail(), customerModel.getCPassword());
			if (cust == null) {
				addActionError("Incorrect Email or Password");
				return ERROR;
			}
		} catch (Exception e) {
			System.out.println("in exception");
			addActionError("Login Failed : " + e.getMessage() + "  pls retry");
			return ERROR;

		}
		System.out.println(cust);
		// add validate user dtls to session scoped attr map
		sessMap.put("valid_user_dtls", cust);
		return SUCCESS;
	}

	@Override
	public void setSession(Map<String, Object> arg0) {
		System.out.println("in set sess map");
		this.sessMap = arg0;

	}

	public Customer getCustomerById(long cid1) {
		Customer c = null;
		String hql = "select c from Customer c where c.cId =:cid";
		// sess
		Session hs = getSf().getCurrentSession();
		Transaction tx = hs.beginTransaction();
		try {
			c = (Customer) hs.createQuery(hql).setParameter("cid", cid1)
					.uniqueResult();
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			throw e;
		}

		return c;

	}

}
