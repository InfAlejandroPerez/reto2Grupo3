package app;

import java.awt.EventQueue;

import javax.swing.UIManager;

import controller.Controller;
import vista.LogIn;

public class Main {
	public static void main(String[] args) {
		final Controller controlador = new Controller();
		
		try {
			UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
		} catch (Throwable e) {
			e.printStackTrace();
		}
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					LogIn frame = new LogIn(controlador);
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

}
