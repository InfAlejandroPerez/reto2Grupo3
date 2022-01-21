package vista;

import java.awt.BorderLayout;
import java.awt.CardLayout;
import java.awt.EventQueue;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.util.Iterator;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
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
import java.awt.Font;

public class LogIn extends JFrame {
	private Controller controlador;
	private JLabel lblError;
	private CardLayout c1 = new CardLayout();
	private JPanel contentPane;
	private JPanel panelLogIn = new JPanel();
	private JPanel panelListaMunicipios = new JPanel();
	private JPanel panelListaEstaciones = new JPanel();
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
		
		//CardLayout
		contentPane.add(panelLogIn, "panelLogIn");
		contentPane.add(panelListaMunicipios, "panelMunicipios");
		contentPane.add(panelListaEstaciones, "panelEstaciones");
		
		c1.show(contentPane, "panelLogIn");
		
		panelLogIn.setBounds(0, 0, 8, 7);
		panelLogIn.setLayout(null);

		JLabel lblUsuario = new JLabel("Ususario");
		lblUsuario.setFont(new Font("Palatino Linotype", Font.PLAIN, 22));
		lblUsuario.setBounds(142, 116, 89, 31);
		panelLogIn.add(lblUsuario);

		final JTextField txtIntroduceNombre = new JTextField();
		txtIntroduceNombre.setFont(new Font("Palatino Linotype", Font.PLAIN, 16));
		txtIntroduceNombre.setText("Introduce tu nombre");
		txtIntroduceNombre.setBounds(142, 158, 185, 31);
		panelLogIn.add(txtIntroduceNombre);
		txtIntroduceNombre.setColumns(10);
		txtIntroduceNombre.addFocusListener(new FocusListener() {
			
			public void focusLost(FocusEvent e) {
				
			}
			
			public void focusGained(FocusEvent e) {
				txtIntroduceNombre.setText("");
			}
		});

		JLabel lblContrasenya = new JLabel("Contrase\u00F1a");
		lblContrasenya.setFont(new Font("Palatino Linotype", Font.PLAIN, 22));
		lblContrasenya.setBounds(142, 215, 137, 31);
		panelLogIn.add(lblContrasenya);

		final JTextField txtIntroduceContrasenya = new JTextField();
		txtIntroduceContrasenya.setFont(new Font("Palatino Linotype", Font.PLAIN, 16));
		txtIntroduceContrasenya.setText("Introduce tu contrase\u00F1a");
		txtIntroduceContrasenya.setBounds(142, 255, 185, 33);
		panelLogIn.add(txtIntroduceContrasenya);
		txtIntroduceContrasenya.setColumns(10);
		txtIntroduceContrasenya.addFocusListener(new FocusListener() {
			
			public void focusLost(FocusEvent e) {
				
			}
			
			public void focusGained(FocusEvent e) {
				txtIntroduceContrasenya.setText("");
			}
		});

		JButton btnAcceder = new JButton("Acceder");
		btnAcceder.setBorder(UIManager.getBorder("ToggleButton.border"));
		btnAcceder.setFont(new Font("Palatino Linotype", Font.PLAIN, 16));
		btnAcceder.setBounds(180, 340, 99, 39);
		panelLogIn.add(btnAcceder);
		
		//Panel de lista de Municipios
		panelListaMunicipios.setBounds(0, 0, 8, 7);
		panelListaMunicipios.setLayout(null);
		
		JLabel Lb_ListaMunicipios = new JLabel("Lista de Municipios");
		Lb_ListaMunicipios.setFont(new Font("Palatino Linotype", Font.PLAIN, 22));
		Lb_ListaMunicipios.setHorizontalAlignment(SwingConstants.CENTER);
		Lb_ListaMunicipios.setBounds(101, 19, 280, 29);
		panelListaMunicipios.add(Lb_ListaMunicipios);
		
		JComboBox CB_Provincias = new JComboBox();
		CB_Provincias.setBorder(UIManager.getBorder("Button.border"));
		CB_Provincias.setBounds(101, 59, 280, 29);
		panelListaMunicipios.add(CB_Provincias);
		
		//Lista de Municipios
		DefaultListModel<String> modelMunicipios = new DefaultListModel<String>();
		JList<String> listMunicipios = new JList<String>(modelMunicipios);
		listMunicipios.setBounds(101, 358, 280, -248);
		panelListaMunicipios.add(listMunicipios);
		
		for (int i = 0; i < 10; i++) {
			//modelMunicipios.addElement();
		}
		
		JButton btnVolverMunicipios = new JButton("Volver");
		btnVolverMunicipios.setFont(new Font("Palatino Linotype", Font.PLAIN, 16));
		btnVolverMunicipios.setBorder(UIManager.getBorder("ToggleButton.border"));
		btnVolverMunicipios.setBounds(188, 378, 99, 39);
		panelListaMunicipios.add(btnVolverMunicipios);
		
		//Panel de lista de Estaciones
		panelListaEstaciones.setBounds(479, 0, 8, 7);
		panelListaEstaciones.setLayout(null);
		
		//Lista de Estaciones
		DefaultListModel<String> modelEstaciones = new DefaultListModel<String>();
		JList<String> listEstaciones = new JList<String>(modelEstaciones);
		listEstaciones.setBounds(83, 292, 331, -212);
		panelListaEstaciones.add(listEstaciones);
		
		for (int i = 0; i < 10; i++) {
			//modelEstaciones.addElement();
		}
		
		JButton btnVolverEstaciones = new JButton("Volver");
		btnVolverEstaciones.setFont(new Font("Palatino Linotype", Font.PLAIN, 16));
		btnVolverEstaciones.setBorder(UIManager.getBorder("ToggleButton.border"));
		btnVolverEstaciones.setBounds(185, 384, 99, 39);
		panelListaEstaciones.add(btnVolverEstaciones);
		
		JLabel Lb_ListaEstaciones = new JLabel("Lista de Estaciones");
		Lb_ListaEstaciones.setHorizontalAlignment(SwingConstants.CENTER);
		Lb_ListaEstaciones.setFont(new Font("Palatino Linotype", Font.PLAIN, 22));
		Lb_ListaEstaciones.setBounds(97, 25, 280, 29);
		panelListaEstaciones.add(Lb_ListaEstaciones);
		
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
		
		//Login
		btnAcceder.addActionListener(new ActionListener() {
			
			public void actionPerformed(ActionEvent e) {
				String user = txtIntroduceNombre.getText();
				String pw = txtIntroduceContrasenya.getText();
								
				Boolean loggeado = (new Query().logIn(user, pw));
				
				if (loggeado) {
					lblError.setVisible(false);
					c1.show(contentPane, "panelMunicipios");
					System.out.println("Usuario válido");
				}else {
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
			}
			
		});
		
	}
}
