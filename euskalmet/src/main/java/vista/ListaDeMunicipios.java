package vista;

import javax.swing.JPanel;
import javax.swing.JLabel;
import javax.swing.SwingConstants;
import javax.swing.JTextArea;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JList;
import javax.swing.AbstractListModel;

public class ListaDeMunicipios extends JPanel {

	/**
	 * Create the panel.
	 */
	public ListaDeMunicipios() {
		setLayout(null);
		
		JLabel Lb_ListaMunicipios = new JLabel("Lista de Municipios");
		Lb_ListaMunicipios.setHorizontalAlignment(SwingConstants.CENTER);
		Lb_ListaMunicipios.setBounds(58, 11, 280, 29);
		add(Lb_ListaMunicipios);
		
		JButton btn_Volver = new JButton("Volver");
		btn_Volver.setBounds(138, 408, 118, 34);
		add(btn_Volver);
		
		JComboBox comboBox = new JComboBox();
		comboBox.setBounds(58, 74, 280, 29);
		add(comboBox);
		
		JList list = new JList();
		list.setModel(new AbstractListModel() {
			String[] values = new String[] {"Getxo", "ALGORTA", "ERANDIO"};
			public int getSize() {
				return values.length;
			}
			public Object getElementAt(int index) {
				return values[index];
			}
		});
		list.setBounds(343, 359, -287, -220);
		add(list);

	}
}
