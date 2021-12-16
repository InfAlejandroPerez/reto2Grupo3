package updateInsertDelete;

import java.util.Date;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import HibernateUtilities.HibernateUtil;
import primero.Departamentos;
import primero.Empleados;

public class modificacionesBD {

	public static void main(String[] args) {
		//INSERTAR UN DEPARTAMENTO
		
		Departamentos informatica = new Departamentos();
		informatica.setDeptNo((byte) 60);
		informatica.setDnombre("informática");
		informatica.setLoc("Elorrieta");
		
		Transaction tx;
		SessionFactory sesion = HibernateUtil.getSessionFactory();
		Session s = sesion.openSession();
		tx = s.beginTransaction();
		
		//Guardar objeto en la base de datos
		//s.save(informatica);
		//Actualizar información en la base de datos
		//tx.commit();
		
		//Creamos una nueva transacción después del commit
		//tx = s.beginTransaction();
		
		//INSERTAR UN EMPLEADO
		
		Empleados empleado = new Empleados();
		empleado.setEmpNo((short) 8000);
		empleado.setOficio("DIRECTOR");
		empleado.setApellido("BARRIO");
		empleado.setComision(null);
		empleado.setDir(null);
		Date fechaActual = new Date();
		empleado.setFechaAlt(fechaActual);
		empleado.setSalario((float) 3000);
		empleado.setDepartamentos(informatica);
		
		//s.save(empleado);
		//tx.commit();
		
		//tx = s.beginTransaction();
		
		String hql = "FROM Empleados as e WHERE e.apellido = 'JOEL'";
		Query q = s.createQuery(hql);
		
		Empleados e = (Empleados) q.uniqueResult();
		e.setSalario((float)4000);
		s.update(e);
		tx.commit();
		
		if(s.isConnected())
			s.close();
		if(!sesion.isClosed())
			sesion.close();

	}

}
