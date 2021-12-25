package controlador.bbdd;

import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import controlador.hibernateUtilities.HibernateUtil;
import modelo.Datos;
import modelo.Municipios;
import modelo.Provincia;

public class BBDDController {
	private SessionFactory sessionFactory;	
	
	public BBDDController() {
		this.sessionFactory = HibernateUtil.getSessionFactory();
	}

	
	public void closeSessionFactory() {
		if(!this.sessionFactory.isClosed())
			this.sessionFactory.close();
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
	
	public List<Datos> getDatos(int codEstacion, LocalDate fecha, LocalTime hora) {
		List<Datos> ret = null;
		String hql = "FROM modelo.Datos as dat WHERE Fecha = :fecha AND Hora = :hora";
					
		DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		String dateStr = dateFormatter.format(fecha);
		
		DateTimeFormatter timeFormatter = DateTimeFormatter.ofPattern("HH:mm:ss");
		String timeStr = timeFormatter.format(hora);
				
		Session sesion = this.sessionFactory.getCurrentSession();
		sesion.beginTransaction();
		
		Query query = sesion.createQuery(hql);
		query.setParameter("fecha", dateStr);
		query.setParameter("hora", timeStr);
		
		ret = query.list();
		
		sesion.close();
		return ret;
	}
	
	
	public Provincia getProvincia(int codProvincia) {
		Provincia ret;
		String hql = "FROM modelo.Provincia WHERE CodProvincia = :codProvincia";
		Session sesion = this.sessionFactory.getCurrentSession();
		sesion.beginTransaction();
		
		Query query = sesion.createQuery(hql);
		query.setParameter("codProvincia", codProvincia);
		
		ret = (Provincia) query.uniqueResult();
		
		sesion.close();
		return ret;
	}
	
	public Municipios getMunicipio(int codMunicipio) {
		Municipios ret;
		String hql = "FROM modelo.Municipios WHERE CodMunicipio = :codMunicipio";
		Session sesion = this.sessionFactory.getCurrentSession();
		sesion.beginTransaction();
		
		Query query = sesion.createQuery(hql);
		query.setParameter("codMunicipio", codMunicipio);
		
		ret = (Municipios) query.uniqueResult();
		
		sesion.close();
		return ret;
	}
	
	public List<Provincia> getProvincias() {
		String hql = "FROM modelo.Provincia";
		Session sesion = this.sessionFactory.getCurrentSession();
		sesion.beginTransaction();
		
		Query query = sesion.createQuery(hql);
		List<Provincia> lista = query.list();
		
		sesion.close();
		return lista;
	}
	
	public List<Municipios> getMunicipios() {
		String hql = "FROM modelo.Municipios";
		Session sesion = this.sessionFactory.getCurrentSession();
		sesion.beginTransaction();
		
		Query query = sesion.createQuery(hql);
		List<Municipios> lista = query.list();
		
		sesion.close();
		return lista;
	}
	
	public int getLastEstacionId() {
		int ret = 0;
		String hql = "SELECT max(codEstacion) FROM modelo.Estaciones";
		Session sesion = this.sessionFactory.getCurrentSession();
		sesion.beginTransaction();
		
		Query query = sesion.createQuery(hql);
		ret = (int) query.uniqueResult();
		
		sesion.close();
		return ret;	 	
	}


	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}


	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	// Geters and Setters
	

}
