package vista;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import java.awt.Font;
import javax.swing.JComboBox;

public class TabMunicipios extends JFrame {

	private JPanel contentPane;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					TabMunicipios frame = new TabMunicipios();
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
	public TabMunicipios() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 500, 500);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblProvincias = new JLabel("Provincias:");
		lblProvincias.setToolTipText("");
		lblProvincias.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblProvincias.setBounds(95, 76, 66, 20);
		contentPane.add(lblProvincias);
		
		JComboBox comboBoxProvincias = new JComboBox();
		comboBoxProvincias.setBounds(190, 77, 203, 22);
		contentPane.add(comboBoxProvincias);
	}

}
