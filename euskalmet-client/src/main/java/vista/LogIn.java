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

public class LogIn extends JFrame {
	private Controller controlador;
	private JLabel lblError;
	private CardLayout c1 = new CardLayout();
	private JPanel contentPane;
	private JPanel panelLogIn = new JPanel();
	private JPanel panelListaMunicipios = new JPanel();
	private JPanel panelListaEstaciones = new JPanel();
	private JPanel panelInfoEstaciones = new JPanel();
	private DefaultListModel<String> modelEstaciones = new DefaultListModel<String>();
	private DefaultListModel<String> modelMunicipios = new DefaultListModel<String>();
	private String estaciones;
	private JTextField txtNombreEstacion;
	private JTextField txtDireccionEstacion;
	private JList<String> listEstaciones;

	/**
	 * Create the frame.
	 */
	public LogIn(final Controller controlador) {
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
		panelInfoEstaciones.setLayout(null);
		
		JLabel lblNombreEstaciones = new JLabel("Estaci\u00F3n");
		lblNombreEstaciones.setHorizontalAlignment(SwingConstants.LEFT);
		lblNombreEstaciones.setFont(new Font("Palatino Linotype", Font.PLAIN, 22));
		lblNombreEstaciones.setBounds(61, 121, 280, 29);
		panelInfoEstaciones.add(lblNombreEstaciones);
		
		txtNombreEstacion = new JTextField();
		txtNombreEstacion.setFont(new Font("Palatino Linotype", Font.PLAIN, 16));
		txtNombreEstacion.setColumns(10);
		txtNombreEstacion.setBounds(61, 161, 280, 31);
		panelInfoEstaciones.add(txtNombreEstacion);
		
		JLabel lblDireccionEstaciones = new JLabel("Direcci\u00F3n");
		lblDireccionEstaciones.setHorizontalAlignment(SwingConstants.LEFT);
		lblDireccionEstaciones.setFont(new Font("Palatino Linotype", Font.PLAIN, 22));
		lblDireccionEstaciones.setBounds(61, 228, 280, 29);
		panelInfoEstaciones.add(lblDireccionEstaciones);
		
		txtDireccionEstacion = new JTextField();
		txtDireccionEstacion.setFont(new Font("Palatino Linotype", Font.PLAIN, 16));
		txtDireccionEstacion.setColumns(10);
		txtDireccionEstacion.setBounds(61, 268, 280, 31);
		panelInfoEstaciones.add(txtDireccionEstacion);
		
		JButton btnVolverEstacion = new JButton("Volver");
		btnVolverEstacion.setFont(new Font("Palatino Linotype", Font.PLAIN, 16));
		btnVolverEstacion.setBorder(UIManager.getBorder("ToggleButton.border"));
		btnVolverEstacion.setBounds(180, 360, 99, 39);
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
		final JComboBox CB_Provincias = new JComboBox();
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
		btnVolverMunicipios.setBounds(120, 382, 113, 39);
		panelListaMunicipios.add(btnVolverMunicipios);

		JScrollPane scrollPaneMunicipios = new JScrollPane(listMunicipios);
		scrollPaneMunicipios.setBounds(87, 99, 306, 268);
		panelListaMunicipios.add(scrollPaneMunicipios);

		JButton btnAccederEstaciones = new JButton("Estaciones");
		btnAccederEstaciones.setFont(new Font("Palatino Linotype", Font.PLAIN, 16));
		btnAccederEstaciones.setBorder(UIManager.getBorder("ToggleButton.border"));
		btnAccederEstaciones.setBounds(256, 382, 113, 39);
		panelListaMunicipios.add(btnAccederEstaciones);
		
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
		btnVolverEstaciones.setBounds(113, 380, 99, 39);
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
				c1.show(contentPane, "panelInfoEstaciones");
				
				String estacion = listEstaciones.getSelectedValue();
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

	}
}
