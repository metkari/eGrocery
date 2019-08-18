package actions;

import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.HibernateException;
import org.hibernate.Session;

import pojos.Customer;
import pojos.Myadvertisement;
import pojos.Product;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import dao.ProductDaoImpl;

public class ProductRegisterAction extends ActionSupport implements
		ModelDriven<Product>, SessionAware {
	// props
	private Product productModel;
	private Product addedProduct;
	// Map ref ---> SessionMap inst --- map of sess scoped attrs.
	private Map<String, Object> map;
	private List<Product> products;
	private List<Product> productsbycat;
	private Myadvertisement ma = new Myadvertisement();

	public List<Product> getProductsbycat() {
		return productsbycat;
	}

	public void setProductsbycat(List<Product> productsbycat) {
		this.productsbycat = productsbycat;
	}

	@Override
	public void setSession(Map<String, Object> map123) {
		map = map123;
	}

	@Override
	public Product getModel() {
		productModel = new Product();
		return productModel;
	}

	// override validate() -- to supply P.L validation rules

	public String registerProduct() throws Exception {
		try {
			// invoke dao 's method
			ma.getProduct().setPId(productModel.getPId());
			Customer c = (Customer) map.get("cust_details");
			ma.getCustomer().setCId(c.getCId());
			System.out.println(ma);
			System.out.println("in exec " + productModel);
			Product p = new ProductDaoImpl().registerProduct(productModel, ma);
			if (p.getPId() == 0) {
				// transient ---reg failed
				addActionError("reg failed , pls retry");

				return INPUT;
			}
			// add reged cust details to sess scope
			map.put("cust_details", p);
			return SUCCESS;
		} catch (HibernateException e) {
			addActionError("reg failed , pls retry " + e.getMessage());
			return INPUT;
		}
	}

	public String allProducts() {
		products = new ProductDaoImpl().getAllvendorsProduct();
		map.put("allProducts", products);
		return SUCCESS;
	}

	public Product getProductModel() {
		return productModel;
	}

	public void setProductModel(Product productModel) {
		this.productModel = productModel;
	}

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	public Product getAddedProduct() {
		return addedProduct;
	}

	public void setAddedProduct(Product addedProduct) {
		this.addedProduct = addedProduct;
	}

}
