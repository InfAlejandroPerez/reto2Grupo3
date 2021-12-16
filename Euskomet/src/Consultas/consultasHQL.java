package Consultas;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import HibernateUtilities.HibernateUtil;
import primero.Departamentos;

public class consultasHQL {
	
	public static void realizarConsulta(String consulta) {
		
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		SessionFactory sesion = HibernateUtil.getSessionFactory();
		Session session = sesion.openSession();
		// Visualiza los datos del departamento 30
		String hql = "from Departamentos as dep where dep.deptNo = 30";
		Query q = session.createQuery(hql);
		Departamentos dep = (Departamentos) q.uniqueResult();
		System.out.printf("%d, %s, %s%n", dep.getDeptNo(), dep.getLoc(),
		dep.getDnombre());
		// Visualiza los datos del departamento de nombre VENTAS
		hql = "from Departamentos as dep where dep.dnombre = 'VENTAS' ";
		q = session.createQuery(hql);
		dep = (Departamentos) q.uniqueResult();
		System.out.printf("%d, %s, %s%n", dep.getDeptNo(), dep.getLoc(),
		dep.getDnombre());
		session.close();
		
		SessionFactory sesion2 = HibernateUtil.getSessionFactory();
		Session session2 = sesion2.openSession();
		String hql2 = "select d.deptNo, count(e.empNo), coalesce(avg(e.salario),0) , "
		 + " d.dnombre "
		+ " from Empleados as e right join e.departamentos as d "
		 + " group by d.deptNo, d.dnombre ";
		Query cons = session2.createQuery(hql2);
		List<Object[]> filas = cons.list(); // Todas las filas
		for (int i = 0; i < filas.size(); i++) {
		Object[] filaActual = filas.get(i); // Acceso a una fila
		System.out.printf("Numero Dep: %d, Nombre: %s, Salario medio: %.2f, Nº emple: %d%n", filaActual[0],
		filaActual[3], filaActual[2], filaActual[1]);
		}
		session2.close();
		
	}

}
