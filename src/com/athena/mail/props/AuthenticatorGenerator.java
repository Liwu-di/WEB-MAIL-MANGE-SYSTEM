package com.athena.mail.props;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

/**
 * 该类用来生成Authenticator
 * 
 * @author lwd
 * 
 */

public final class AuthenticatorGenerator {
	public static String a;
	public static String b;
	/**
	 * 根据用户名和密码，生成Authenticator
	 * 
	 * @param userName
	 * @param password
	 * @return
	 */
	public static Authenticator getAuthenticator( String userName,  String password) {
		System.out.println(userName+password);
		a=userName;
		b=password;
		
		return new Authenticator() {
			@Override
			
			protected PasswordAuthentication getPasswordAuthentication() {
				System.out.println(a+b);
				return new PasswordAuthentication(a, b);
			}
		};
	}

}