package vista;

import javax.swing.JPanel;
import javax.swing.JButton;
import javax.swing.JTextArea;
import javax.swing.JLabel;
import javax.swing.SwingConstants;

public class ListaDeEstaciones extends JPanel {

	/**
	 * Create the panel.
	 */
	public ListaDeEstaciones() {
		setLayout(null);
		
		JButton btn_Volver = new JButton("Volver");
		btn_Volver.setBounds(166, 361, 108, 32);
		add(btn_Volver);
		
		JTextArea textArea = new JTextArea();
		textArea.setBounds(60, 60, 283, 260);
		add(textArea)
		;
		
		JLabel lb_ListaEstaciones = new JLabel("Lista de Estaciones");
		lb_ListaEstaciones.setHorizontalAlignment(SwingConstants.CENTER);
		lb_ListaEstaciones.setBounds(60, 11, 265, 38);
		add(lb_ListaEstaciones);

	}
}
