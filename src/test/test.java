package test;

import java.text.DecimalFormat;

public class test {

	public static void main(String[] args) {
		
		DecimalFormat decimalFormat = new DecimalFormat("0000.0");
		System.out.println(decimalFormat.format(10));
		String aString = String.format("%07d", 1);
		System.out.println(aString);
		String aString2="00121";
		int aInt = Integer.parseInt(aString2);
		System.out.print(aInt);
	}

}
