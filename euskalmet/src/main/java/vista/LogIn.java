package vista;

import java.awt.BorderLayout;
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
		
		JPanel panel = new JPanel();
		panel.setBounds(0, 0, 487, 461);
		contentPane.add(panel);
		panel.setLayout(null);
		
		JLabel Lb_ListaMunicipios = new JLabel("Lista de Municipios");
		Lb_ListaMunicipios.setHorizontalAlignment(SwingConstants.CENTER);
		Lb_ListaMunicipios.setBounds(91, 11, 280, 29);
		panel.add(Lb_ListaMunicipios);
		
		JButton btn_Volver = new JButton("Volver");
		btn_Volver.setBounds(183, 416, 118, 34);
		panel.add(btn_Volver);
		
		JComboBox CB_Provincias = new JComboBox();
		CB_Provincias.setBounds(101, 51, 280, 29);
		panel.add(CB_Provincias);
		
		JList listMunicipios = new JList();
		listMunicipios.setBounds(111, 319, 270, -217);
		panel.add(listMunicipios);
	}
}
