package vista;

import java.awt.BorderLayout;
import java.awt.CardLayout;
import java.awt.EventQueue;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.util.Iterator;
import java.util.List;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.border.EmptyBorder;
import javax.swing.event.ListSelectionEvent;
import javax.swing.event.ListSelectionListener;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import javax.swing.JLabel;
import javax.swing.JTextField;
import javax.swing.JRadioButton;
import javax.swing.DefaultListModel;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.UIManager;
import java.awt.Rectangle;
import javax.swing.SwingConstants;
import javax.swing.JComboBox;
import javax.swing.JList;
import java.awt.event.ActionListener;
import java.awt.event.FocusAdapter;
import java.awt.event.FocusEvent;
import java.awt.event.FocusListener;
import java.awt.event.ActionEvent;
import controller.conexion.*;
import controller.Controller;
import controller.conexion.Query;
import controller.utilities.Utils;

import java.awt.Font;
import javax.swing.JScrollPane;
import javax.swing.JTextPane;
import javax.swing.JTextArea;
import javax.swing.ScrollPaneConstants;
import java.awt.Component;

public class LogIn extends JFrame {
	private Controller controlador;
	private JLabel lblError;
	private CardLayout c1 = new CardLayout();
	private JPanel contentPane;
	private JPanel panelLogIn = new JPanel();
	private JPanel panelListaMunicipios = new JPanel();
	private JPanel panelListaEstaciones = new JPanel();
	private JPanel panelInfoEstaciones = new JPanel();
	private JPanel panelInfoMunicipios = new JPanel();
	private JPanel panelInfoEspaciosNaturales = new JPanel();
	private JPanel panelTopEspaciosNaturalesMunicipio = new JPanel();
	private JPanel panelTopEspaciosNaturalesProvincia = new JPanel();
	private JPanel panelListaEspaciosNaturales = new JPanel();
	private DefaultListModel<String> modelEstaciones = new DefaultListModel<String>();
	private DefaultListModel<String> modelMunicipios = new DefaultListModel<String>();
	private DefaultListModel<String> modelEspaciosNaturales = new DefaultListModel<String>();
	private DefaultListModel<String> modelTopProvincia = new DefaultListModel<String>();
	private DefaultListModel<String> modelTopMunicipio = new DefaultListModel<String>();
	private String estaciones;
	private JList<String> listEstaciones;
	private JList<String> listEspaciosNaturales;
	private JList<String> listENTopProvincia;
	private JList<String> listENTopMunicipio;
	private String espacioNatural;
	private JTextField txtNombreEstacion;
	private JTextField txtDireccionEstacion;
	private JTextField txtNombreMunicipio;
	private JTextArea txtAreaDescripcionMunicipio;
	private JTextField txtEspacioNatural;
	private JTextArea textAreaDescEN;
	
	/**
	 * Create the frame.
	 */
	public LogIn(final Controller controlador) {
		setResizable(false);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 503, 500);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(c1);

		// CardLayout
		contentPane.add(panelLogIn, "panelLogIn");
		contentPane.add(panelListaMunicipios, "panelMunicipios");
		contentPane.add(panelListaEstaciones, "panelEstaciones");
		contentPane.add(panelInfoEstaciones, "panelInfoEstaciones");
		contentPane.add(panelInfoMunicipios, "panelInfoMunicipios");
		contentPane.add(panelInfoEspaciosNaturales, "panelInfoEspaciosNaturales");
		contentPane.add(panelListaEspaciosNaturales, "panelEspaciosNaturales");
		contentPane.add(panelTopEspaciosNaturalesMunicipio, "panelTopEspaciosNaturalesMunicipio");
		contentPane.add(panelTopEspaciosNaturalesProvincia, "panelTopEspaciosNaturalesProvincia");
		panelTopEspaciosNaturalesProvincia.setLayout(null);
		
		JLabel lblTopEspaciosNaturalesProvincia = new JLabel("Top Espacios Naturales por Provincia");
		lblTopEspaciosNaturalesProvincia.setHorizontalAlignment(SwingConstants.CENTER);
		lblTopEspaciosNaturalesProvincia.setFont(new Font("Palatino Linotype", Font.PLAIN, 22));
		lblTopEspaciosNaturalesProvincia.setBounds(43, 24, 387, 29);
		panelTopEspaciosNaturalesProvincia.add(lblTopEspaciosNaturalesProvincia);
		
		JButton btnVolverTopProvincia = new JButton("Volver");
		btnVolverTopProvincia.setFont(new Font("Palatino Linotype", Font.PLAIN, 16));
		btnVolverTopProvincia.setBorder(UIManager.getBorder("ToggleButton.border"));
		btnVolverTopProvincia.setBounds(43, 374, 113, 39);
		panelTopEspaciosNaturalesProvincia.add(btnVolverTopProvincia);
		
		JButton btnCambiarTopPorMunicipioDeProvincia = new JButton("Por Municipio");
		btnCambiarTopPorMunicipioDeProvincia.setFont(new Font("Palatino Linotype", Font.PLAIN, 16));
		btnCambiarTopPorMunicipioDeProvincia.setBorder(UIManager.getBorder("ToggleButton.border"));
		btnCambiarTopPorMunicipioDeProvincia.setBounds(178, 374, 132, 39);
		panelTopEspaciosNaturalesProvincia.add(btnCambiarTopPorMunicipioDeProvincia);
		
		JButton btnAccederTopProvincia = new JButton("Acceder");
		btnAccederTopProvincia.setFont(new Font("Palatino Linotype", Font.PLAIN, 16));
		btnAccederTopProvincia.setBorder(UIManager.getBorder("ToggleButton.border"));
		btnAccederTopProvincia.setBounds(328, 374, 113, 39);
		panelTopEspaciosNaturalesProvincia.add(btnAccederTopProvincia);

		final JComboBox<String> comboTopProvincia = new JComboBox<String>();
		comboTopProvincia.setBorder(UIManager.getBorder("Button.border"));
		comboTopProvincia.setBounds(102, 60, 280, 29);
		comboTopProvincia.addItem("");
		comboTopProvincia.addItem("Bizkaia");
		comboTopProvincia.addItem("Gipuzkoa");
		comboTopProvincia.addItem("Araba/Álava");
		panelTopEspaciosNaturalesProvincia.add(comboTopProvincia);
		panelListaEspaciosNaturales.setLayout(null);
		
		comboTopProvincia.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent e) {
				String prov = String.valueOf(comboTopProvincia.getSelectedItem());
				String topProvincias = (new Query()).getEspaciosNaturalesRankingProv(prov);
				
				modelTopProvincia.removeAllElements();
				List<String> topEN = Utils.getListFromJSON("nombre", "result", topProvincias);
									
				for (String espacios : topEN) {
					modelTopProvincia.addElement(espacios);
				}
				
			}
			
		});
		
		listENTopProvincia = new JList<String>();
		listENTopProvincia.setModel(modelTopProvincia);
		panelTopEspaciosNaturalesProvincia.add(listENTopProvincia);
		
		JScrollPane scrollPaneTopEnProvinicia = new JScrollPane(listENTopProvincia);
		scrollPaneTopEnProvinicia.setBounds(89, 95, 306, 268);
		panelTopEspaciosNaturalesProvincia.add(scrollPaneTopEnProvinicia);
		
		JLabel lblListaEspaciosNaturales = new JLabel("Lista de Espacios Naturales");
		lblListaEspaciosNaturales.setHorizontalAlignment(SwingConstants.CENTER);
		lblListaEspaciosNaturales.setFont(new Font("Palatino Linotype", Font.PLAIN, 22));
		lblListaEspaciosNaturales.setBounds(99, 29, 280, 29);
		panelListaEspaciosNaturales.add(lblListaEspaciosNaturales);
		
		JButton btnVolverListaEn = new JButton("Volver");
		btnVolverListaEn.setFont(new Font("Palatino Linotype", Font.PLAIN, 16));
		btnVolverListaEn.setBorder(UIManager.getBorder("ToggleButton.border"));
		btnVolverListaEn.setBounds(108, 382, 113, 39);
		panelListaEspaciosNaturales.add(btnVolverListaEn);
		
		JButton btnAccederListaEspacioNatural = new JButton("Acceder");
		btnAccederListaEspacioNatural.setFont(new Font("Palatino Linotype", Font.PLAIN, 16));
		btnAccederListaEspacioNatural.setBorder(UIManager.getBorder("ToggleButton.border"));
		btnAccederListaEspacioNatural.setBounds(253, 382, 113, 39);
		panelListaEspaciosNaturales.add(btnAccederListaEspacioNatural);
		panelInfoEspaciosNaturales.setLayout(null);
		
		JLabel lblNombreEspacioNatural = new JLabel("Espacio Natural");
		lblNombreEspacioNatural.setHorizontalAlignment(SwingConstants.LEFT);
		lblNombreEspacioNatural.setFont(new Font("Palatino Linotype", Font.PLAIN, 22));
		lblNombreEspacioNatural.setBounds(69, 31, 280, 29);
		panelInfoEspaciosNaturales.add(lblNombreEspacioNatural);
		
		txtEspacioNatural = new JTextField();
		txtEspacioNatural.setFont(new Font("Palatino Linotype", Font.PLAIN, 16));
		txtEspacioNatural.setColumns(10);
		txtEspacioNatural.setBounds(69, 60, 350, 31);
		txtEspacioNatural.setEditable(false);
		panelInfoEspaciosNaturales.add(txtEspacioNatural);
		
		JLabel lblDescripcionEspacioNatural = new JLabel("Descripci\u00F3n");
		lblDescripcionEspacioNatural.setHorizontalAlignment(SwingConstants.LEFT);
		lblDescripcionEspacioNatural.setFont(new Font("Palatino Linotype", Font.PLAIN, 22));
		lblDescripcionEspacioNatural.setBounds(69, 102, 280, 29);
		panelInfoEspaciosNaturales.add(lblDescripcionEspacioNatural);
		
		JScrollPane scrollPaneDescEN = new JScrollPane(ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS, ScrollPaneConstants.HORIZONTAL_SCROLLBAR_NEVER);
		scrollPaneDescEN.setBounds(69, 132, 350, 164);
		scrollPaneDescEN.getVerticalScrollBar().setValue(0);
		panelInfoEspaciosNaturales.add(scrollPaneDescEN);
		
		textAreaDescEN = new JTextArea();
		textAreaDescEN.setWrapStyleWord(true);
		textAreaDescEN.setLineWrap(true);
		textAreaDescEN.setEditable(false);
		textAreaDescEN.setFocusable(false);
		textAreaDescEN.setOpaque(false);
		scrollPaneDescEN.setViewportView(textAreaDescEN);
		
		JButton btnTopEspaciosNaturales = new JButton("Top Espacios Naturales");
		btnTopEspaciosNaturales.setFont(new Font("Palatino Linotype", Font.PLAIN, 16));
		btnTopEspaciosNaturales.setBorder(UIManager.getBorder("ToggleButton.border"));
		btnTopEspaciosNaturales.setBounds(228, 384, 191, 39);
		panelInfoEspaciosNaturales.add(btnTopEspaciosNaturales);
		
		JButton btnVolverInfoEN = new JButton("Volver");
		btnVolverInfoEN.setFont(new Font("Palatino Linotype", Font.PLAIN, 16));
		btnVolverInfoEN.setBorder(UIManager.getBorder("ToggleButton.border"));
		btnVolverInfoEN.setBounds(69, 384, 104, 39);
		panelInfoEspaciosNaturales.add(btnVolverInfoEN);
		
		JLabel lblCalidadAire = new JLabel("Calidad del aire:");
		lblCalidadAire.setHorizontalAlignment(SwingConstants.LEFT);
		lblCalidadAire.setFont(new Font("Palatino Linotype", Font.PLAIN, 22));
		lblCalidadAire.setBounds(69, 315, 161, 29);
		panelInfoEspaciosNaturales.add(lblCalidadAire);
		
		JLabel lblResultCalidadAire = new JLabel("Resultado");
		lblResultCalidadAire.setHorizontalAlignment(SwingConstants.LEFT);
		lblResultCalidadAire.setFont(new Font("Palatino Linotype", Font.PLAIN, 22));
		lblResultCalidadAire.setBounds(258, 315, 161, 29);
		panelInfoEspaciosNaturales.add(lblResultCalidadAire);
		panelTopEspaciosNaturalesMunicipio.setLayout(null);
		
		JLabel lblTopEspaciosNaturalesMunicipio = new JLabel("Top Espacios Naturales por Municipio");
		lblTopEspaciosNaturalesMunicipio.setHorizontalAlignment(SwingConstants.CENTER);
		lblTopEspaciosNaturalesMunicipio.setFont(new Font("Palatino Linotype", Font.PLAIN, 22));
		lblTopEspaciosNaturalesMunicipio.setBounds(41, 26, 387, 31);
		panelTopEspaciosNaturalesMunicipio.add(lblTopEspaciosNaturalesMunicipio);
		
		JButton btnVolverTopMunicipios = new JButton("Volver");
		btnVolverTopMunicipios.setFont(new Font("Palatino Linotype", Font.PLAIN, 16));
		btnVolverTopMunicipios.setBorder(UIManager.getBorder("ToggleButton.border"));
		btnVolverTopMunicipios.setBounds(41, 374, 113, 39);
		panelTopEspaciosNaturalesMunicipio.add(btnVolverTopMunicipios);
		
		JButton btnAccederTopMunicipio = new JButton("Acceder");
		btnAccederTopMunicipio.setFont(new Font("Palatino Linotype", Font.PLAIN, 16));
		btnAccederTopMunicipio.setBorder(UIManager.getBorder("ToggleButton.border"));
		btnAccederTopMunicipio.setBounds(331, 374, 113, 39);
		panelTopEspaciosNaturalesMunicipio.add(btnAccederTopMunicipio);
		
		JButton btnCambiarTopMunicipio = new JButton("Por Provincia");
		btnCambiarTopMunicipio.setFont(new Font("Palatino Linotype", Font.PLAIN, 16));
		btnCambiarTopMunicipio.setBorder(UIManager.getBorder("ToggleButton.border"));
		btnCambiarTopMunicipio.setBounds(180, 374, 125, 39);
		panelTopEspaciosNaturalesMunicipio.add(btnCambiarTopMunicipio);
		
		final JComboBox<String> comboTopMunicipio = new JComboBox<String>();
		comboTopMunicipio.setBorder(UIManager.getBorder("Button.border"));
		comboTopMunicipio.setBounds(107, 55, 280, 29);
		comboTopMunicipio.addItem("");
		comboTopMunicipio.addItem("Abadiño");
		comboTopMunicipio.addItem("Abanto y Ciérvana-Abanto Zierbena");
		comboTopMunicipio.addItem("Aia");
		comboTopMunicipio.addItem("Alonsotegi");
		comboTopMunicipio.addItem("Amorebieta-Etxano");
		comboTopMunicipio.addItem("Andoain");
		comboTopMunicipio.addItem("Arrasate/Mondragón");
		comboTopMunicipio.addItem("Azpeitia");
		comboTopMunicipio.addItem("Barakaldo");
		comboTopMunicipio.addItem("Basauri");
		comboTopMunicipio.addItem("Beasain");
		comboTopMunicipio.addItem("Bilbao");
		comboTopMunicipio.addItem("Durango");
		comboTopMunicipio.addItem("Elciego");
		comboTopMunicipio.addItem("Erandio");
		comboTopMunicipio.addItem("Getxo");
		comboTopMunicipio.addItem("Hernani");
		comboTopMunicipio.addItem("Hondarribia");
		comboTopMunicipio.addItem("Larrabetzu");
		comboTopMunicipio.addItem("Lasarte-Oria");
		comboTopMunicipio.addItem("Lezo");
		comboTopMunicipio.addItem("Llodio/Laudio");
		comboTopMunicipio.addItem("Mundaka");
		comboTopMunicipio.addItem("Muskiz");
		comboTopMunicipio.addItem("Portugalete");
		comboTopMunicipio.addItem("Salvatierra/Agurain");
		comboTopMunicipio.addItem("San Sebastián");
		comboTopMunicipio.addItem("Santurtzi");
		comboTopMunicipio.addItem("Sestao");
		comboTopMunicipio.addItem("Sondika");
		comboTopMunicipio.addItem("Sopela");
		comboTopMunicipio.addItem("Tolosa");
		comboTopMunicipio.addItem("Usurbil");
		comboTopMunicipio.addItem("Valdegovía");
		comboTopMunicipio.addItem("Vitoria-Gasteiz");
		comboTopMunicipio.addItem("Zalla");
		comboTopMunicipio.addItem("Zarautz");
		comboTopMunicipio.addItem("Zierbena");
		comboTopMunicipio.addItem("Zumarraga");
		panelTopEspaciosNaturalesMunicipio.add(comboTopMunicipio);
		panelInfoMunicipios.setLayout(null);
		
		comboTopMunicipio.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent e) {
				String muni = String.valueOf(comboTopMunicipio.getSelectedItem());
				String topMunicipios = (new Query()).getEspaciosNaturalesRankingMun(muni);
				
				modelTopMunicipio.removeAllElements();
				List<String> topEN = Utils.getListFromJSON("nombre", "result", topMunicipios);
									
				for (String espacios : topEN) {
					modelTopMunicipio.addElement(espacios);
				}
				
			}
			
		});

		listENTopMunicipio = new JList<String>();
		listENTopMunicipio.setModel(modelTopMunicipio);
		panelTopEspaciosNaturalesMunicipio.add(listENTopMunicipio);
		
		JScrollPane scrollPaneTopEnMunicipio = new JScrollPane(listENTopMunicipio);
		scrollPaneTopEnMunicipio.setBounds(92, 95, 306, 268);
		panelTopEspaciosNaturalesMunicipio.add(scrollPaneTopEnMunicipio);
		
		JLabel lblNombreMunicipios = new JLabel("Municipio");
		lblNombreMunicipios.setHorizontalAlignment(SwingConstants.LEFT);
		lblNombreMunicipios.setFont(new Font("Palatino Linotype", Font.PLAIN, 22));
		lblNombreMunicipios.setBounds(64, 67, 280, 29);
		panelInfoMunicipios.add(lblNombreMunicipios);
		
		txtNombreMunicipio = new JTextField();
		txtNombreMunicipio.setFont(new Font("Palatino Linotype", Font.PLAIN, 16));
		txtNombreMunicipio.setColumns(10);
		txtNombreMunicipio.setBounds(64, 107, 350, 31);
		txtNombreMunicipio.setEditable(false);
		panelInfoMunicipios.add(txtNombreMunicipio);
		
		JLabel lblDescripcionMunicipios = new JLabel("Descripci\u00F3n");
		lblDescripcionMunicipios.setHorizontalAlignment(SwingConstants.LEFT);
		lblDescripcionMunicipios.setFont(new Font("Palatino Linotype", Font.PLAIN, 22));
		lblDescripcionMunicipios.setBounds(64, 166, 280, 29);
		panelInfoMunicipios.add(lblDescripcionMunicipios);
		
		JScrollPane scrollPaneDescMunicipios = new JScrollPane();
		scrollPaneDescMunicipios.setBounds(64, 206, 350, 143);
		scrollPaneDescMunicipios.getVerticalScrollBar().setValue(0);
		panelInfoMunicipios.add(scrollPaneDescMunicipios);
		
		txtAreaDescripcionMunicipio = new JTextArea();
		txtAreaDescripcionMunicipio.setWrapStyleWord(true);
		txtAreaDescripcionMunicipio.setLineWrap(true);
		txtAreaDescripcionMunicipio.setEditable(false);
		txtAreaDescripcionMunicipio.setFocusable(false);
		txtAreaDescripcionMunicipio.setOpaque(false);
		scrollPaneDescMunicipios.setViewportView(txtAreaDescripcionMunicipio);
		
		JButton btnVolverInfoMunicipio = new JButton("Volver");
		btnVolverInfoMunicipio.setFont(new Font("Palatino Linotype", Font.PLAIN, 16));
		btnVolverInfoMunicipio.setBorder(UIManager.getBorder("ToggleButton.border"));
		btnVolverInfoMunicipio.setBounds(64, 382, 104, 39);
		panelInfoMunicipios.add(btnVolverInfoMunicipio);
		
		final JButton btnEspacionNaturalesMunicipio = new JButton("Espacios Naturales");
		btnEspacionNaturalesMunicipio.setFont(new Font("Palatino Linotype", Font.PLAIN, 16));
		btnEspacionNaturalesMunicipio.setBorder(UIManager.getBorder("ToggleButton.border"));
		btnEspacionNaturalesMunicipio.setBounds(240, 382, 174, 39);
		panelInfoMunicipios.add(btnEspacionNaturalesMunicipio);
		
		final JLabel lblMunSinEN = new JLabel("No hay Espacios Naturales");
		lblMunSinEN.setVisible(false);
		lblMunSinEN.setBounds(240, 360, 127, 14);
		panelInfoMunicipios.add(lblMunSinEN);
		panelInfoEstaciones.setLayout(null);
		
		JLabel lblNombreEstaciones = new JLabel("Estaci\u00F3n");
		lblNombreEstaciones.setBounds(61, 121, 280, 29);
		lblNombreEstaciones.setHorizontalAlignment(SwingConstants.LEFT);
		lblNombreEstaciones.setFont(new Font("Palatino Linotype", Font.PLAIN, 22));
		panelInfoEstaciones.add(lblNombreEstaciones);
		
		txtNombreEstacion = new JTextField();
		txtNombreEstacion.setBounds(61, 161, 350, 31);
		txtNombreEstacion.setFont(new Font("Palatino Linotype", Font.PLAIN, 16));
		txtNombreEstacion.setColumns(10);
		panelInfoEstaciones.add(txtNombreEstacion);
		
		JLabel lblDireccionEstaciones = new JLabel("Direcci\u00F3n");
		lblDireccionEstaciones.setBounds(61, 228, 280, 29);
		lblDireccionEstaciones.setHorizontalAlignment(SwingConstants.LEFT);
		lblDireccionEstaciones.setFont(new Font("Palatino Linotype", Font.PLAIN, 22));
		panelInfoEstaciones.add(lblDireccionEstaciones);
		
		txtDireccionEstacion = new JTextField();
		txtDireccionEstacion.setBounds(61, 268, 350, 31);
		txtDireccionEstacion.setFont(new Font("Palatino Linotype", Font.PLAIN, 16));
		txtDireccionEstacion.setColumns(10);
		panelInfoEstaciones.add(txtDireccionEstacion);
		
		JButton btnVolverEstacion = new JButton("Volver");
		btnVolverEstacion.setBounds(180, 360, 99, 39);
		btnVolverEstacion.setFont(new Font("Palatino Linotype", Font.PLAIN, 16));
		btnVolverEstacion.setBorder(UIManager.getBorder("ToggleButton.border"));
		panelInfoEstaciones.add(btnVolverEstacion);

		c1.show(contentPane, "panelLogIn");

		panelLogIn.setBounds(0, 0, 8, 7);
		panelLogIn.setLayout(null);

		JLabel lblUsuario = new JLabel("Ususario");
		lblUsuario.setFont(new Font("Palatino Linotype", Font.PLAIN, 22));
		lblUsuario.setBounds(142, 116, 89, 31);
		panelLogIn.add(lblUsuario);

		final JTextField txtIntroduceNombre = new JTextField();
		txtIntroduceNombre.setFont(new Font("Palatino Linotype", Font.PLAIN, 16));
		txtIntroduceNombre.setBounds(142, 158, 185, 31);
		panelLogIn.add(txtIntroduceNombre);
		txtIntroduceNombre.setColumns(10);
		txtIntroduceNombre.addMouseListener(new MouseAdapter() {

			public void mouseClicked(MouseEvent e) {
				// TODO Auto-generated method stub
				txtIntroduceNombre.setText("");
			}

		});

		JLabel lblContrasenya = new JLabel("Contrase\u00F1a");
		lblContrasenya.setFont(new Font("Palatino Linotype", Font.PLAIN, 22));
		lblContrasenya.setBounds(142, 215, 137, 31);
		panelLogIn.add(lblContrasenya);

		final JPasswordField txtIntroduceContrasenya = new JPasswordField();
		txtIntroduceContrasenya.setFont(new Font("Palatino Linotype", Font.PLAIN, 16));
		txtIntroduceContrasenya.setBounds(142, 255, 185, 33);
		panelLogIn.add(txtIntroduceContrasenya);
		txtIntroduceContrasenya.setColumns(10);
		txtIntroduceContrasenya.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				txtIntroduceContrasenya.setText("");
			}
		});

		JButton btnAcceder = new JButton("Acceder");
		btnAcceder.setBorder(UIManager.getBorder("ToggleButton.border"));
		btnAcceder.setFont(new Font("Palatino Linotype", Font.PLAIN, 16));
		btnAcceder.setBounds(180, 340, 99, 39);
		panelLogIn.add(btnAcceder);

		// Panel de lista de Municipios
		panelListaMunicipios.setBounds(0, 0, 8, 7);
		panelListaMunicipios.setLayout(null);

		JLabel Lb_ListaMunicipios = new JLabel("Lista de Municipios");
		Lb_ListaMunicipios.setFont(new Font("Palatino Linotype", Font.PLAIN, 22));
		Lb_ListaMunicipios.setHorizontalAlignment(SwingConstants.CENTER);
		Lb_ListaMunicipios.setBounds(101, 19, 280, 29);
		panelListaMunicipios.add(Lb_ListaMunicipios);

		//ComboBox de Provincias
		final JComboBox<String> CB_Provincias = new JComboBox<String>();
		CB_Provincias.setBorder(UIManager.getBorder("Button.border"));
		CB_Provincias.setBounds(101, 59, 280, 29);
		CB_Provincias.addItem("");
		CB_Provincias.addItem("Bizkaia");
		CB_Provincias.addItem("Gipuzkoa");
		CB_Provincias.addItem("Araba/Álava");
		panelListaMunicipios.add(CB_Provincias);
		
		CB_Provincias.addActionListener(new ActionListener() {
			
			public void actionPerformed(ActionEvent e) {
				String prov = String.valueOf(CB_Provincias.getSelectedItem());
				String muns;
				
				if (prov.equals("")) {
					muns = (new Query()).getMunicipios();
				} else {
					muns = (new Query()).getMunicipios(prov);
				}
				
				modelMunicipios.removeAllElements();
				List<String> munsList = Utils.getListFromJSON("nombre", "result", muns);
				
				for (String munis : munsList) {
					modelMunicipios.addElement(munis);
				}
			}
		});

		// Lista de Municipios
		String muns = (new Query()).getMunicipios();
		List<String> munsList = Utils.getListFromJSON("nombre", "result", muns);
		
		for (String munis : munsList) {
			modelMunicipios.addElement(munis);
		}
		
		final JList<String> listMunicipios = new JList<String>();
		listMunicipios.setModel(modelMunicipios);
		panelListaMunicipios.add(listMunicipios);

		JButton btnVolverMunicipios = new JButton("Volver");
		btnVolverMunicipios.setFont(new Font("Palatino Linotype", Font.PLAIN, 16));
		btnVolverMunicipios.setBorder(UIManager.getBorder("ToggleButton.border"));
		btnVolverMunicipios.setBounds(36, 382, 113, 39);
		panelListaMunicipios.add(btnVolverMunicipios);

		JScrollPane scrollPaneMunicipios = new JScrollPane(listMunicipios);
		scrollPaneMunicipios.setBounds(87, 99, 306, 268);
		panelListaMunicipios.add(scrollPaneMunicipios);

		JButton btnAccederEstaciones = new JButton("Estaciones");
		btnAccederEstaciones.setFont(new Font("Palatino Linotype", Font.PLAIN, 16));
		btnAccederEstaciones.setBorder(UIManager.getBorder("ToggleButton.border"));
		btnAccederEstaciones.setBounds(316, 382, 113, 39);
		panelListaMunicipios.add(btnAccederEstaciones);
		
		JButton btnInformacionMunicipios = new JButton("Info");
		btnInformacionMunicipios.setFont(new Font("Palatino Linotype", Font.PLAIN, 16));
		btnInformacionMunicipios.setBorder(UIManager.getBorder("ToggleButton.border"));
		btnInformacionMunicipios.setBounds(176, 382, 113, 39);
		panelListaMunicipios.add(btnInformacionMunicipios);
	

		btnAccederEstaciones.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent e) {
				String municipio = listMunicipios.getSelectedValue();

				if (municipio != null) {
					estaciones = (new Query()).getEstacionesMun(municipio);
										
					// Lista de Estaciones
					List<String> estacionesList = Utils.getListFromJSON("nombre", "result", estaciones);
										
					for (String estaciones : estacionesList) {
						modelEstaciones.addElement(estaciones);
					}
					listEstaciones = new JList<String>();
					listEstaciones.setModel(modelEstaciones);
					panelListaEstaciones.add(listEstaciones);

					JScrollPane scrollPaneEstaciones = new JScrollPane(listEstaciones);
					scrollPaneEstaciones.setBounds(87, 99, 306, 268);
					panelListaEstaciones.add(scrollPaneEstaciones);
					
					c1.show(contentPane, "panelEstaciones");
				}

			}

		});

		// Panel de lista de Estaciones
		panelListaEstaciones.setBounds(479, 0, 8, 7);
		panelListaEstaciones.setLayout(null);

		JButton btnVolverEstaciones = new JButton("Volver");
		btnVolverEstaciones.setFont(new Font("Palatino Linotype", Font.PLAIN, 16));
		btnVolverEstaciones.setBorder(UIManager.getBorder("ToggleButton.border"));
		btnVolverEstaciones.setBounds(113, 380, 113, 39);
		panelListaEstaciones.add(btnVolverEstaciones);

		JLabel Lb_ListaEstaciones = new JLabel("Lista de Estaciones");
		Lb_ListaEstaciones.setHorizontalAlignment(SwingConstants.CENTER);
		Lb_ListaEstaciones.setFont(new Font("Palatino Linotype", Font.PLAIN, 22));
		Lb_ListaEstaciones.setBounds(97, 25, 280, 29);
		panelListaEstaciones.add(Lb_ListaEstaciones);
		
		JButton btnAccederEstacion = new JButton("Acceder");
		btnAccederEstacion.setFont(new Font("Palatino Linotype", Font.PLAIN, 16));
		btnAccederEstacion.setBorder(UIManager.getBorder("ToggleButton.border"));
		btnAccederEstacion.setBounds(255, 380, 113, 39);
		panelListaEstaciones.add(btnAccederEstacion);
		
		btnAccederEstacion.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent e) {
				String estacion = listEstaciones.getSelectedValue();
				System.out.println(estacion);
				String direccion = (new Query()).getDireccionEstacion(estacion);
				try {
					JSONObject obj = new JSONObject(direccion);
					direccion = (String) obj.get("result");
				} catch (JSONException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				
				txtNombreEstacion.setText(estacion);
				txtDireccionEstacion.setText(direccion);
				c1.show(contentPane, "panelInfoEstaciones");
			}
			
		});

		lblError = new JLabel("Usuario o Contrase\u00F1a incorrectos");
		lblError.setFont(new Font("Palatino Linotype", Font.PLAIN, 12));
		lblError.setBounds(142, 390, 197, 24);
		panelLogIn.add(lblError);
		lblError.setVisible(false);

		JLabel lb_Logo = new JLabel("");
		lb_Logo.setIcon(new ImageIcon(LogIn.class.getResource("/vista/imagenes/logo.jpg")));
		lb_Logo.setBounds(83, 11, 277, 77);
		panelLogIn.add(lb_Logo);
		lblError.setVisible(false);

		// Login
		btnAcceder.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent e) {
				String user = txtIntroduceNombre.getText();
				String pw = String.valueOf(txtIntroduceContrasenya.getPassword());

				Boolean loggeado = (new Query().logIn(user, pw));

				if (loggeado) {
					lblError.setVisible(false);
					c1.show(contentPane, "panelMunicipios");
					System.out.println("Usuario válido");
				} else {
					lblError.setVisible(true);
					System.out.println("Usuario no válido");
				}

			}
		});
		
		btnInformacionMunicipios.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent e) {
				String municipio = listMunicipios.getSelectedValue();
				String descripcion = (new Query()).getDescripcionMunicipio(municipio);
				
				descripcion = descripcion.replaceAll("\n", "");
				
				espacioNatural = (new Query()).getEspaciosNaturalesMun(municipio);
				espacioNatural = espacioNatural.replaceAll("\n", "");

				try {
					JSONObject obj = new JSONObject(descripcion);
					descripcion = (String) obj.get("result");
					
					JSONObject enObj = new JSONObject(espacioNatural);
					JSONArray arrEspacios = (JSONArray) enObj.get("result");
										
					if (arrEspacios != null && arrEspacios.length() > 0) {
						btnEspacionNaturalesMunicipio.setEnabled(true);
						lblMunSinEN.setVisible(false);
					} else {
						btnEspacionNaturalesMunicipio.setEnabled(false);
						lblMunSinEN.setVisible(true);
					}
					
				} catch (JSONException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				
				txtNombreMunicipio.setText(municipio);
				txtAreaDescripcionMunicipio.setText(descripcion);
				c1.show(contentPane, "panelInfoMunicipios");			
			}
			
		});
		
		btnEspacionNaturalesMunicipio.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent e) {
				String municipio = listMunicipios.getSelectedValue();
				if(municipio != null) {
					espacioNatural = (new Query()).getEspaciosNaturalesMun(municipio);
					espacioNatural = espacioNatural.replaceAll("\n", "");
					
					List<String> espaciosList = Utils.getListFromJSON("nombre", "result", espacioNatural);
					List<String> descList = Utils.getListFromJSON("descripcion", "result", espacioNatural);
					
					for (String espacios : espaciosList) {
						modelEspaciosNaturales.addElement(espacios);
					}
					listEspaciosNaturales = new JList<String>();
					listEspaciosNaturales.setModel(modelEspaciosNaturales);
					panelListaEspaciosNaturales.add(listEspaciosNaturales);
					
					JScrollPane scrollPaneEspacios = new JScrollPane(listEspaciosNaturales);
					scrollPaneEspacios.setBounds(87, 99, 306, 268);
					panelListaEspaciosNaturales.add(scrollPaneEspacios);
					
					c1.show(contentPane, "panelEspaciosNaturales");
				}
				
			}
			
		});
		
		btnAccederListaEspacioNatural.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent e) {
				String espacio = listEspaciosNaturales.getSelectedValue();
				
				String desc = "";
				
				try {
					JSONObject enObj = new JSONObject(espacioNatural);
					JSONArray arrEspacios = (JSONArray) enObj.get("result");
					for(int i = 0; i < arrEspacios.length(); i++) {
						if(arrEspacios.get(i) instanceof JSONObject) {
							JSONObject result = (JSONObject) arrEspacios.get(i);
							String nombre = (String) result.get("nombre");
							desc = (String) result.get("descripcion");
							if(nombre.equals(espacio)) {
								break;
							}
						}
						
					}
					
					
				} catch (JSONException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				
				txtEspacioNatural.setText(espacio);
				textAreaDescEN.setText(desc);
				
				c1.show(contentPane, "panelInfoEspaciosNaturales");
			}
			
		});
		
		btnAccederTopProvincia.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent e) {
				String espacio = listENTopProvincia.getSelectedValue();
				
				String desc = "";
				
				try {
					JSONObject enObj = new JSONObject(espacioNatural);
					JSONArray arrEspacios = (JSONArray) enObj.get("result");
					for(int i = 0; i < arrEspacios.length(); i++) {
						if(arrEspacios.get(i) instanceof JSONObject) {
							JSONObject result = (JSONObject) arrEspacios.get(i);
							String nombre = (String) result.get("nombre");
							desc = (String) result.get("descripcion");
							if(nombre.equals(espacio)) {
								break;
							}
						}
						
					}
					
					
				} catch (JSONException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				
				txtEspacioNatural.setText(espacio);
				textAreaDescEN.setText(desc);
				
				c1.show(contentPane, "panelInfoEspaciosNaturales");
			}
			
		});
		
		btnAccederTopMunicipio.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent e) {
				String espacio = listENTopMunicipio.getSelectedValue();
				
				String desc = "";
				
				try {
					JSONObject enObj = new JSONObject(espacioNatural);
					JSONArray arrEspacios = (JSONArray) enObj.get("result");
					for(int i = 0; i < arrEspacios.length(); i++) {
						if(arrEspacios.get(i) instanceof JSONObject) {
							JSONObject result = (JSONObject) arrEspacios.get(i);
							String nombre = (String) result.get("nombre");
							desc = (String) result.get("descripcion");
							if(nombre.equals(espacio)) {
								break;
							}
						}
						
					}
					
					
				} catch (JSONException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				
				txtEspacioNatural.setText(espacio);
				textAreaDescEN.setText(desc);
				
				c1.show(contentPane, "panelInfoEspaciosNaturales");
			}
			
		});
		
		btnTopEspaciosNaturales.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent e) {
				c1.show(contentPane, "panelTopEspaciosNaturalesProvincia");
			}
			
		});

		btnVolverMunicipios.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent e) {
				c1.show(contentPane, "panelLogIn");
			}

		});

		btnVolverEstaciones.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent e) {
				c1.show(contentPane, "panelMunicipios");
				modelEstaciones.removeAllElements();
			}

		});
		
		btnVolverEstacion.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent e) {
				c1.show(contentPane, "panelEstaciones");
			}

		});
		
		btnVolverInfoMunicipio.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent e) {
				c1.show(contentPane, "panelMunicipios");
			}
			
		});
		
		btnVolverInfoEN.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent e) {
				c1.show(contentPane, "panelEspaciosNaturales");
			}
			
		});
		
		btnVolverTopMunicipios.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent e) {
				c1.show(contentPane, "panelInfoEspaciosNaturales");
			}
			
		});

		btnVolverListaEn.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent e) {
				c1.show(contentPane, "panelInfoMunicipios");
			}
			
		});
		
		btnVolverTopProvincia.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent e) {
				c1.show(contentPane, "panelMunicipios");
			}
			
		});
		
		btnVolverTopMunicipios.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent e) {
				c1.show(contentPane, "panelMunicipios");
			}
			
		});
		
		btnCambiarTopPorMunicipioDeProvincia.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent e) {
				c1.show(contentPane, "panelTopEspaciosNaturalesMunicipio");
			}
			
		});
		
		btnCambiarTopMunicipio.addActionListener(new ActionListener() {

			public void actionPerformed(ActionEvent e) {
				c1.show(contentPane, "panelTopEspaciosNaturalesProvincia");
			}
			
		});
		
	}
}
