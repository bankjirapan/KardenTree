/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kardentreeAdmin.jpa.models;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author ryan.
 */
@Entity
@Table(name = "PRODUCT")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Product.findAll", query = "SELECT p FROM Product p")
    , @NamedQuery(name = "Product.findByProductid", query = "SELECT p FROM Product p WHERE p.productid = :productid")
    , @NamedQuery(name = "Product.findByProductname", query = "SELECT p FROM Product p WHERE p.productname = :productname")
    , @NamedQuery(name = "Product.findByCategory", query = "SELECT p FROM Product p WHERE upper(p.category) = upper(:category)")
    , @NamedQuery(name = "Product.findByType", query = "SELECT p FROM Product p WHERE p.type = :type")
    , @NamedQuery(name = "Product.findByDetail", query = "SELECT p FROM Product p WHERE p.detail = :detail")
    , @NamedQuery(name = "Product.findByPrice", query = "SELECT p FROM Product p WHERE p.price = :price")
    , @NamedQuery(name = "Product.findByPicture", query = "SELECT p FROM Product p WHERE p.picture = :picture")
    , @NamedQuery(name = "Product.findByQuantity", query = "SELECT p FROM Product p WHERE p.quantity = :quantity")
    , @NamedQuery(name = "Product.SearchByName", query = "SELECT p FROM Product p WHERE upper(p.productname)"
            + " like upper(:search) or upper(p.category) like upper(:search)")
    , @NamedQuery(name = "Product.SearchByCategory", query = "SELECT p FROM Product p WHERE upper(p.category) like upper(:category)")
    , @NamedQuery(name = "Product.SortByNameAz", query = "SELECT p FROM Product p ORDER by p.productname ASC")
    , @NamedQuery(name = "Product.SortByNameZa", query = "SELECT p FROM Product p ORDER by p.productname DESC")
    , @NamedQuery(name = "Product.SortByPriceLow", query = "SELECT p FROM Product p ORDER by p.price ASC")
    , @NamedQuery(name = "Product.SortByPriceHigh", query = "SELECT p FROM Product p ORDER by p.price DESC")
})
public class Product implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "PRODUCTID")
    private String productid;
    @Size(max = 100)
    @Column(name = "PRODUCTNAME")
    private String productname;
    @Size(max = 100)
    @Column(name = "CATEGORY")
    private String category;
    @Size(max = 100)
    @Column(name = "TYPE")
    private String type;
    @Size(max = 1000)
    @Column(name = "DETAIL")
    private String detail;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "PRICE")
    private Double price;
    @Size(max = 1000)
    @Column(name = "PICTURE")
    private String picture;
    @Column(name = "QUANTITY")
    private Integer quantity;

    public Product() {
    }

    public Product(String productid) {
        this.productid = productid;
    }

    public String getProductid() {
        return productid;
    }

    public void setProductid(String productid) {
        this.productid = productid;
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (productid != null ? productid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Product)) {
            return false;
        }
        Product other = (Product) object;
        if ((this.productid == null && other.productid != null) || (this.productid != null && !this.productid.equals(other.productid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "kardentreeAdmin.jpa.models.Product[ productid=" + productid + " ]";
    }

}
