package vista;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import javax.swing.JButton;
import javax.swing.JTextField;
import javax.swing.JTextArea;

public class Municipio extends JFrame {

	private JPanel contentPane;
	private JTextField txtMunicipio;
	private JTextField txtLocalizacion;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Municipio frame = new Municipio();
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
	public Municipio() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 500, 500);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblMunicipio = new JLabel("Municipio:");
		lblMunicipio.setBounds(93, 96, 114, 14);
		contentPane.add(lblMunicipio);
		
		JLabel lblLocalizacion = new JLabel("Localizaci\u00F3n:");
		lblLocalizacion.setBounds(93, 141, 114, 14);
		contentPane.add(lblLocalizacion);
		
		JLabel lblDatosMetereologicos = new JLabel("Datos Metereol\u00F3gicos:");
		lblDatosMetereologicos.setBounds(93, 185, 114, 14);
		contentPane.add(lblDatosMetereologicos);
		
		JLabel lblEspaciosNaturales = new JLabel("Espacios Naturales:");
		lblEspaciosNaturales.setBounds(93, 286, 114, 14);
		contentPane.add(lblEspaciosNaturales);
		
		JButton btnVolver = new JButton("Volver");
		btnVolver.setBounds(203, 386, 107, 34);
		contentPane.add(btnVolver);
		
		txtMunicipio = new JTextField();
		txtMunicipio.setBounds(170, 88, 181, 31);
		contentPane.add(txtMunicipio);
		txtMunicipio.setColumns(10);
		
		txtLocalizacion = new JTextField();
		txtLocalizacion.setColumns(10);
		txtLocalizacion.setBounds(170, 133, 181, 31);
		contentPane.add(txtLocalizacion);
		
		JTextArea textArea = new JTextArea();
		textArea.setBounds(93, 210, 265, 58);
		contentPane.add(textArea);
		
		JTextArea textArea_1 = new JTextArea();
		textArea_1.setBounds(93, 311, 265, 58);
		contentPane.add(textArea_1);
	}

}
