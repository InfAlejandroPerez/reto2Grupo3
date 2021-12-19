package jsonParse;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import javax.xml.crypto.dsig.keyinfo.KeyValue;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class JsonParse {

    public static void printIntoFile(String path, String content) {

        try (PrintWriter writer = new PrintWriter(path)) {
            writer.print(content);

        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }
    
    public static String readFile(String path) {
		try (BufferedReader br = new BufferedReader(new FileReader(path))) {
			StringBuilder strBuilder = new StringBuilder();
			String line = br.readLine();

			while (line != null) {
				strBuilder.append(line);
				strBuilder.append(System.lineSeparator());
				line = br.readLine();
			}
			return strBuilder.toString();
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
	}
    
    /**
     * Elimina atributos de los objetos de un archivo JSON
     * @param path   String   Ruta del archivo JSON a analizar
     * @param atts	 Array	  Array de claves sobre las que se desea operar
     * @param remove boolean  True si se desea eliminar las claves contenidas en atts, false si se eliminarán todas las demás
     */
    public String removeAtts(String path, String[] atts, boolean remove) {
    	String s = readFile(path);

      	JSONParser parser = new JSONParser();

        try{
            Object obj = parser.parse(s);
            JSONArray array = (JSONArray)obj;

            JSONObject obj2 = (JSONObject)array.get(1);


            for(int i = 0 ; i < array.size() ; i++) {
            	
            	JSONObject pueblo = (JSONObject) array.get(i);
            	Iterator it = pueblo.entrySet().iterator();
            	
            	while(it.hasNext()) {
            	    String key = ((Entry) it.next()).getKey().toString();
            	    boolean mantener = remove;
            	    for(int j = 0 ; j < atts.length ; j++) {
            	    	boolean equals = key.equals(atts[j]);
            	    	if(equals) {
            	    		mantener = !remove;
            	    		break;
            	    	}
            	    }
            	    
            	    if(!mantener) {
            	    	it.remove();
            	    }
            	}
            	
            }
            
            return array.toString();
          
         }catch(ParseException pe) {
             System.out.println("position: " + pe.getPosition());
             System.out.println(pe);
             return null;
          }
    }
    
	public static void main(String[] args) {
	      	JsonParse parser = new JsonParse();
	      	String[] atts = {"municipalitycode", "municipality"};
	      	String[] atts2 = {"municipality"};
	      	
	      	String parsed = parser.removeAtts("./src/main/resources/fuentes/json/pueblos.json", atts, false);
	      	printIntoFile("./src/main/resources/fuentes/json/parsed/parsed-pueblos.json", parsed);
	      	System.out.println(parsed);
	      	
	}
}
