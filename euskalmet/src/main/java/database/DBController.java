package database;

import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import modelo.dbClasses.Datos;
import modelo.dbClasses.Estaciones;
import modelo.dbClasses.Municipios;
import modelo.dbClasses.Provincia;

public class DBController {
	private SessionFactory sessionFactory;	
	
	public DBController() {
		this.sessionFactory = HibernateUtil.getSessionFactory();
	}

	public Session getCurrentSession() {
		return this.sessionFactory.getCurrentSession();
	}
	
	public void closeSessionFactory() {
		if(!this.sessionFactory.isClosed())
			this.sessionFactory.close();
	}
	
	public Session openSession() {
		return this.sessionFactory.openSession();
	}
	
	
	public List<Datos> getDatos() {
		String hql = "FROM modelo.dbClasses.Datos";
		Session sesion = this.openSession();
		
		Query query = sesion.createQuery(hql);
		List<Datos> lista = query.list();
		
		sesion.close();
		return lista;
	}
	
	public List<Datos> getDatos(int codEstacion, LocalDate fecha, LocalTime hora) {
		List<Datos> ret = null;
		String hql = "FROM modelo.dbClasses.Datos as dat WHERE Fecha = :fecha AND Hora = :hora";
					
		DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		String dateStr = dateFormatter.format(fecha);
		
		DateTimeFormatter timeFormatter = DateTimeFormatter.ofPattern("HH:mm:ss");
		String timeStr = timeFormatter.format(hora);
				
		Session sesion = this.openSession();
		
		Query query = sesion.createQuery(hql);
		query.setParameter("fecha", dateStr);
		query.setParameter("hora", timeStr);
		
		ret = query.list();
		
		sesion.close();
		return ret;
	}
	
	
	public Provincia getProvincia(int codProvincia) {
		Provincia ret;
		String hql = "FROM modelo.dbClasses.Provincia WHERE CodProvincia = :codProvincia";
		Session sesion = this.openSession();
		sesion.beginTransaction();
		
		Query query = sesion.createQuery(hql);
		query.setParameter("codProvincia", codProvincia);
		
		ret = (Provincia) query.uniqueResult();
		
		sesion.close();
		return ret;
	}
	
	public Municipios getMunicipio(int codMunicipio, int codProvincia) {
		Municipios ret;
		String hql = "FROM modelo.dbClasses.Municipios WHERE CodMunicipio = :codMunicipio and CodProvincia = :codProvincia";
		Session sesion = this.openSession();
		sesion.beginTransaction();
		
		Query query = sesion.createQuery(hql);
		query.setParameter("codMunicipio", codMunicipio);
		query.setParameter("codProvincia", codProvincia);
		
		ret = (Municipios) query.uniqueResult();
		
		sesion.close();
		return ret;
	}
	
	public Municipios getMunicipio(String nameMunicipio) {
		Municipios ret;
		String hql = "FROM modelo.dbClasses.Municipios WHERE Nombre = :nameMunicipio";
		Session sesion = this.openSession();
		
		Query query = sesion.createQuery(hql);
		query.setParameter("nameMunicipio", nameMunicipio);
		
		ret = (Municipios) query.uniqueResult();
		
		sesion.close();
		return ret;		
	}
	
	public List<Provincia> getProvincias() {
		String hql = "FROM modelo.dbClasses.Provincia";
		Session sesion = this.openSession();
		sesion.beginTransaction();
		
		Query query = sesion.createQuery(hql);
		List<Provincia> lista = query.list();
		
		sesion.close();
		return lista;
	}
	
	public List<Municipios> getMunicipios() {
		String hql = "FROM modelo.dbClasses.Municipios";
		Session sesion = this.openSession();
		sesion.beginTransaction();
		
		Query query = sesion.createQuery(hql);
		List<Municipios> lista = query.list();
		
		sesion.close();
		return lista;
	}
	
	public Estaciones getEstacionContaining(String[] partes) {
		String hql = "FROM modelo.dbClasses.Estaciones";
		Session sesion = this.openSession();
				
		hql += " WHERE ";

		for(int i = 0 ; i < partes.length ; i++) {
			if(i > 0) hql += " AND ";

			hql +=  "Nombre" + " LIKE " + (":parte" + i);
		}
		
		Query query = sesion.createQuery(hql);
		
		for(int i = 0 ; i < partes.length ; i++) {
			String paramName = "parte" + i;
			String paramValue = "%"+ partes[i] + "%";
			query.setParameter(paramName, paramValue);
		}

		Estaciones ret = (Estaciones) query.uniqueResult();
		sesion.close();
		return ret;
	}
	
	// Geters and Setters
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}


	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	

}
