package kr.co.book.util;

public class StringUtils {
	
	/**
	 * 문자열을 정수로 변환해서 반환한다.
	 * 숫자로 변환할 수 없는 경우에는 기본값(defaultValue)을 반환한다.
	 * @param str 정수로 변환할 문자열
	 * @param defaultValue 변환할 수 없을 때 반환할 기본값
	 * @return 변환된 정수값 또는 기본값
	 */
	public static int strToInt(String str, int defaultValue) {
		if (str == null) {
			return defaultValue;
		}
		str = str.trim();
		if (str.isEmpty()) {
			return defaultValue;
		}
		
		try {
			return Integer.parseInt(str);
		} catch (NumberFormatException ex) {
			return defaultValue;
		}
	}

	/**
	 * 문자열을 정수로 변환해서 반환한다.
	 * @param str 숫자로 구성된 문자열
	 * @return 정수값
	 */
	public static int strToInt(String str) {
		if (str == null) {
			throw new IllegalArgumentException("null값은 숫자로 변환할 수 없습니다.");
		}
		str = str.trim();
		if (str.isEmpty()) {
			throw new IllegalArgumentException("빈 문자열은 숫자로 변환할 수 없습니다.");
		}
		return Integer.parseInt(str);
	}
}
