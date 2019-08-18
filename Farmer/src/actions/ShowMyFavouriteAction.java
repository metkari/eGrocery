package actions;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.Session;

import pojos.Customer;
import pojos.Favourite;
import pojos.Product;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import dao.FavouriteDaoImpl;
import dao.ProductDaoImpl;

public class ShowMyFavouriteAction extends ActionSupport  implements SessionAware,ModelDriven<Favourite>{

	Map<String, Object> sessMap;
	private Favourite favouriteModel;
	private Customer cid;
	private List<Favourite> listofFavorite;
	
	
	
	public Favourite getFavouriteModel() {
		return favouriteModel;
	}



	public List<Favourite> getListofFavorite() {
		return listofFavorite;
	}



	public void setListofFavorite(List<Favourite> listofFavorite) {
		this.listofFavorite = listofFavorite;
	}



	public void setFavouriteModel(Favourite favouriteModel) {
		this.favouriteModel = favouriteModel;
	}



	@Override
	public void setSession(Map<String, Object> sessMap) {
		System.out.println("in set sess map");
		this.sessMap = sessMap;

		
	}



	public Map<String, Object> getSessMap() {
		return sessMap;
	}



	@Override
	public Favourite getModel() {
		System.out.println("in get model");
		favouriteModel = new Favourite();
		return favouriteModel;
	}
	
	
	public String fetchProductsUsingCustomerId() throws Exception {
		System.out.println();
		
		cid = (Customer)sessMap.get("valid_user_dtls");
		long l = cid.getCId();
		List<Product> plist = new ArrayList<Product>();
		Product p = new Product();
		listofFavorite = new FavouriteDaoImpl().getFavouriteDetails(l);
		
		for (Favourite favourite : listofFavorite) {
			p=new ProductDaoImpl().getProductById(favourite.getProduct().getPId());
			plist.add(p);
		}
		sessMap.put("my_favourites", plist);
		return SUCCESS;
		
	}
	}


