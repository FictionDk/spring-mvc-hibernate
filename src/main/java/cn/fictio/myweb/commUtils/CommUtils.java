package cn.fictio.myweb.commUtils;

import java.util.Random;

public class CommUtils {
	
	// 字符0-9, A-Z
	private static final char[] def = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F',
			'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' };

	
	public static String generateRandomNumber(int length) {
		StringBuffer buffer = new StringBuffer();
		Random ran = new Random();
		for (int i = 0; i < length; i++) {
			int num = ran.nextInt(36);
			char c = def[num];
			buffer.append(c);
		}
		return buffer.toString();
	}

	public static Integer scopeRandom(int length) {
		int max = 9;
		int min = 1;
		for (int i = 1; i < length; i++){
			max = max*10;
			min = min*10;
		}
		//int max = 99999999;
		//int min = 10000001;
		int result = new Random().nextInt(max) % (max - min + 1) + min;
		return result;
	}

}
