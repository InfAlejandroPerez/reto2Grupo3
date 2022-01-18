package vista;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import java.awt.Font;
import javax.swing.JComboBox;

public class TabEspaciosNaturales extends JFrame {

	private JPanel contentPane;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					TabEspaciosNaturales frame = new TabEspaciosNaturales();
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
	public TabEspaciosNaturales() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 500, 500);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblProvincias = new JLabel("Provincias:");
		lblProvincias.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblProvincias.setToolTipText("");
		lblProvincias.setBounds(89, 68, 66, 20);
		contentPane.add(lblProvincias);
		
		JLabel lblMunicipio = new JLabel("Municipio:");
		lblMunicipio.setToolTipText("");
		lblMunicipio.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblMunicipio.setBounds(89, 120, 66, 20);
		contentPane.add(lblMunicipio);
		
		JComboBox comboBoxProvincias = new JComboBox();
		comboBoxProvincias.setBounds(194, 66, 203, 22);
		contentPane.add(comboBoxProvincias);
		
		JComboBox comboBoxMunicipio = new JComboBox();
		comboBoxMunicipio.setBounds(194, 118, 203, 22);
		contentPane.add(comboBoxMunicipio);
	}
}
