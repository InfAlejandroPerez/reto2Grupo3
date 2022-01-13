package vista;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import java.awt.Font;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

import javax.swing.JTextField;
import javax.swing.JButton;

public class Register extends JFrame {

	private JPanel contentPane;
	private JTextField txtUsuario;
	private JTextField txtContrasenya;
	private JTextField txtRepetirContrasenya;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Register frame = new Register();
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
	public Register() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 500, 500);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblRegister = new JLabel("REGISTRARSE");
		lblRegister.setFont(new Font("Tahoma", Font.PLAIN, 24));
		lblRegister.setBounds(165, 75, 150, 32);
		contentPane.add(lblRegister);
		
		txtUsuario = new JTextField();
		txtUsuario.setText("Introduce un Usuario");
		txtUsuario.setBounds(165, 162, 150, 20);
		contentPane.add(txtUsuario);
		txtUsuario.setColumns(10);
		txtUsuario.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				txtUsuario.setText("");
			}
		});
		
		txtContrasenya = new JTextField();
		txtContrasenya.setText("Introduce una contrase\u00F1a");
		txtContrasenya.setColumns(10);
		txtContrasenya.setBounds(165, 214, 150, 20);
		contentPane.add(txtContrasenya);
		txtContrasenya.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				txtContrasenya.setText("");
			}
		});
		
		txtRepetirContrasenya = new JTextField();
		txtRepetirContrasenya.setText("Repite la contrase\u00F1a");
		txtRepetirContrasenya.setColumns(10);
		txtRepetirContrasenya.setBounds(165, 264, 150, 20);
		contentPane.add(txtRepetirContrasenya);
		txtRepetirContrasenya.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				txtRepetirContrasenya.setText("");
			}
		});
		
		JButton btnRegister = new JButton("Registrarse");
		btnRegister.setBounds(112, 359, 89, 23);
		contentPane.add(btnRegister);
		
		JButton btnCancelar = new JButton("Cancelar");
		btnCancelar.setBounds(277, 359, 89, 23);
		contentPane.add(btnCancelar);
	}

}
