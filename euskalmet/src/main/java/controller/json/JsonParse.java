package controller.json;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.StringReader;

import javax.swing.text.MutableAttributeSet;
import javax.swing.text.html.HTML;
import javax.swing.text.html.HTMLEditorKit;
import javax.swing.text.html.parser.ParserDelegator;

public class JsonParse {
//	  Para parsear las provincias repetidas
//	  
//	  Search: ((?:territory|territorycode|municipality|municipalitycode)" : ")(\w+ ?)+
//	  Replace: $1$2
//	  
//	  
//    TODO: Parsear din?micamente los archivos en su primera lectura para cuando haya que leer desde la api
//	  Para eliminar los espacios despu?s de las entidades de tilde y ?
//	  
//	  Search: (&.acute|&ntilde) ?
//	  Replace: $1;
	
	/**
	 * Recibe una cadena de texto y la escribe sobre un archivo con la ruta y extensi?n especificada
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
    	System.out.println("Reading content from: " + path);
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

}
