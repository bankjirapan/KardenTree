/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kardentreeCustomer.jpa.models;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author llujo
 */
@Entity
@Table(name = "ORDERLIST")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Orderlist.findAll", query = "SELECT o FROM Orderlist o")
    , @NamedQuery(name = "Orderlist.findByOrderid", query = "SELECT o FROM Orderlist o WHERE o.orderid = :orderid")
    , @NamedQuery(name = "Orderlist.findByAccountid", query = "SELECT o FROM Orderlist o WHERE o.accountid = :accountid")
    , @NamedQuery(name = "Orderlist.findByProductid", query = "SELECT o FROM Orderlist o WHERE o.productid = :productid")
    , @NamedQuery(name = "Orderlist.findByTotalprice", query = "SELECT o FROM Orderlist o WHERE o.totalprice = :totalprice")
    , @NamedQuery(name = "Orderlist.findByAddressid", query = "SELECT o FROM Orderlist o WHERE o.addressid = :addressid")
    , @NamedQuery(name = "Orderlist.findByDate", query = "SELECT o FROM Orderlist o WHERE o.date = :date")})
public class Orderlist implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "ORDERID")
    private String orderid;
    @Size(max = 7)
    @Column(name = "ACCOUNTID")
    private String accountid;
    @Size(max = 50)
    @Column(name = "PRODUCTID")
    private String productid;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "TOTALPRICE")
    private Double totalprice;
    @Size(max = 50)
    @Column(name = "ADDRESSID")
    private String addressid;
    @Column(name = "DATE")
    @Temporal(TemporalType.DATE)
    private Date date;

    public Orderlist() {
    }

    public Orderlist(String orderid) {
        this.orderid = orderid;
    }

    public String getOrderid() {
        return orderid;
    }

    public void setOrderid(String orderid) {
        this.orderid = orderid;
    }

    public String getAccountid() {
        return accountid;
    }

    public void setAccountid(String accountid) {
        this.accountid = accountid;
    }

    public String getProductid() {
        return productid;
    }

    public void setProductid(String productid) {
        this.productid = productid;
    }

    public Double getTotalprice() {
        return totalprice;
    }

    public void setTotalprice(Double totalprice) {
        this.totalprice = totalprice;
    }

    public String getAddressid() {
        return addressid;
    }

    public void setAddressid(String addressid) {
        this.addressid = addressid;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (orderid != null ? orderid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Orderlist)) {
            return false;
        }
        Orderlist other = (Orderlist) object;
        if ((this.orderid == null && other.orderid != null) || (this.orderid != null && !this.orderid.equals(other.orderid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "kardentreeCustomer.jpa.models.Orderlist[ orderid=" + orderid + " ]";
    }
    
}
