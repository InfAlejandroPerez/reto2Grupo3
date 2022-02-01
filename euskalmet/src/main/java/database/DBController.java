package database;

import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.swing.ImageIcon;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import modelo.dbClasses.Datos;
import modelo.dbClasses.EspaciosNaturales;
import modelo.dbClasses.Estaciones;
import modelo.dbClasses.Hashes;
import modelo.dbClasses.Municipios;
import modelo.dbClasses.Provincia;
import modelo.dbClasses.Usuarios;

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
	
	public Hashes getHash(String url) {
		Session sesion = this.openSession();
		String hql = "FROM modelo.dbClasses.Hashes WHERE Url = :urlHash";
		Hashes hash = null;
		Query query = sesion.createQuery(hql);
		query.setParameter("urlHash", url);
		
		hash = (Hashes) query.uniqueResult();
		
		sesion.close();
		return hash;
	}
	
	public void setHash(String url, String hashStr) {
		Session sesion = this.openSession();
		Transaction transaction = sesion.getTransaction();
		transaction.begin();
		Hashes hash = new Hashes();
		hash.setCodHash(hashStr);
		hash.setUrl(url);
		sesion.save(hash);
		
		transaction.commit();
		sesion.close();
	}
	
	public void setFotoEspacio(long id, String name) {
		Session session = this.openSession();
		session.beginTransaction();
		EspaciosNaturales esp = session.get(EspaciosNaturales.class, (int)id);
		esp.setImagen(name);
		session.save(esp);
		session.getTransaction().commit();
		session.close();
	}
	
	public String getFotoEspacio(long id) {
		String ret = "";
		Session session = this.openSession();
		EspaciosNaturales esp = session.get(EspaciosNaturales.class, (int)id);
		ret = esp.getImagen();
		session.close();
		
		return ret;
	}
	
	public List<Datos> getDatos() {
		String hql = "FROM modelo.dbClasses.Datos";
		Session sesion = this.openSession();
		
		Query query = sesion.createQuery(hql);
		List<Datos> lista = query.list();
		
		sesion.close();
		return lista;
	}
	
	public void insertUser(String username, String password) {
		Session session = this.openSession();
		
		// start transaction
		session.beginTransaction();

		int codUser = (new DBController()).getLastUserId(session);
		// create user
		Usuarios usuario = new Usuarios();
		usuario.setCodUsuario(codUser+1);
		usuario.setNombre(username);
		usuario.setPassword(password);

		// Save the invitation to database
		session.save(usuario);

		// Commit the transaction
		session.getTransaction().commit();
		session.close();
	}
	
	public Provincia getProvincia(String nombre) {
		Provincia ret = null;
		Session session = this.openSession();

		String hql = "FROM modelo.dbClasses.Provincia WHERE Nombre = :nombreProv";
		
		Query query = session.createQuery(hql);
		query.setParameter("nombreProv", nombre);
		ret = (Provincia) query.uniqueResult();
		session.close();
		return ret;	 	
	}
	
	public int getLastUserId(Session sesion) {
		int ret = 0;
		String hql = "SELECT max(codUsuario) FROM modelo.dbClasses.Usuarios";
		
		Query query = sesion.createQuery(hql);
		try {
			ret = (int) query.uniqueResult();
		} catch (Exception e) {
			ret = 0;
		}

		return ret;	 	
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
	
	public int getLastEspacioId(Session sesion) {
		int ret = 0;
		String hql = "SELECT max(codEspacio) FROM modelo.dbClasses.EspaciosNaturales";
		
		Query query = sesion.createQuery(hql);
		try {
			ret = (int) query.uniqueResult();
		} catch (Exception e) {
			ret = 0;
		}

		return ret;	 	
	}
	
	public List<Estaciones> getEstacionesMun(String nombreMunicipio) {
		List<Estaciones> ret = null;
		Municipios mun = null;
		String hql = "FROM modelo.dbClasses.Municipios WHERE Nombre = :nombreMun";
		Session sesion = this.openSession();
		sesion.beginTransaction();
		
		Query query = sesion.createQuery(hql);
		query.setParameter("nombreMun", nombreMunicipio);
		
		mun = (Municipios) query.uniqueResult();
		
		ret = new ArrayList<>( mun.getEstacioneses() );
		
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
	

	public List<Estaciones> getEstaciones() {
		String hql = "FROM modelo.dbClasses.Estaciones";
		Session sesion = this.openSession();
		sesion.beginTransaction();
		
		Query query = sesion.createQuery(hql);
		List<Estaciones> lista = query.list();
		
		sesion.close();
		return lista;
	}
	
	public Estaciones getEstacionFromName(String nombre) {
		Session sesion = this.openSession();
		Estaciones estacion = sesion.get(Estaciones.class, nombre);
		sesion.close();
		return estacion;
	}

	
	public List<Municipios> getMunicipios(String nombreProvincia) {
		String hql = "FROM modelo.dbClasses.Provincia WHERE Nombre = :nameProv";
		Session sesion = this.openSession();
		sesion.beginTransaction();
		
		Query query = sesion.createQuery(hql);
		query.setParameter("nameProv", nombreProvincia);
		Provincia prov = (Provincia) query.uniqueResult();
		
		List<Municipios>lista = new ArrayList( prov.getMunicipioses() );
		
		sesion.close();
		return lista;
	}
	
	
	/**
	 * Método que recoge los fragmentos de un nombre de estación hallado en el index y devuelve el objeto Estacion de la BBDD
	 * @param partes String[] Resultado de un split separado por _ del nombre del índice
	 * @return
	 */
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
	
	public EspaciosNaturales getEspacio(String nameEspacio) {
		EspaciosNaturales ret;
		String hql = "FROM modelo.dbClasses.EspaciosNaturales WHERE Nombre = :nameEspacio";
		Session sesion = this.openSession();
		
		Query query = sesion.createQuery(hql);
		query.setParameter("nameEspacio", nameEspacio);
		
		ret = (EspaciosNaturales) query.uniqueResult();
		
		sesion.close();
		return ret;		
	}
	
	public List<String> getCalidad(String nameEspacio) {
		EspaciosNaturales e = getEspacio(nameEspacio);
		int idEspacio = e.getCodEspacio();
		
		String hql = "SELECT NO2ICA "
				+ "FROM datos "
				+ "LEFT JOIN estaciones ON estaciones.Nombre=datos.NombreEstacion "
				+ "LEFT JOIN esta_en ON esta_en.CodMunicipio = estaciones.CodMunicipio  "
				+ "WHERE esta_en.CodEspacio = "+idEspacio
				+ " LIMIT 1";

		SessionFactory sessionFac = HibernateUtil.getSessionFactory();
		Session session = sessionFac.openSession();

		Query query = session.createSQLQuery(hql);

		
		List<String> lista = query.list();
		session.close();

		return lista;	
	}
	
	public List<EspaciosNaturales> getEspacios() {
		String hql = "FROM modelo.dbClasses.EspaciosNaturales";
		Session sesion = this.openSession();
		sesion.beginTransaction();
		
		Query query = sesion.createQuery(hql);
		List<EspaciosNaturales> lista = query.list();
		
		sesion.close();
		return lista;
	}
	
	public void setEspacioFavorito(Usuarios user, String espacioNatural) {

		Session session = this.openSession();
		session.beginTransaction();
		
		Set espacios = user.getEspaciosNaturaleses();
		EspaciosNaturales espacio = getEspacio(espacioNatural);
		espacios.add(espacio);
		
		user.setEspaciosNaturaleses(espacios);

		session.update(user);
		session.getTransaction().commit();
		session.close();
	}
	
	public EspaciosNaturales tieneEspacio(Set<EspaciosNaturales> espacios, String nombreEspacio) {
		for(EspaciosNaturales espacio : espacios) {
			if(espacio.getNombre().equals(nombreEspacio))
				return espacio;
		}
		return null;
	}
	
	public void quitarEspacioFavorito(Usuarios user, String espacioNatural) {

		Session session = this.openSession();
		session.beginTransaction();
		
		Set espacios = user.getEspaciosNaturaleses();
		EspaciosNaturales espacioFavorito = tieneEspacio(espacios, espacioNatural);
		if(espacioFavorito != null)
			espacios.remove(espacioFavorito);
		
		user.setEspaciosNaturaleses(espacios);

		session.update(user);
		session.getTransaction().commit();
		session.close();
	}
	

	public List<EspaciosNaturales> getEspaciosFavoritos(Usuarios user) {
		List<EspaciosNaturales> ret = new ArrayList<>( user.getEspaciosNaturaleses() );
		return ret;
		
	}
	
	public List<EspaciosNaturales> getEspacios(String nombreMunicipio){
		Municipios mun = getMunicipio(nombreMunicipio);
		List<EspaciosNaturales> espacios = new ArrayList<>( mun.getEspaciosNaturaleses() );
		return espacios;
	}
	
	public List<EspaciosNaturales> getEspaciosProv(String prov){
		Session sesion = this.openSession();
		List<Municipios> muns = getMunicipios(prov);
		List<EspaciosNaturales> espacios = new ArrayList();
		for(int i = 0 ; i < muns.size() ; i ++) {
			Set<EspaciosNaturales> espaciosSet = muns.get(i).getEspaciosNaturaleses();
			List<EspaciosNaturales> espaciosMunicipio = new ArrayList( espaciosSet ) ;
			espacios.addAll(espaciosMunicipio);	
		}
		sesion.close();
		return espacios;
	}
	
	public List<String> getEspaciosRanking(String prov){
		
		Provincia p = getProvincia(prov);
		int idProv = p.getCodProvincia();
		
		String hql = "SELECT es.nombre "
				+ "FROM favoritos_espacios "
				+ "JOIN espacios_naturales es ON es.CodEspacio=favoritos_espacios.CodEspacio "
				+ "JOIN esta_en esta ON esta.CodEspacio = es.CodEspacio "
				+ "WHERE esta.CodProvincia = "+idProv
				+ " GROUP BY es.CodEspacio "
				+ "ORDER BY COUNT(es.CodEspacio) "
				+ "DESC LIMIT 5";

		SessionFactory sessionFac = HibernateUtil.getSessionFactory();
		Session session = sessionFac.openSession();

		Query query = session.createSQLQuery(hql);

		
		List<String> lista = query.list();
		session.close();

		return lista;
	}
	
public List<String> getEspaciosRankingByMun(String mun){
		
		Municipios muni = getMunicipio(mun);
		int idMun = muni.getId().getCodMunicipio();
		
		String hql = "SELECT es.nombre "
				+ "FROM favoritos_espacios "
				+ "JOIN espacios_naturales es ON es.CodEspacio=favoritos_espacios.CodEspacio "
				+ "JOIN esta_en esta ON esta.CodEspacio = es.CodEspacio "
				+ "WHERE esta.CodMunicipio = "+idMun
				+ " GROUP BY es.CodEspacio "
				+ "ORDER BY COUNT(es.CodEspacio) "
				+ "DESC LIMIT 5";

		SessionFactory sessionFac = HibernateUtil.getSessionFactory();
		Session session = sessionFac.openSession();

		Query query = session.createSQLQuery(hql);

		
		List<String> lista = query.list();
		session.close();

		return lista;
	}

	
	public Usuarios getUsuario(String userName) {
		Usuarios ret = null;
		Session sesion = this.openSession();
		String hql = "FROM modelo.dbClasses.Usuarios WHERE Nombre = :userName";
		
		Query query = sesion.createQuery(hql);
		query.setParameter("userName", userName);
		
		ret = (Usuarios) query.uniqueResult();
		sesion.close();
		
		return ret;
	}
	
	
	public Estaciones getEstacion(String nombreEstacion) {
		String hql = "FROM modelo.dbClasses.Estaciones WHERE Nombre = :nameEstacion";
		Session sesion = this.openSession();
		sesion.beginTransaction();
		
		Query query = sesion.createQuery(hql);
		query.setParameter("nameEstacion", nombreEstacion);
		Estaciones estacion = (Estaciones) query.uniqueResult();
		
		sesion.close();
		return estacion;
	}
	
	// Geters and Setters
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}


	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	

}
