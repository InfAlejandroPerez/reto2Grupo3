package vista;

import java.awt.BorderLayout;
import java.awt.CardLayout;
import java.awt.EventQueue;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import javax.swing.JTextField;
import javax.swing.JRadioButton;
import javax.swing.JButton;
import javax.swing.UIManager;
import java.awt.Rectangle;
import javax.swing.SwingConstants;
import javax.swing.JComboBox;
import javax.swing.JList;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class LogIn extends JFrame {

	private JPanel contentPane;
	private JTextField txtIntroduceNombre;
	private JTextField txtIntroduceContrasenya;
	private JRadioButton rdbtnRememberMe;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		try {
			UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
		} catch (Throwable e) {
			e.printStackTrace();
		}
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					LogIn frame = new LogIn();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public LogIn() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 503, 500);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);

		JLabel lblUsuario = new JLabel("Ususario");
		lblUsuario.setBounds(155, 134, 46, 14);
		contentPane.add(lblUsuario);

		txtIntroduceNombre = new JTextField();
		txtIntroduceNombre.setText("Introduce tu nombre");
		txtIntroduceNombre.setBounds(155, 159, 172, 20);
		contentPane.add(txtIntroduceNombre);
		txtIntroduceNombre.setColumns(10);
		txtIntroduceNombre.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				txtIntroduceNombre.setText("");
			}
		});

		JLabel lblContrasenya = new JLabel("Contrase\u00F1a");
		lblContrasenya.setBounds(155, 202, 65, 14);
		contentPane.add(lblContrasenya);

		txtIntroduceContrasenya = new JTextField();
		txtIntroduceContrasenya.setText("Introduce tu contrase\u00F1a");
		txtIntroduceContrasenya.setBounds(155, 227, 172, 20);
		contentPane.add(txtIntroduceContrasenya);
		txtIntroduceContrasenya.setColumns(10);
		txtIntroduceContrasenya.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				txtIntroduceContrasenya.setText("");
			}
		});

		rdbtnRememberMe = new JRadioButton("Recu\u00E9rdame");
		rdbtnRememberMe.setBounds(155, 254, 109, 23);
		contentPane.add(rdbtnRememberMe);

		JButton btnAcceder = new JButton("Acceder");
		btnAcceder.setBounds(192, 311, 89, 23);
		contentPane.add(btnAcceder);

		JButton btnRegistrarse = new JButton("Registrarse");
		btnRegistrarse.setBounds(192, 357, 89, 23);
		contentPane.add(btnRegistrarse);
		
		//Panel de lista de Municipios
		JPanel panelListaMunicipios = new JPanel();
		panelListaMunicipios.setBounds(0, 0, 8, 7);
		//contentPane.add(panelListaMunicipios);
		panelListaMunicipios.setLayout(null);
		
		JLabel Lb_ListaMunicipios = new JLabel("Lista de Municipios");
		Lb_ListaMunicipios.setHorizontalAlignment(SwingConstants.CENTER);
		Lb_ListaMunicipios.setBounds(91, 11, 280, 29);
		panelListaMunicipios.add(Lb_ListaMunicipios);
		
		JButton btn_Volver = new JButton("Volver");
		btn_Volver.setBounds(183, 416, 118, 34);
		panelListaMunicipios.add(btn_Volver);
		
		JComboBox CB_Provincias = new JComboBox();
		CB_Provincias.setBounds(101, 51, 280, 29);
		panelListaMunicipios.add(CB_Provincias);
		
		JList listMunicipios = new JList();
		listMunicipios.setBounds(111, 319, 270, -217);
		panelListaMunicipios.add(listMunicipios);
		
		//Panel de lista de Estaciones
		JPanel panelListaEstaciones = new JPanel();
		panelListaEstaciones.setBounds(479, 0, 8, 7);
		//contentPane.add(panelListaEstaciones);
		panelListaEstaciones.setLayout(null);
		
		JButton btn_Volver_1 = new JButton("Volver");
		btn_Volver_1.setBounds(187, 403, 108, 32);
		panelListaEstaciones.add(btn_Volver_1);
		
		JLabel lb_ListaEstaciones = new JLabel("Lista de Estaciones");
		lb_ListaEstaciones.setBounds(107, 11, 265, 38);
		panelListaEstaciones.add(lb_ListaEstaciones);
		lb_ListaEstaciones.setHorizontalAlignment(SwingConstants.CENTER);
		
		JList listEstaciones = new JList();
		listEstaciones.setBounds(83, 292, 331, -212);
		panelListaEstaciones.add(listEstaciones);
		
		JLabel lblError = new JLabel("Usuario o Contrase\u00F1a incorrectos");
		lblError.setBounds(155, 422, 172, 14);
		contentPane.add(lblError);
		lblError.setVisible(false);
		
		//CardLayout
		CardLayout c1 = new CardLayout();
		JPanel cards = new JPanel(c1);
		cards.add(panelListaMunicipios, "panelMunicipios");
		cards.add(panelListaEstaciones, "panelEstaciones");
		
		//Login
		btnAcceder.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				String user = txtIntroduceNombre.getText();
				String pw = txtIntroduceContrasenya.getText();
				
				Boolean loggeado = (new cliente.Query().logIn(user, pw));
				
				if (loggeado) {
					lblError.setVisible(false);
					c1.show(cards, "panelMunicipios");
					System.out.println("Usuario válido");
				}else {
					lblError.setVisible(true);
					System.out.println("Usuario no válido");
				}
				
				
			}
		});
		
	}
}
