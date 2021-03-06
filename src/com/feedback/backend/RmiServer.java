package com.feedback.backend;

import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;

/**
 * This is the server class. Need to run this class to start the server.<br><br>
 * 
 * @author Ameshi Udara (2022702)
 */

public class RmiServer {

	public RmiServer() throws Exception {
	}

	public static void main(String args[]) {
		try {
			DataBaseFunctions dbObject = new DataBaseFunctions();
			Registry reg = LocateRegistry.createRegistry(1099);
			reg.bind("QuestionService", dbObject);

			System.out.println("started the RMI server successfully");

		} catch (Exception e) {
			System.err.println("Server exception: " + e.toString());
			e.printStackTrace();
		}
	}

}
