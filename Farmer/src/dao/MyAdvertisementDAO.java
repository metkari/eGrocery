package dao;

import static utils.HibernateUtils.getSf;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import pojos.Customer;
import pojos.Favourite;
import pojos.Myadvertisement;

public class MyAdvertisementDAO {

	public long getOwnerIdByPId(long pid1) {
		Myadvertisement a = null;
		System.out.println("in dao");
		String hql = "select mA from Myadvertisement mA where mA.product.pId =:pid";
		// sess
		Session hs = getSf().getCurrentSession();
		Transaction tx = hs.beginTransaction();
		try {
			a = (Myadvertisement) hs.createQuery(hql).setParameter("pid", pid1).uniqueResult();
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			throw e;
		}
		System.out.println(a.getCustomer().getCId());
		System.out.println(a.getProduct().getPId());
		return a.getCustomer().getCId();
		
	}

	public List<Myadvertisement> getFavouriteDetails(long id) {

		List<Myadvertisement> f = null;

		String hql = "select f from Myadvertisement f where f.customer.cId=:cid";
		Session hs = getSf().getCurrentSession();
		Transaction tx = hs.beginTransaction();
		try {
			f = hs.createQuery(hql).setParameter("cid", id).list();
			tx.commit();

		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			throw e;
		}

		return f;

	}

}
