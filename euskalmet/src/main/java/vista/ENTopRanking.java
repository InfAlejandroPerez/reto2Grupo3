package vista;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JButton;
import javax.swing.JList;
import javax.swing.JLabel;
import java.awt.Font;

public class ENTopRanking extends JFrame {

	private JPanel contentPane;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					ENTopRanking frame = new ENTopRanking();
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
	public ENTopRanking() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 500, 500);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JButton btnVolver = new JButton("Volver");
		btnVolver.setBounds(190, 379, 106, 33);
		contentPane.add(btnVolver);
		
		JList list = new JList();
		list.setBounds(114, 343, 254, -217);
		contentPane.add(list);
		
		JLabel lblTopEspaciosNaturales = new JLabel("Top Espacios Naturales");
		lblTopEspaciosNaturales.setFont(new Font("Tahoma", Font.PLAIN, 20));
		lblTopEspaciosNaturales.setBounds(130, 24, 207, 53);
		contentPane.add(lblTopEspaciosNaturales);
	}
}
