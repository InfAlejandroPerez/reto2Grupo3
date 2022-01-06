package test.database;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.MethodOrderer.OrderAnnotation;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;

import database.HibernateUtil;
import modelo.dbClasses.Municipios;
import modelo.dbClasses.Provincia;
import modelo.dbClasses.Usuarios;

@TestMethodOrder(OrderAnnotation.class)
class CRUDTest {

	private static SessionFactory sessionFactory;
	private Session session;
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		sessionFactory = HibernateUtil.getSessionFactory();
		System.out.println("SessionFactory created.");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		sessionFactory.close();
		System.out.println("SessionFactory destroyed.");
	}

	@BeforeEach
	void setUp() throws Exception {
		session = sessionFactory.openSession();
		System.out.println("Session opened.");
	}

	@AfterEach
	void tearDown() throws Exception {
		session.close();
		System.out.println("Sesison closed");
	}

	@Test
	@Order(1)
	void testCreate() {
		System.out.println("Running testCreate...");
		session.beginTransaction();
		
		Usuarios user = new Usuarios(1, "Markel", "password");
		
		Integer id = (Integer) session.save(user);
		
		session.getTransaction().commit();
		
		assertTrue(id > 0);
	}
	
	@Test
	@Order(3)
	void testUpdate() {
		System.out.println("Running testUpdate...");
		
		Integer id = 1;
		Usuarios user = new Usuarios(id, "Markel", "contraseña");
		session.beginTransaction();
		session.update(user);
		session.getTransaction().commit();
		
		Usuarios updatetUser = session.get(Usuarios.class, id);
		
		assertEquals(updatetUser.getPassword(), "contraseña");
	}
	
	@Test
	@Order(2)
	void testGet() {
		System.out.println("Running testGet.");
		int id = 1;
		
		Usuarios user = session.get(Usuarios.class, id);
		
		assertEquals("Markel", user.getNombre());
	}
	
	@Test
	@Order(4)
	void testList() {
		System.out.println("Running testList...");
		
		Query query = session.createQuery("FROM modelo.Municipios");
		List<Municipios> muns = query.list();
		
		assertFalse(muns.isEmpty());
	}
	
	
	@Test
	@Order(5)
	void testDelete() {
		System.out.println("Running testDelete...");
		
		Usuarios user = session.get(Usuarios.class, 1);
		session.beginTransaction();
		session.delete(user);
		session.getTransaction().commit();
		
		Usuarios userDeleted = session.get(Usuarios.class, 1);

		assertNull(userDeleted);
	}
	
}
