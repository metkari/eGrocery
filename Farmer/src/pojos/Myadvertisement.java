
package pojos;

import java.io.Serializable;

import javax.persistence.*;


/**
 * The persistent class for the MYADVERTISEMENTS database table.
 * 
 */
@Entity
@Table(name="MYADVERTISEMENTS")
@NamedQuery(name="Myadvertisement.findAll", query="SELECT m FROM Myadvertisement m")
public class Myadvertisement implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="SR_NO")
	@GeneratedValue
	private long srNo;

	//bi-directional many-to-one association to Customer
	@ManyToOne
	@JoinColumn(name="C_ID")
	private Customer customer;

	//bi-directional many-to-one association to Product
	@ManyToOne
	@JoinColumn(name="P_ID")
	private Product product;

	public Myadvertisement() {
	}

	public long getSrNo() {
		return this.srNo;
	}

	public void setSrNo(long srNo) {
		this.srNo = srNo;
	}

	public Customer getCustomer() {
		return this.customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Product getProduct() {
		return this.product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	@Override
	public String toString() {
		return "Myadvertisement [srNo=" + srNo + ", customer=" + customer
				+ ", product=" + product + "]";
	}
	

}