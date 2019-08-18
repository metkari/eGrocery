package actions;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import pojos.Customer;
import pojos.Myadvertisement;
import pojos.Product;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import dao.CustomerDaoImpl;
import dao.ProductDaoImpl;

public class ActionAcceptDetails extends ActionSupport implements SessionAware,
		ModelDriven<Product> {

	private Product productModel;
	Map<String, Object> map;
	File dest;
	Myadvertisement ma=new Myadvertisement();


	public Product getProductModel() {
		System.out.println("IN MODEL");
		return productModel;
	}

	public void setProductModel(Product productModel) {
		this.productModel = productModel;
	}

	public Map<String, Object> getSessMap() {
		return map;
	}

	public void setSessMap(Map<String, Object> sessMap) {
		this.map = sessMap;
	}

	
	  

	public String acceptDetails() throws Exception {

		handleImage();
		Customer c = (Customer) map.get("valid_user_dtls");
		ma.setCustomer(c);
		ma.setProduct(productModel);
		
		System.out.println("in product action");
		System.out.println("product model" + productModel);
		Product prod = null;
		System.out.println(map.get("imageName"));
		productModel.setPImage(map.get("imageName").toString());
	//	productModel.setpType("vegetables");
		
		
		
		try {
			prod = new ProductDaoImpl().registerProduct(productModel,ma);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "reg_failed";
		}
		return "reg_success";
	}

	private void handleImage() {
		/* Copy file to a safe location */
		productModel.setPImage("" + dest);
	}

	@Override
	public void setSession(Map<String, Object> arg0) {
		System.out.println("in set sess map");
		this.map = arg0;

	}

	@Override
	public Product getModel() {
		productModel = new Product();
		return productModel;
	}

}
