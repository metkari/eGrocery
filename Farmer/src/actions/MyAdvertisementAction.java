package actions;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import pojos.Customer;
import pojos.Favourite;
import pojos.Myadvertisement;
import pojos.Product;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import dao.FavouriteDaoImpl;
import dao.MyAdvertisementDAO;
import dao.ProductDaoImpl;

public class MyAdvertisementAction extends ActionSupport implements
		SessionAware, ModelDriven<Myadvertisement> {
	private Myadvertisement myAddModel = new Myadvertisement();
	private Myadvertisement addedAddModel;
	private Map<String, Object> sessMap;
	private Customer cid;
	private List<Myadvertisement> listofMyAdvertisement;
	@Override
	public void setSession(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		sessMap = arg0;

	}

	@Override
	public Myadvertisement getModel() {
		 
		// TODO Auto-generated method stub
		return myAddModel;
	}

	public String getOwnerId() {
		System.out.println(myAddModel);
		long cid=new MyAdvertisementDAO().getOwnerIdByPId(myAddModel.getProduct().getPId());
		Customer c = new ActionCustomer().getCustomerById(cid);
		System.out.println(c);
		sessMap.put("ownerDetail", c);
		return SUCCESS;
	}
		public String fetchProductsUsingCustomerId() throws Exception {
			
			cid = (Customer)sessMap.get("valid_user_dtls");
			long l = cid.getCId();
			List<Product> plist = new ArrayList<Product>();
			Product p = new Product();
			listofMyAdvertisement = new MyAdvertisementDAO().getFavouriteDetails(l);
			
			for (Myadvertisement favourite : listofMyAdvertisement) {
				p=new ProductDaoImpl().getProductById(favourite.getProduct().getPId());
				plist.add(p);
			}
			sessMap.put("my_adds", plist);
			return SUCCESS;
			
		}

	
	

}
//