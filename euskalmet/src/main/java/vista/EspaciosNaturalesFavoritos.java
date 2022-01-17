package vista;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import java.awt.Font;
import javax.swing.JList;
import javax.swing.JButton;

public class EspaciosNaturalesFavoritos extends JFrame {

	private JPanel contentPane;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					EspaciosNaturalesFavoritos frame = new EspaciosNaturalesFavoritos();
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
	public EspaciosNaturalesFavoritos() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 500, 500);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblEspaciosNaturales = new JLabel("Espacios Naturales Favoritos");
		lblEspaciosNaturales.setFont(new Font("Tahoma", Font.PLAIN, 20));
		lblEspaciosNaturales.setBounds(115, 33, 254, 53);
		contentPane.add(lblEspaciosNaturales);
		
		JList list = new JList();
		list.setBounds(132, 351, 222, -217);
		contentPane.add(list);
		
		JButton btnVolver = new JButton("Volver");
		btnVolver.setBounds(194, 393, 106, 33);
		contentPane.add(btnVolver);
	}
}
