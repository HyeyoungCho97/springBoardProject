package util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

import javax.mail.PasswordAuthentication;

public class UserAuthenticator extends javax.mail.Authenticator {

	 String user="";
     String password="";
     
     public UserAuthenticator() {
    	 try (BufferedReader br = new BufferedReader(new FileReader(new File("D:\\naverLog.txt")))){
 			user = br.readLine();
 			password = br.readLine();
 		} catch (IOException e1) {
 			e1.printStackTrace();
 		}
     }
	
	protected PasswordAuthentication getPasswordAuthentication() {
        return new PasswordAuthentication(user, password);
    }
}
