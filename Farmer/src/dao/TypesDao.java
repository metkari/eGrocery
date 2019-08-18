package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.*;



import pojos.Type;
import static utils.HibernateUtils.*;

public class TypesDao  {

	
	public List<Type> getAllTypes()
	{
		List<Type> l1=new ArrayList<Type>();
		String hql = "SELECT t FROM Type t ";
		// sess
		Session hs = getSf().getCurrentSession();
		Transaction tx = hs.beginTransaction();
		try {
			l1 =hs.createQuery(hql).list();
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			throw e;
		}
		return l1;
	}
	
}
