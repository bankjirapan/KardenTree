/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kardentreeAdmin.jpa.models;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author bankcom
 */
@Entity
@Table(name = "ADMIN_LOGIN")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "AdminLogin.findAll", query = "SELECT a FROM AdminLogin a")
    , @NamedQuery(name = "AdminLogin.findById", query = "SELECT a FROM AdminLogin a WHERE a.adminLoginPK.id = :id")
    , @NamedQuery(name = "AdminLogin.findByUsername", query = "SELECT a FROM AdminLogin a WHERE a.adminLoginPK.username = :username")
    , @NamedQuery(name = "AdminLogin.findByPassword", query = "SELECT a FROM AdminLogin a WHERE a.password = :password")
    , @NamedQuery(name = "AdminLogin.findByName", query = "SELECT a FROM AdminLogin a WHERE a.name = :name")
    , @NamedQuery(name = "AdminLogin.findByAddress", query = "SELECT a FROM AdminLogin a WHERE a.address = :address")
    , @NamedQuery(name = "AdminLogin.findByEmail", query = "SELECT a FROM AdminLogin a WHERE a.email = :email")})
public class AdminLogin implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected AdminLoginPK adminLoginPK;
    @Size(max = 100)
    @Column(name = "PASSWORD")
    private String password;
    @Size(max = 100)
    @Column(name = "NAME")
    private String name;
    @Size(max = 100)
    @Column(name = "ADDRESS")
    private String address;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Size(max = 150)
    @Column(name = "EMAIL")
    private String email;

    public AdminLogin() {
    }

    public AdminLogin(AdminLoginPK adminLoginPK) {
        this.adminLoginPK = adminLoginPK;
    }

    public AdminLogin(Boolean id, String username) {
        this.adminLoginPK = new AdminLoginPK(id, username);
    }

    public AdminLoginPK getAdminLoginPK() {
        return adminLoginPK;
    }

    public void setAdminLoginPK(AdminLoginPK adminLoginPK) {
        this.adminLoginPK = adminLoginPK;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (adminLoginPK != null ? adminLoginPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof AdminLogin)) {
            return false;
        }
        AdminLogin other = (AdminLogin) object;
        if ((this.adminLoginPK == null && other.adminLoginPK != null) || (this.adminLoginPK != null && !this.adminLoginPK.equals(other.adminLoginPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "kardentreeAdmin.jpa.models.AdminLogin[ adminLoginPK=" + adminLoginPK + " ]";
    }
    
}
