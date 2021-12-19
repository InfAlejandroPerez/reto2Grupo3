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

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.dataformat.csv.CsvMapper;
import com.fasterxml.jackson.dataformat.csv.CsvMapper.Builder;
import com.fasterxml.jackson.dataformat.csv.CsvSchema;

public class JsonParse {

	/**
	 * Recibe una cadena de texto y la crea sobre un archivo con la ruta y extensión especificada
	 * @param path     String  Path del archivo resultante
	 * @param content  String  Contenido
	 */
    public void printIntoFile(String path, String content) {

        try (PrintWriter writer = new PrintWriter(path)) {
            writer.print(content);

        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }
    
    /**
     * Lee un fichero y devuelve su contenido como String
     * @param path  String  Ruta del archivo a leer
     * @return      String  Contenido del archivo leido
     */
    public String readFile(String path) {
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
     * @param remove boolean  True si se desea eliminar las claves contenidas en atts, false si se eliminarán todas las que no aparecen en el mismo
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
    
    public String jsonToCSV(String jsonPath) {
    	try {
			JsonNode jsonTree = new ObjectMapper().readTree(new File(jsonPath));
			
			com.fasterxml.jackson.dataformat.csv.CsvSchema.Builder csvSchemaBuilder = CsvSchema.builder();
			JsonNode firstObject = jsonTree.elements().next();
			firstObject.fieldNames().forEachRemaining(fieldName -> {csvSchemaBuilder.addColumn(fieldName);} );
			CsvSchema csvSchema = csvSchemaBuilder.build().withHeader().withColumnSeparator(';').withEscapeChar('"');
			
			CsvMapper csvMapper = new CsvMapper();
			csvMapper.writerFor(JsonNode.class)
			  .with(csvSchema)
			  .writeValue(new File("./src/main/resources/fuentes/csv/pueblos.csv"), jsonTree);
			
    	} catch (IOException e) {
			e.printStackTrace();
		}
		return jsonPath;
    }
    
	public static void main(String[] args) {
	      	JsonParse parser = new JsonParse();
	      	String[] atts = {"municipalitycode", "municipality"};
	      	String[] atts2 = {"municipality"};
	      	
	      	String pathJsonBruto = "./src/main/resources/fuentes/json/pueblos.json";
	      	String parsed = parser.removeAtts(pathJsonBruto, atts, false);
	      	String  pathJsonParsed = "./src/main/resources/fuentes/json/parsed/parsed-pueblos.json";
	      	parser.printIntoFile(pathJsonParsed, parsed);
	      	System.out.println(parsed);
	      	
	      	parser.jsonToCSV(pathJsonParsed);
	      	
	      	
	      	
	}
}
