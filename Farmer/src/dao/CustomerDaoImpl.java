package dao;

import org.hibernate.*;
import pojos.Customer;
import static utils.HibernateUtils.*;

public class CustomerDaoImpl implements CustomerDao {

	@Override
	public Customer validateCustomer(String em1, String pass1) throws Exception {
		Customer c = null;
		System.out.println("in dao");
		String hql = "select c from Customer c where c.cEmail =:em and c.cPassword =:pass";
		// sess
		Session hs = getSf().getCurrentSession();
		Transaction tx = hs.beginTransaction();
		try {
			c = (Customer) hs.createQuery(hql).setParameter("em", em1)
					.setParameter("pass", pass1).uniqueResult();
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			throw e;
		}
		return c;
	}

	@Override
	public Customer registerCustomer(Customer c) throws Exception {
		// sess
		Session hs = getSf().getCurrentSession();
		System.out.println("connected");
		Transaction tx = hs.beginTransaction();
		try {
			hs.save(c);
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			throw e;
		}
		return c;
	}

}
