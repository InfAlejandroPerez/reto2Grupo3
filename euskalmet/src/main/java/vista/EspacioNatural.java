package vista;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import javax.swing.JTextField;
import javax.swing.JRadioButton;
import javax.swing.JButton;
import javax.swing.JTextArea;

public class EspacioNatural extends JFrame {

	private JPanel contentPane;
	private JTextField txtEspacioNatural;
	private JTextField txtLocalización;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					EspacioNatural frame = new EspacioNatural();
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
	public EspacioNatural() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 500, 500);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblEspacioNatural = new JLabel("Espacio Natural:");
		lblEspacioNatural.setBounds(95, 129, 92, 14);
		contentPane.add(lblEspacioNatural);
		
		JLabel lblLocalizacion = new JLabel("Localizaci\u00F3n:");
		lblLocalizacion.setBounds(95, 170, 92, 14);
		contentPane.add(lblLocalizacion);
		
		JLabel lblGeolocalización = new JLabel("Geolocalizaci\u00F3n:");
		lblGeolocalización.setBounds(95, 214, 92, 14);
		contentPane.add(lblGeolocalización);
		
		txtEspacioNatural = new JTextField();
		txtEspacioNatural.setBounds(197, 122, 163, 29);
		contentPane.add(txtEspacioNatural);
		txtEspacioNatural.setColumns(10);
		
		txtLocalización = new JTextField();
		txtLocalización.setColumns(10);
		txtLocalización.setBounds(197, 163, 163, 29);
		contentPane.add(txtLocalización);
		
		JRadioButton rdbtnFavorito = new JRadioButton("Favorito");
		rdbtnFavorito.setBounds(95, 371, 109, 23);
		contentPane.add(rdbtnFavorito);
		
		JButton btnVolver = new JButton("Volver");
		btnVolver.setBounds(185, 401, 109, 29);
		contentPane.add(btnVolver);
		
		JTextArea textArea = new JTextArea();
		textArea.setBounds(95, 251, 267, 113);
		contentPane.add(textArea);
	}
}
