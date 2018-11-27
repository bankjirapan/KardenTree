/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kardentreeCustomer.jpa.models;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Krittapak
 */
@Entity
@Table(name = "ORDERDETAIL")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Orderdetail.findAll", query = "SELECT o FROM Orderdetail o")
    , @NamedQuery(name = "Orderdetail.findByOrderdetailid", query = "SELECT o FROM Orderdetail o WHERE o.orderdetailid = :orderdetailid")
    , @NamedQuery(name = "Orderdetail.findByOrderid", query = "SELECT o FROM Orderdetail o WHERE o.orderid = :orderid")
    , @NamedQuery(name = "Orderdetail.findByProductid", query = "SELECT o FROM Orderdetail o WHERE o.productid = :productid")
    , @NamedQuery(name = "Orderdetail.findByQuantity", query = "SELECT o FROM Orderdetail o WHERE o.quantity = :quantity")
    , @NamedQuery(name = "Orderdetail.findByPrice", query = "SELECT o FROM Orderdetail o WHERE o.price = :price")})
public class Orderdetail implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ORDERDETAILID")
    private Integer orderdetailid;
    @Basic(optional = false)
    @NotNull
    @Column(name = "ORDERID")
    private int orderid;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "PRODUCTID")
    private String productid;
    @Basic(optional = false)
    @NotNull
    @Column(name = "QUANTITY")
    private int quantity;
    @Basic(optional = false)
    @NotNull
    @Column(name = "PRICE")
    private double price;

    public Orderdetail() {
    }

    public Orderdetail(Integer orderdetailid) {
        this.orderdetailid = orderdetailid;
    }

    public Orderdetail(Integer orderdetailid, int orderid, String productid, int quantity, double price) {
        this.orderdetailid = orderdetailid;
        this.orderid = orderid;
        this.productid = productid;
        this.quantity = quantity;
        this.price = price;
    }

    public Integer getOrderdetailid() {
        return orderdetailid;
    }

    public void setOrderdetailid(Integer orderdetailid) {
        this.orderdetailid = orderdetailid;
    }

    public int getOrderid() {
        return orderid;
    }

    public void setOrderid(int orderid) {
        this.orderid = orderid;
    }

    public String getProductid() {
        return productid;
    }

    public void setProductid(String productid) {
        this.productid = productid;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (orderdetailid != null ? orderdetailid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Orderdetail)) {
            return false;
        }
        Orderdetail other = (Orderdetail) object;
        if ((this.orderdetailid == null && other.orderdetailid != null) || (this.orderdetailid != null && !this.orderdetailid.equals(other.orderdetailid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "kardentreeCustomer.jpa.models.Orderdetail[ orderdetailid=" + orderdetailid + " ]";
    }
    
}
