package actions;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import pojos.Favourite;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import dao.FavouriteDaoImpl;


public class FavouriteCRUDAction extends ActionSupport implements
		ModelDriven<Favourite>, SessionAware {
	private Favourite favouriteModel = new Favourite();
	private Map<String, Object> sessMap;
	private List<Favourite> listOfVaourite;
	private Favourite addedFavourite;
	
	

	public Favourite getFavoriteModel() {
		return favouriteModel;
	}

	public void setFavoriteModel(Favourite favoriteModel) {
		this.favouriteModel = favoriteModel;
	}

	public Map<String, Object> getSessMap() {
		return sessMap;
	}

	public void setSessMap(Map<String, Object> sessMap) {
		this.sessMap = sessMap;
	}

	public List<Favourite> getListOfVaourite() {
		return listOfVaourite;
	}

	public void setListOfVaourite(List<Favourite> listOfVaourite) {
		this.listOfVaourite = listOfVaourite;
	}

	@Override
	public void setSession(Map<String, Object> arg0) {
		sessMap=arg0;

	}

	@Override
	public Favourite getModel() {
		// TODO Auto-generated method stub
		return favouriteModel;
	}
	public String addFavorite() {
		System.out.println("in add favorite " +favouriteModel);
		addedFavourite =new FavouriteDaoImpl().addFavourite(favouriteModel);
		System.out.println("added vendor" + addedFavourite);
		return SUCCESS;
	}

}
