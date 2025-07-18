package kr.co.jhta.util;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

/**
 * Mapper 인터페이스를 구현한 Mapper 인스턴스(객체)를 제공하는 유틸리티 클래스
 */
public class MybatisUtils {

	// mybatis의 핵심 객체
	// SqlSession객체를 제공하는 팩토리객체다.
	private static SqlSessionFactory sqlSessionFactory;
	
	// mybatis-config.xml(mybatis 환경설정파일)을 로드해서
	// SqlSessionFactory객체를 생성한다.
	static {
		try {
			String resources = "mybatis/mybatis-config.xml";
			InputStream in = Resources.getResourceAsStream(resources);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(in);
		} catch (Exception ex) {
			throw new RuntimeException(ex);
		}
	}
	
	/**
	 * Mapper 인터페이스를 전달받아서 그 인터페이스를 동적으로 구현한 객체를 반환한다.
	 * @param <T> Mapper 인터페이스
	 * @param type Mapper 인터페이스
	 * @return Maooer 인터페이스를 구현한 Mapper 인스턴스(객체)
	 */
	public static <T> T getMapper(Class<T> type) {
		SqlSession session = sqlSessionFactory.openSession(true);
		return session.getMapper(type);
	}
}
