package dao;

import static utils.HibernateUtils.getSf;

import java.util.List;

import org.hibernate.*;

import pojos.Favourite;
import utils.HibernateUtils;

public class FavouriteDaoImpl {

	public List<Favourite> getFavouriteDetails(Long id) {
		
		List<Favourite> f = null;

		String hql = "select f from Favourite f where f.customer.cId=:cid";
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
	public Favourite addFavourite(Favourite favouriteModel) {
		Session hs = getSf().getCurrentSession();
		Transaction tx = hs.beginTransaction();
		try {
			hs.persist(favouriteModel);
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			throw e;
		}
		return favouriteModel;
	}
	
}
