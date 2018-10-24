/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kardentreeAdmin.jpa.controller;

import java.io.Serializable;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.NoResultException;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import javax.transaction.UserTransaction;
import kardentreeAdmin.jpa.controller.exceptions.NonexistentEntityException;
import kardentreeAdmin.jpa.controller.exceptions.PreexistingEntityException;
import kardentreeAdmin.jpa.controller.exceptions.RollbackFailureException;
import kardentreeAdmin.jpa.models.AdminLogin;

/**
 *
 * @author bankcom
 */
public class AdminLoginJpaController implements Serializable {

    public AdminLoginJpaController(UserTransaction utx, EntityManagerFactory emf) {
        this.utx = utx;
        this.emf = emf;
    }
    private UserTransaction utx = null;
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(AdminLogin adminLogin) throws PreexistingEntityException, RollbackFailureException, Exception {
        EntityManager em = null;
        try {
            utx.begin();
            em = getEntityManager();
            em.persist(adminLogin);
            utx.commit();
        } catch (Exception ex) {
            try {
                utx.rollback();
            } catch (Exception re) {
                throw new RollbackFailureException("An error occurred attempting to roll back the transaction.", re);
            }
            if (findAdminLogin(adminLogin.getId()) != null) {
                throw new PreexistingEntityException("AdminLogin " + adminLogin + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(AdminLogin adminLogin) throws NonexistentEntityException, RollbackFailureException, Exception {
        EntityManager em = null;
        try {
            utx.begin();
            em = getEntityManager();
            adminLogin = em.merge(adminLogin);
            utx.commit();
        } catch (Exception ex) {
            try {
                utx.rollback();
            } catch (Exception re) {
                throw new RollbackFailureException("An error occurred attempting to roll back the transaction.", re);
            }
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                Integer id = adminLogin.getId();
                if (findAdminLogin(id) == null) {
                    throw new NonexistentEntityException("The adminLogin with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(Integer id) throws NonexistentEntityException, RollbackFailureException, Exception {
        EntityManager em = null;
        try {
            utx.begin();
            em = getEntityManager();
            AdminLogin adminLogin;
            try {
                adminLogin = em.getReference(AdminLogin.class, id);
                adminLogin.getId();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The adminLogin with id " + id + " no longer exists.", enfe);
            }
            em.remove(adminLogin);
            utx.commit();
        } catch (Exception ex) {
            try {
                utx.rollback();
            } catch (Exception re) {
                throw new RollbackFailureException("An error occurred attempting to roll back the transaction.", re);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<AdminLogin> findAdminLoginEntities() {
        return findAdminLoginEntities(true, -1, -1);
    }

    public List<AdminLogin> findAdminLoginEntities(int maxResults, int firstResult) {
        return findAdminLoginEntities(false, maxResults, firstResult);
    }

    private List<AdminLogin> findAdminLoginEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(AdminLogin.class));
            Query q = em.createQuery(cq);
            if (!all) {
                q.setMaxResults(maxResults);
                q.setFirstResult(firstResult);
            }
            return q.getResultList();
        } finally {
            em.close();
        }
    }

    public AdminLogin findAdminLogin(Integer id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(AdminLogin.class, id);
        } finally {
            em.close();
        }
    }

    public AdminLogin findAdminUsername(String username) {
        EntityManager em = getEntityManager();
        try {
            Query query = em.createNamedQuery("AdminLogin.findByUsername");
            query.setParameter("username", username);
            return (AdminLogin) query.getSingleResult();

        } finally {
            em.close();
        }
    }

    public int getAdminLoginCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<AdminLogin> rt = cq.from(AdminLogin.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }

}
