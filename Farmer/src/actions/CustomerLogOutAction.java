package actions;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

import pojos.Customer;

import com.opensymphony.xwork2.ActionSupport;


public class CustomerLogOutAction extends ActionSupport implements
		SessionAware, ServletRequestAware, ServletResponseAware {
	// props
	private Customer custModel;
	// Map i/f ref ---> SessionMap inst --- map of sess scoped attrs.
	private Map<String, Object> map;
	private HttpServletRequest request;
	private HttpServletResponse response;

	@Override
	public void setSession(Map<String, Object> map123) {
		map = map123;
	}

	@Override
	public void setServletResponse(HttpServletResponse arg0) {
		response = arg0;
	}

	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		request = arg0;
	}
	

	public Customer getCustModel() {
		return custModel;
	}

	public String logOut() throws Exception {
		System.out.println("in exec of logout " + custModel);
		// before discarding session -- add details to cust Model
		custModel = (Customer) map.get("cust_details");
		// invalidate session
		((SessionMap<String, Object>) map).invalidate();
		// set refresh header
		String path=request.getContextPath();
		response.setHeader("refresh", "5;url="+path);
		return SUCCESS;

	}

}
