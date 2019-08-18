package pojos;

import java.io.Serializable;

import javax.persistence.*;

import java.math.BigDecimal;
import java.util.List;


/**
 * The persistent class for the CUSTOMERS database table.
 * 
 */
@Entity
@Table(name="CUSTOMERS")
@NamedQuery(name="Customer.findAll", query="SELECT c FROM Customer c")
public class Customer implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="C_ID")
	private long cId;

	@Column(name="C_ADDRESS")
	private String cAddress;

	@Column(name="C_EMAIL")
	private String cEmail;

	@Column(name="C_MOBILENO")
	private BigDecimal cMobileno;

	@Column(name="C_NAME")
	private String cName;

	@Column(name="C_PASSWORD")
	private String cPassword;

	//bi-directional many-to-one association to Favourite
	@OneToMany(mappedBy="customer")
	private List<Favourite> favourites;

	//bi-directional many-to-one association to Myadvertisement
	@OneToMany(mappedBy="customer")
	private List<Myadvertisement> myadvertisements;

	public Customer(String cAddress, String cEmail, BigDecimal cMobileno,
			String cName, String cPassword) {
		super();
		this.cAddress = cAddress;
		this.cEmail = cEmail;
		this.cMobileno = cMobileno;
		this.cName = cName;
		this.cPassword = cPassword;
	}



	public Customer() {
		System.out.println("in cust default");
	}
	
	

	public long getCId() {
		return this.cId;
	}

	public void setCId(long cId) {
		this.cId = cId;
	}

	public String getCAddress() {
		return this.cAddress;
	}

	public void setCAddress(String cAddress) {
		this.cAddress = cAddress;
	}

	public String getCEmail() {
		return this.cEmail;
	}

	public void setCEmail(String cEmail) {
		this.cEmail = cEmail;
	}

	public BigDecimal getCMobileno() {
		return this.cMobileno;
	}

	public void setCMobileno(BigDecimal cMobileno) {
		this.cMobileno = cMobileno;
	}

	public String getCName() {
		return this.cName;
	}

	public void setCName(String cName) {
		this.cName = cName;
	}

	public String getCPassword() {
		return this.cPassword;
	}

	public void setCPassword(String cPassword) {
		this.cPassword = cPassword;
	}

	public List<Favourite> getFavourites() {
		return this.favourites;
	}

	public void setFavourites(List<Favourite> favourites) {
		this.favourites = favourites;
	}

	public Favourite addFavourite(Favourite favourite) {
		getFavourites().add(favourite);
		favourite.setCustomer(this);

		return favourite;
	}

	public Favourite removeFavourite(Favourite favourite) {
		getFavourites().remove(favourite);
		favourite.setCustomer(null);

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
		myadvertisement.setCustomer(this);

		return myadvertisement;
	}

	public Myadvertisement removeMyadvertisement(Myadvertisement myadvertisement) {
		getMyadvertisements().remove(myadvertisement);
		myadvertisement.setCustomer(null);

		return myadvertisement;
	}

	@Override
	public String toString() {
		return "Customer [cId=" + cId + ", cAddress=" + cAddress + ", cEmail="
				+ cEmail + ", cMobileno=" + cMobileno + ", cName=" + cName
				+ ", cPassword=" + cPassword + "]";
	}

}