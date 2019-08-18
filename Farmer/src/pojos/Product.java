package pojos;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * The persistent class for the PRODUCTS database table.
 * 
 */
@Entity
@Table(name = "PRODUCTS")
@NamedQuery(name = "Product.findAll", query = "SELECT p FROM Product p")
public class Product implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "P_ID")
	@GeneratedValue
	private long pId;

	@Lob
	@Column(name = "P_DESCRIPTION")
	private String pDescription;
	
	
	@Column(name = "P_IMAGE")
	private String pImage;

	@Column(name = "P_NAME")
	private String pName;

	@Column(name = "P_PRICE")
	private BigDecimal pPrice;

	// bi-directional many-to-one association to Favourite
	@OneToMany(mappedBy = "product")
	private List<Favourite> favourites;

	// bi-directional many-to-one association to Myadvertisement
	@OneToMany(mappedBy = "product")
	private List<Myadvertisement> myadvertisements;

	
	@Column(name = "P_TYPE")
	private String pType;

	public Product() {
	}

	public long getPId() {
		return this.pId;
	}

	public void setPId(long pId) {
		this.pId = pId;
	}

	public String getPDescription() {
		return this.pDescription;
	}

	public void setPDescription(String pDescription) {
		this.pDescription = pDescription;
	}

	public String getPImage() {
		return this.pImage;
	}

	public void setPImage(String pImage) {
		this.pImage = pImage;
	}

	public String getPName() {
		return this.pName;
	}

	public void setPName(String pName) {
		this.pName = pName;
	}

	public BigDecimal getPPrice() {
		return this.pPrice;
	}

	public void setPPrice(BigDecimal pPrice) {
		this.pPrice = pPrice;
	}

	public List<Favourite> getFavourites() {
		return this.favourites;
	}

	public void setFavourites(List<Favourite> favourites) {
		this.favourites = favourites;
	}

	public Favourite addFavourite(Favourite favourite) {
		getFavourites().add(favourite);
		favourite.setProduct(this);

		return favourite;
	}

	public Favourite removeFavourite(Favourite favourite) {
		getFavourites().remove(favourite);
		favourite.setProduct(null);

		return favourite;
	}

	public List<Myadvertisement> getMyadvertisements() {
		return this.myadvertisements;
	}

	public void setMyadvertisements(List<Myadvertisement> myadvertisements) {
		this.myadvertisements = myadvertisements;
	}

	public Myadvertisement addMyadvertisement(Myadvertisement myadvertisement) {
		getMyadvertisements().add(myadvertisement);
		myadvertisement.setProduct(this);

		return myadvertisement;
	}

	public Myadvertisement removeMyadvertisement(Myadvertisement myadvertisement) {
		getMyadvertisements().remove(myadvertisement);
		myadvertisement.setProduct(null);

		return myadvertisement;
	}

	

	public String getpType() {
		return pType;
	}

	public void setpType(String pType) {
		this.pType = pType;
	}

	@Override
	public String toString() {
		return "Product [pId=" + pId + ", pDescription=" + pDescription
				+ ", pImage=" + pImage + ", pName=" + pName + ", pPrice="
				+ pPrice + ", pType=" + pType + "]";
	}

	

}