package com.jialin.dao;

import java.io.Serializable;  
import java.lang.reflect.ParameterizedType;  
import java.util.Collection;  
import java.util.List;  
  
import org.apache.commons.logging.Log;  
import org.apache.commons.logging.LogFactory;  
import org.hibernate.LockMode;  
import org.springframework.dao.DataAccessException;  
import org.springframework.orm.hibernate3.support.HibernateDaoSupport; 

public class BaseDao<T, ID extends Serializable> extends HibernateDaoSupport implements IBaseDao<T, ID> {
	private Log logger = LogFactory.getLog(getClass());  
	  
    protected Class<T> entityClass;  
  
    public BaseDao() {  
  
    }
  
    protected Class getEntityClass() {  
        if (entityClass == null) {  
            entityClass = (Class<T>) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];  
            logger.debug("T class = " + entityClass.getName());  
        }  
        return entityClass;  
    }  
  
    public void saveOrUpdate(T t) throws DataAccessException {  
        this.getHibernateTemplate().saveOrUpdate(t);  
    }  
  
    public T load(ID id) throws DataAccessException {  
        T load = (T) getHibernateTemplate().load(getEntityClass(), id);  
        return load;  
    }  
  
    public T get(ID id) throws DataAccessException {  
        T load = (T) getHibernateTemplate().get(getEntityClass(), id);  
        return load;  
    }  
  
    public boolean contains(T t) throws DataAccessException {  
        return getHibernateTemplate().contains(t);  
    }  
  
    public void delete(T t, LockMode lockMode) throws DataAccessException {  
        getHibernateTemplate().delete(t, lockMode);  
    }  
  
    public void delete(T t) throws DataAccessException {  
        getHibernateTemplate().delete(t);  
    }  
  
    public void deleteAll(Collection<T> entities) throws DataAccessException {  
        getHibernateTemplate().deleteAll(entities);  
    }  
  
    public List<T> find(String queryString, Object value) throws DataAccessException {  
        List<T> find = (List<T>) getHibernateTemplate().find(queryString, value);  
        return find;  
    }  
  
    public List<T> find(String queryString, Object[] values) throws DataAccessException {  
        List<T> find = (List<T>) getHibernateTemplate().find(queryString, values);  
        return find;  
    }  
  
    public List<T> find(String queryString) throws DataAccessException {  
        return (List<T>) getHibernateTemplate().find(queryString);  
    }  
  
    public void refresh(T t, LockMode lockMode) throws DataAccessException {  
        getHibernateTemplate().refresh(t, lockMode);  
    }  
  
    public void refresh(T t) throws DataAccessException {  
        getHibernateTemplate().refresh(t);  
    }  
  
    public Serializable save(T t) throws DataAccessException {  
        return getHibernateTemplate().save(t);  
    }  
  
    public void saveOrUpdateAll(Collection<T> entities) throws DataAccessException {  
        getHibernateTemplate().saveOrUpdateAll(entities);  
    }  
  
    public void update(T t, LockMode lockMode) throws DataAccessException {  
        getHibernateTemplate().update(t, lockMode);  
    }  
  
    public void update(T t) throws DataAccessException {  
        getHibernateTemplate().update(t);  
    }  
  
    public List<T> list() throws DataAccessException {  
        return getHibernateTemplate().loadAll(getEntityClass());  
  
    }  
  
    public List<T> findByNamedQuery(String queryName) throws DataAccessException {  
        return getHibernateTemplate().findByNamedQuery(queryName);  
    }  
  
    public List<T> findByNamedQuery(String queryName, Object value) throws DataAccessException {  
        return getHibernateTemplate().findByNamedQuery(queryName, value);  
    }  
  
    public List<T> findByNamedQuery(String queryName, Object[] values) throws DataAccessException {  
        return getHibernateTemplate().findByNamedQuery(queryName, values);  
    }  
}
