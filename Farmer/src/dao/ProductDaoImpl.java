package dao;

import static utils.HibernateUtils.getSf;

import java.util.List;

import org.hibernate.*;

import pojos.Customer;
import pojos.Myadvertisement;
import pojos.Product;
import utils.HibernateUtils;

public class ProductDaoImpl {
	
	public List<Product> getAllvendorsProduct(){
		String hql = "select p from Product p";
		//
		Session hs = getSf().getCurrentSession();

		Transaction tx = hs.beginTransaction();
		try {
			List<Product> l1 = hs.createQuery(hql).list();
			tx.commit();
			//System.out.println(l1.get(0).getPId());
			return l1;
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			throw e;
		}
		
	}

	public Product registerProduct(Product p, Myadvertisement ma) throws Exception {

		Session hs = getSf().getCurrentSession();
		System.out.println("connected");
		Transaction tx = hs.beginTransaction();
		try {
			hs.save(p);
			hs.save(ma);
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			throw e;
		}
		return p;
	}

	public Product getProductById(long pId1) {
		Product p = null;
		System.out.println("in dao");
		String hql = "select p from Product p where p.pId =:id";
		// sess
		Session hs = getSf().getCurrentSession();
		Transaction tx = hs.beginTransaction();
		try {
			p = (Product) hs.createQuery(hql).setParameter("id", pId1).uniqueResult();
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			throw e;
		}
		return p;
	}

	

	
}
