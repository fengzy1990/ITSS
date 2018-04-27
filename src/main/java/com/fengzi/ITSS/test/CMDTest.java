package com.fengzi.ITSS.test;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Value;

public class CMDTest {
	@Value("${jdbc.crt}")
	public static String jdbcrt;

	public static void main() throws IOException {
		// TODO Auto-generated method stub

		System.out.println(jdbcrt);
	}


}
