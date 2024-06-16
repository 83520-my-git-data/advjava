package com.sunbeam.dao;

import java.io.Serializable;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.sunbeam.entities.Product;
import com.sunbeam.utils.HibernateUtils;



public class ProductDaoImpl implements ProductDao{
	
	String msg = "Product can't be added...";

	@Override
	public String addProduct(Product product) {
		
		Session session = HibernateUtils.getFactory().getCurrentSession();
		
		Transaction ts = session.beginTransaction();
		
		try {
			Serializable productId = session.save(product);
			
			msg = "Product added with product id : " + productId;
			
			ts.commit();
		}
		catch(RuntimeException e)
		{
			if(ts != null)
			{
				ts.rollback();
			}
			
			throw e;
		}
		
		return msg;
	}

	
	
	
	@Override
	public Product getProductById(int id) {
		
		Product product = null;
		
		Session session = HibernateUtils.getFactory().getCurrentSession();
		
		Transaction ts = session.beginTransaction();
		
		
		try{
			
			product = session.get(Product.class, id);
			ts.commit();
			
		}
		catch(RuntimeException e)
		{
			if(ts != null)
			{
				ts.rollback();
			}
				
			throw e;
		}
		
		return product;
	}	
}
