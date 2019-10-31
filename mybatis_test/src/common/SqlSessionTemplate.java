package common;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionTemplate {
	// 이 클래스의 구동에 있어서 Mybatis 라이브러리가 필요한 것임.
	public static SqlSession getSqlSession() {
		SqlSession session = null;
		
		// 아래부터는 DB 접속 정보가 xml에 잘 명시되어있을 것이라는 전제하에 작성되는 코드임
		String resource = "mybatis-config.xml";
		
		try {
			// 해당 리소스 경로(~~.xml)를 바탕으로 input stream 생성 (for file io)
			InputStream is = Resources.getResourceAsStream(resource);
			
			// SqlSessionFactory를 만들 수 있는 팩토리빌더
			// '세션'을 만들기 위한 '팩토리'를 만들기 위한 '빌더'
			SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
			
			// 팩토리빌더를 통해서 SqlSessionFactory 생성
			SqlSessionFactory factory = builder.build(is);
			
			// SqlSessionFactory를 가지고 SqlSession을 생성
			// 매개변수의 false는 auto Commit을 해제하는 설정.
			session = factory.openSession(false);
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		return session;
	}
}
