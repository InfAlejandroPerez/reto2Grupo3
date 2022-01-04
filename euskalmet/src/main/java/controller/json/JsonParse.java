package controller.json;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.StringReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Iterator;
import java.util.Map.Entry;

import javax.swing.text.MutableAttributeSet;
import javax.swing.text.html.HTML;
import javax.swing.text.html.HTMLEditorKit;
import javax.swing.text.html.parser.ParserDelegator;

import org.apache.commons.codec.binary.StringUtils;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.dataformat.csv.CsvMapper;
import com.fasterxml.jackson.dataformat.csv.CsvSchema;

import database.DBController;
import model.Modelo;

public class JsonParse {
//	  Para parsear las provincias repetidas
//	  
//	  Search: ((?:territory|territorycode|municipality|municipalitycode)" : ")(\w+ ?)+
//	  Replace: $1$2
//	  
//	  
//	  Para eliminar los espacios despu�s de las entidades de tilde y �
//	  
//	  Search: (&.acute|&ntilde) ?
//	  Replace: $1;
	
	/**
	 * Recibe una cadena de texto y la escribe sobre un archivo con la ruta y extensi�n especificada
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
     * Lee una URL y devuelve el contenido de su archivo
     * @param path                 String    Url del archivo
     * @param parseJSONCallback	   boolean   True si comienza con el callback, false si el json es valido
     * @return                     String    Contenido del archivo
     */
    public String readURL(String path, boolean parseJSONCallback) {
    	String[] commands =  {"curl", "-X", "GET", path};
    	Process process = null;
    	String ret = "";
		try {
			process = Runtime.getRuntime().exec(commands);
			BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()) );
	    	String line;
	    	
	    	while ((line = reader.readLine()) != null) 
	    	    ret += line;
	    	// Si el contenido es un jsonCallback eliminamos el principio y el final del mismo
	    	if(parseJSONCallback)
	    		ret = ret.replaceAll("(jsonCallback\\(|\\);)", "");
	    	
		} catch (IOException e) {
			e.printStackTrace();
		}		
    	return ret;
    }

	/**
     * Lee un fichero y devuelve su contenido como String
     * @param path  String  Ruta del archivo a leer
     * @return      String  Contenido del archivo leido
     */
	public static String readFile(String path) {
		try (BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream(path), "UTF-8"))) {
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
     * @param remove boolean  True si se desea eliminar las claves contenidas en atts, false si se eliminar�n todas las que no aparecen en el mismo
     */
    public String removeAtts(String path, String[] atts, boolean remove) {
    	String s = readFile(path);
      	JSONParser parser = new JSONParser();
        try{
            Object obj = parser.parse(s);
            JSONArray arrayObjetosJSON = (JSONArray)obj;

            for(int i = 0 ; i < arrayObjetosJSON.size() ; i++) {
              	boolean fixDescription = false;

            	JSONObject objetoJSON = (JSONObject) arrayObjetosJSON.get(i);
            	Iterator it = objetoJSON.entrySet().iterator();
            	
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
            	    else if (key.equals("turismDescription")) {
            	    	fixDescription = true;
            	    }
            	}
            	if(fixDescription) {
                	String content = (String) objetoJSON.get("turismDescription");
        	    	objetoJSON.remove("turismDescription");
        	    	objetoJSON.put("turismDescription", this.htmlToPlainText(content));
                }
            }
            
            
            
            String y = arrayObjetosJSON.toString();
            System.out.println(y);
            return arrayObjetosJSON.toString();
          
         }catch(ParseException pe) {
             System.out.println("position: " + pe.getPosition());
             System.out.println(pe);
             return null;
          }
    }
    
    public String jsonToCSV(String jsonPath, String csvPath) {
    	try {
			JsonNode jsonTree = new ObjectMapper().readTree(new File(jsonPath));
			
			com.fasterxml.jackson.dataformat.csv.CsvSchema.Builder csvSchemaBuilder = CsvSchema.builder();
			JsonNode firstObject = jsonTree.elements().next();
			firstObject.fieldNames().forEachRemaining(fieldName -> {csvSchemaBuilder.addColumn(fieldName);} );
			CsvSchema csvSchema = csvSchemaBuilder.build().withHeader().withColumnSeparator(';').withEscapeChar('"');
			
			CsvMapper csvMapper = new CsvMapper();
			csvMapper.writerFor(JsonNode.class)
			  .with(csvSchema)
			  .writeValue(new File(csvPath), jsonTree);
			
    	} catch (IOException e) {
			e.printStackTrace();
		}
		return jsonPath;
    }
    
    public String htmlToPlainText(String html) {
    	final StringBuilder sb = new StringBuilder();
      	HTMLEditorKit.ParserCallback parserCallback = new HTMLEditorKit.ParserCallback() {
      	    public boolean readyForNewline;

      	    @Override
      	    public void handleText(final char[] data, final int pos) {
      	        String s = new String(data);
      	        sb.append(s.trim());
      	        readyForNewline = true;
      	    }

      	    @Override
      	    public void handleStartTag(final HTML.Tag t, final MutableAttributeSet a, final int pos) {
      	        if (readyForNewline && (t == HTML.Tag.DIV || t == HTML.Tag.BR || t == HTML.Tag.P)) {
      	            sb.append("\n");
      	            readyForNewline = false;
      	        }
      	    }

      	    @Override
      	    public void handleSimpleTag(final HTML.Tag t, final MutableAttributeSet a, final int pos) {
      	        handleStartTag(t, a, pos);
      	    }
      	};
      	
      	try {
			new ParserDelegator().parse(new StringReader(html), parserCallback, false);

			return sb.toString();
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}    
      	
    }
    
	public static void main(String[] args) {
			DBController bbddController = new DBController();	
			Modelo modelo = new Modelo(bbddController);
	      	JsonParse parser = new JsonParse();
	      	
	      	String[] atts = {"municipalitycode", "municipality", "territorycode", "turismDescription"};
	      	String[] atts2 = {"municipality"};
	      	
	      	
	      	String pathJsonBruto = JsonController.getJSON_PATH() + "pueblos.json";
	      	String bruto = parser.removeAtts(pathJsonBruto, atts, false);;
	      	byte[] parsedJsonPueblos = StringUtils.getBytesUtf8(bruto);
	      	String parsedJsonPueblosUTF8 = StringUtils.newStringUtf8(parsedJsonPueblos);
	      	
	      	//String  pueblosJsonParsed = JsonController.getJSON_PARSED_PATH() + "parsed-pueblos.json";
	      	//parser.printIntoFile(pueblosJsonParsed, parsedJsonPueblosUTF8);
	      	String pueblosCSV = JsonController.getCSV_PATH() + "pueblos.csv";

	      	//parser.jsonToCSV(pueblosJsonParsed, pueblosCSV);
	      	
	      	
	      	
	      	
	}
}
