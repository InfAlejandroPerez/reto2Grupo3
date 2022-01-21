package controller.conexion;

import org.json.JSONObject;

import java.util.HashMap;
import java.util.Map;

public class Query {

    public Boolean logIn(String username, String password) {
        Map<String, String> atts = new HashMap<String, String>();
        atts.put("operation", "login");
        atts.put("username", username);
        atts.put("tried_pass", password);

        String query = new JSONObject(atts).toString();
        return queryBoolean(query);
    }
    
    public String getMunicipios() {
    	String queryEstaciones = "{\"operation\":\"getMunicipios\"}";
        return queryString(queryEstaciones);    	
    }
    
    public String getEstacionesMun(String nombreMunicipio) {
    	String queryEstaciones = "{\"operation\":\"getEstacionesMun\"," +
                "\"municipio\":\""+nombreMunicipio+"\"}";

        return queryString(queryEstaciones);    	
    }

    public Boolean insertarUsuario(String username, String password) {
        Map<String, String> atts2 = new HashMap<String, String>();
        atts2.put("operation", "insertUser");
        atts2.put("username", username);
        atts2.put("pass", password);
        String query = new JSONObject(atts2).toString();

        return queryBoolean(query);
    }

    public Boolean comprobarUsuario(String username) {
        Map<String, String> atts = new HashMap<String, String>();
        atts.put("operation", "comprobarUsuario");
        atts.put("username", username);
        String query = new JSONObject(atts).toString();
        return queryBoolean(query);
    }

    public String getMunicipios(String nombreProvincia) {
        String queryMunicipios = "{\"operation\":\"getMunicipiosProv\"," +
                "\"provincia\":\""+nombreProvincia+"\"}";

        return queryString(queryMunicipios);
    }

    public String getEspaciosNaturales(String nombreProvincia) {
        String query = "{\"operation\":\"getEspaciosProv\"," +
                "\"provincia\":\""+nombreProvincia+"\"}";

        return queryString(query);
    }

    private String queryString(String jsonQuery) {
        QueryThread hiloQuery = query(jsonQuery);
        return hiloQuery.responseStr;
    }

    private Boolean queryBoolean(String jsonQuery) {
        QueryThread hiloQuery = query(jsonQuery);
        return hiloQuery.responseBool;
    }

    private QueryThread query(String query) {
        QueryThread  hiloQuery =  new QueryThread(query);

        Thread t = (new Thread(hiloQuery));
        t.start();

        try {
            t.join();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        return hiloQuery;
    }
}

