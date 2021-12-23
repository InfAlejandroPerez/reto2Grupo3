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
	private Session session;
	
	
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
	
	

}
