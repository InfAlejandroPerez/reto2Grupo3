package controlador.bbdd;

import java.sql.Date;
import java.sql.Time;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import controlador.hibernateUtilities.HibernateUtil;
import modelo.Datos;

public class BBDDController {
	private SessionFactory sessionFactory;
	private Session session;
	
	
	public BBDDController() {
		this.sessionFactory = HibernateUtil.getSessionFactory();
	}

	
	public void closeSessionFactory() {
		if(!this.sessionFactory.isClosed())
			this.sessionFactory.close();
	}
	
	public List<Object> query(String hql) {
		return null;
	}
	
	public List<Datos> getDatos() {
		String hql = "FROM modelo.Datos";
		Session sesion = this.sessionFactory.getCurrentSession();
		sesion.beginTransaction();
		
		Query query = sesion.createQuery(hql);
		List<Datos> lista = query.list();
		
		sesion.close();
		return lista;
	}
	
	public List<Datos> getDatos(int codEstacion, Date fecha, Time hora) {
		String hql = "FROM modelo.Datos";
		Session sesion = this.sessionFactory.getCurrentSession();
		sesion.beginTransaction();
		
		Query query = sesion.createQuery(hql);
		List<Datos> lista = query.list();
		
		sesion.close();
		return lista;
	}
	
	
	
	
	

}
