/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.1.39
 * Generated at: 2025-07-07 03:00:52 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;
import kr.co.movmov.utils.StringUtils;
import kr.co.movmov.vo.ShopItem;
import kr.co.movmov.mapper.ShopItemMapper;
import kr.co.movmov.vo.Post;
import java.util.List;
import kr.co.movmov.mapper.PostMapper;
import java.util.HashMap;
import java.util.Map;
import kr.co.movmov.vo.User;
import kr.co.movmov.utils.MybatisUtils;
import kr.co.movmov.mapper.UserMapper;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports,
                 org.apache.jasper.runtime.JspSourceDirectives {

  private static final jakarta.servlet.jsp.JspFactory _jspxFactory =
          jakarta.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("/pages/mypage/modal-login.jsp", Long.valueOf(1747354838000L));
    _jspx_dependants.put("/pages/common/header.jsp", Long.valueOf(1747378225000L));
    _jspx_dependants.put("/pages/common/footer.jsp", Long.valueOf(1747020817000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.LinkedHashSet<>(4);
    _jspx_imports_packages.add("jakarta.servlet");
    _jspx_imports_packages.add("jakarta.servlet.http");
    _jspx_imports_packages.add("jakarta.servlet.jsp");
    _jspx_imports_classes = new java.util.LinkedHashSet<>(15);
    _jspx_imports_classes.add("kr.co.movmov.mapper.PostMapper");
    _jspx_imports_classes.add("kr.co.movmov.vo.User");
    _jspx_imports_classes.add("java.util.List");
    _jspx_imports_classes.add("kr.co.movmov.utils.StringUtils");
    _jspx_imports_classes.add("kr.co.movmov.vo.ShopItem");
    _jspx_imports_classes.add("java.util.Map");
    _jspx_imports_classes.add("kr.co.movmov.utils.MybatisUtils");
    _jspx_imports_classes.add("kr.co.movmov.mapper.UserMapper");
    _jspx_imports_classes.add("java.util.HashMap");
    _jspx_imports_classes.add("kr.co.movmov.vo.Post");
    _jspx_imports_classes.add("kr.co.movmov.mapper.ShopItemMapper");
  }

  private volatile jakarta.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public boolean getErrorOnELNotFound() {
    return false;
  }

  public jakarta.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final jakarta.servlet.http.HttpServletRequest request, final jakarta.servlet.http.HttpServletResponse response)
      throws java.io.IOException, jakarta.servlet.ServletException {

    if (!jakarta.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final jakarta.servlet.jsp.PageContext pageContext;
    jakarta.servlet.http.HttpSession session = null;
    final jakarta.servlet.ServletContext application;
    final jakarta.servlet.ServletConfig config;
    jakarta.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    jakarta.servlet.jsp.JspWriter _jspx_out = null;
    jakarta.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

	PostMapper postMapper = MybatisUtils.getMapper(PostMapper.class);
	Map<String, Object> conditionMoviePopular = new HashMap<>();
	conditionMoviePopular.put("sort", "views");
	conditionMoviePopular.put("rows", 5);
	List<Post> popularMoviePosts = postMapper.getPosts(conditionMoviePopular);

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta charset=\"UTF-8\">\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<title>MovMov</title>\n");
      out.write("<link rel=\"icon\" href=\"resources/images/common/favicon.ico\">\n");
      out.write("<link href=\"https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap\"\n");
      out.write("	rel=\"stylesheet\">\n");
      out.write("<link rel=\"stylesheet\" href=\"resources/style/common/main.css\">\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

	/*
		HttpSession에서 로그인된 정보를 조회해서
		로그인된 사용자 아이디가 조회되면 로그인된 상태다.
	*/
	User loginUser = (User) session.getAttribute("LOGIN_USER");
	

      out.write("\n");
      out.write("	<!-- 로그인 모달 포함  -->\n");
      out.write("	");
      out.write('\n');

/*
		요청 파라미터
	- redirectUrl (null 가능)
		- null 일 경우 request.getRequestURI() 로 응답 전송
	*/
	String redirectUrl = request.getParameter("redirectUrl");

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"ko\">\n");
      out.write("<head>\n");
      out.write("<meta charset=\"UTF-8\" />\n");
      out.write("<title>로그인</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("	<div class=\"modal-background\">\n");
      out.write("		<div class=\"modal-login\">\n");
      out.write("			<span class=\"modal-close\">&times;</span>\n");
      out.write("\n");
      out.write("			<h2>로그인</h2>\n");
      out.write("\n");
      out.write("			<!-- form 태그 추가로 로그인 처리 가능 -->\n");
      out.write("			<form id=\"login-form\" action=\"/movmov/pages/mypage/login.jsp\" method=\"post\">\n");
      out.write("				<input type=\"text\" name=\"id\" placeholder=\"아이디\" id=\"login-id-field\"\n");
      out.write("					class=\"input-login\" required />\n");
      out.write("				<input type=\"password\" name=\"password\" placeholder=\"비밀번호\" id=\"login-pw-field\"\n");
      out.write("					class=\"input-login\" required />\n");
      out.write("				<input type=\"hidden\" name=\"redirectUrl\"\n");
      out.write("					value=\"");
      out.print(redirectUrl );
      out.write("\">\n");
      out.write("				<button type=\"submit\" class=\"btn-login-submit\">로그인</button>\n");
      out.write("			</form>\n");
      out.write("\n");
      out.write("			<div class=\"link-small\">\n");
      out.write("				<a href=\"#\">비밀번호를 잊으셨나요?</a>\n");
      out.write("			</div>\n");
      out.write("\n");
      out.write("			<div class=\"link-small\">\n");
      out.write("				<a href=\"/movmov/pages/mypage/register-form.jsp\">계정이 없으신가요? <strong>회원가입</strong></a>\n");
      out.write("			</div>\n");
      out.write("		</div>\n");
      out.write("	</div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("<header>\n");
      out.write("	<div class=\"logo\">\n");
      out.write("		<img src=\"/movmov/resources/images/common/logo-primary.png\"\n");
      out.write("			alt=\"MovMov 로고\" class=\"logo-img\">\n");
      out.write("	</div>\n");
      out.write("	<nav>\n");
      out.write("		<ul>\n");
      out.write("			<li><a href=\"/movmov/index.jsp\">홈</a></li>\n");
      out.write("			<li><a href=\"/movmov/pages/movie/movie-list.jsp\">영화</a></li>\n");
      out.write("			<li><a href=\"/movmov/pages/community/community-main.jsp\">커뮤니티</a></li>\n");
      out.write("			<li><a href=\"/movmov/pages/shop/shop-main.jsp\">Mov Commerce</a></li>\n");
      out.write("		</ul>\n");
      out.write("	</nav>\n");

	//비로그인 상태
	if (loginUser == null) {

      out.write("\n");
      out.write("		<div class=\"client\">\n");
      out.write("	     	<button type=\"button\" class=\"btn-signin\"\n");
      out.write("	     		id=\"btn-header-login\">로그인</button>\n");
      out.write("	     	<a href=\"/movmov/pages/mypage/register-form.jsp\">\n");
      out.write("	     		<button type=\"button\" class=\"btn-signin\">회원가입</button>\n");
      out.write("	     	</a>\n");
      out.write("	    </div>\n");
      out.write("	\n");

	//로그인 상태
	} else {

      out.write("\n");
      out.write("		<div class=\"client\">\n");
      out.write("		<a href=\"/movmov/pages/mypage/page.jsp\">\n");
      out.write("			<button type=\"button\" class=\"btn-signin\">");
      out.print(loginUser.getNickname() );
      out.write("</button>\n");
      out.write("		</a>\n");
      out.write("		<a href=\"/movmov/pages/shop/shop-cart.jsp\">\n");
      out.write("			<button type=\"button\" class=\"btn-cart\">장바구니</button>\n");
      out.write("		</a>\n");
      out.write("		<a href=\"/movmov/pages/mypage/logout.jsp\">\n");
      out.write("			<button type=\"button\" class=\"btn-signin\">로그아웃</button>\n");
      out.write("		</a>\n");
      out.write("		<img src=\"/movmov/resources/images/common/default-profile.png\" id=\"profile-toggle\"\n");
      out.write("			alt=\"프로필\">\n");
      out.write("		<div class=\"profile-dropdown\" id=\"profile-dropdown\">\n");
      out.write("			<div class=\"profile-info\">\n");
      out.write("  					<img src=\"/movmov/resources/images/common/default-profile.png\" alt=\"프로필 이미지\">\n");
      out.write("				<div class=\"user-meta\">\n");
      out.write("					<strong>");
      out.print(loginUser.getNickname() );
      out.write("</strong>님\n");
      out.write("					<p>");
      out.print(loginUser.getEmail() );
      out.write("</p>\n");
      out.write("					<div class=\"actions\">\n");
      out.write("						<a href=\"/movmov/pages/mypage/page.jsp\">My Page</a> | <a href=\"/movmov/pages/cs/faq.jsp\">고객센터</a>\n");
      out.write("					</div>\n");
      out.write("					<div class=\"balance\">\n");
      out.write("						잔여 포인트 <strong>");
      out.print(loginUser.getPoint() );
      out.write("</strong>P\n");
      out.write("					</div>\n");
      out.write("				</div>\n");
      out.write("			</div>\n");
      out.write("		</div>\n");
      out.write("	</div>\n");
      out.write("	<script src=\"/movmov/resources/script/common/toggler.js\"></script>	\n");

	}

      out.write("\n");
      out.write("</header>\n");
      out.write("<script src=\"https://code.jquery.com/jquery-3.7.1.min.js\"></script>\n");
      out.write("<script src=\"/movmov/resources/script/common/header-login.js\"></script>\n");
      out.write("	");
      out.write("\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("   <main>\n");
      out.write("      <section class=\"top-section\">\n");
      out.write("         <div class=\"article-card\">\n");
      out.write("            <a href=\"pages/movie/movie-detail.jsp?movieNo=88\">\n");
      out.write("            <img\n");
      out.write("               src=\"resources/images/movie/88.webp\"\n");
      out.write("               alt=\"역샤 이미지\">\n");
      out.write("	         </a>\n");
      out.write("            <div class=\"label\">고전 명작 재개봉</div>\n");
      out.write("            <div class=\"content\">\n");
      out.write("               <h3>일본 애니메이션 고전 명작 &lt;기동 전사 건담 역습의 샤아&gt; 한국 개봉</h3>\n");
      out.write("            </div>\n");
      out.write("         </div>\n");
      out.write("\n");
      out.write("         <div class=\"hot-title-card\">\n");
      out.write("            <div class=\"label\">지금 가장 핫한 작품</div>\n");
      out.write("            <a href=\"pages/movie/movie-detail.jsp?movieNo=82\">\n");
      out.write("            <img\n");
      out.write("               src=\"resources/images/movie/82.webp\"\n");
      out.write("               alt=\"콘클라베 포스터\">\n");
      out.write("            </a>\n");
      out.write("            <h3>콘클라베</h3>\n");
      out.write("            <p>실제로 진행된 콘클라베로 인해 재조명!</p>\n");
      out.write("         </div>\n");
      out.write("\n");
      out.write("         <div class=\"trailer-card\">\n");
      out.write("         	<a href=\"pages/movie/movie-detail.jsp?movieNo=81\">\n");
      out.write("            <img\n");
      out.write("               src=\"resources/images/movie/81.webp\"\n");
      out.write("               alt=\"야당\">\n");
      out.write("            </a>\n");
      out.write("            <div class=\"trailer-info\">\n");
      out.write("               <div class=\"label\">박스오피스 1위 영화</div>\n");
      out.write("               <h4>야당</h4>\n");
      out.write("            	<p>범죄 드라마 | 한국</p>\n");
      out.write("            </div>\n");
      out.write("         </div>\n");
      out.write("      </section>\n");
      out.write("\n");
      out.write("		<section class=\"menu-section\">\n");
      out.write("			<a href=\"pages/movie/movie-list.jsp\">\n");
      out.write("				<button type=\"button\">🎬 영화</button>\n");
      out.write("			</a>\n");
      out.write("			<a href=\"pages/shop/shop-main.jsp\">\n");
      out.write("				<button type=\"button\">🎁 Mov Commerce</button>\n");
      out.write("			</a>\n");
      out.write("			<a href=\"pages/community/community-main.jsp\">\n");
      out.write("				<button type=\"button\">📊 커뮤니티</button>\n");
      out.write("			</a>\n");
      out.write("		</section>\n");
      out.write("	</main>\n");
      out.write("\n");
      out.write("   <!-- 영화 굿즈 베스트 섹션 -->\n");
      out.write("   <section class=\"goods-section\">\n");
      out.write("      <h2>🎁 인기 영화 굿즈</h2>\n");
      out.write("      <div class=\"goods-list\">\n");
      out.write("         ");

         ShopItemMapper itemMapper = MybatisUtils.getMapper(ShopItemMapper.class);
         List<ShopItem> items = itemMapper.getShopItemByCategoryNo(3);
					for (int j = 0; j < items.size() && j < 6; j++) {
						ShopItem item = items.get(j);
					
      out.write("\n");
      out.write("					<div class=\"goods-card\">\n");
      out.write("						<div class=\"image-wrapper\">\n");
      out.write("							<a href=\"pages/shop/shop-detail.jsp?ino=");
      out.print(item.getNo() );
      out.write("\"><img\n");
      out.write("								src=\"/movmov/resources/images/shop/");
      out.print(item.getImagePath() );
      out.write("\" alt=\"");
      out.print(item.getImagePath() );
      out.write("\" /></a>\n");
      out.write("						</div>\n");
      out.write("						<h4>");
      out.print(item.getName());
      out.write("</h4>\n");
      out.write("						<p>\n");
      out.write("							₩");
      out.print(StringUtils.commaWithNumber(item.getPrice()));
      out.write("</p>\n");
      out.write("					</div>\n");
      out.write("					");

					}
					
      out.write("\n");
      out.write("         <!-- 추가 굿즈 항목들 -->\n");
      out.write("      </div>\n");
      out.write("   </section>\n");
      out.write("\n");
      out.write("   <!-- 커뮤니티 인기 글 섹션 -->\n");
      out.write("   <section class=\"community-section\">\n");
      out.write("      <h2>💬 커뮤니티 인기글</h2>\n");
      out.write("      <ul class=\"community-list\">\n");

	for (Post post : popularMoviePosts) {

      out.write("\n");
      out.write("		<a href=\"pages/community/post-detail.jsp?pno=");
      out.print(post.getNo() );
      out.write("\">\n");
      out.write("			<li>🔥 <span style=\"color:#FF498D;\">[");
      out.print(post.getHeader().getName() );
      out.write("]</span> ");
      out.print(post.getTitle() );
      out.write("</li>\n");
      out.write("		</a>\n");

	}

      out.write("\n");
      out.write("      </ul>\n");
      out.write("   </section>\n");
      out.write("   <script src=\"https://code.jquery.com/jquery-3.7.1.min.js\"></script>\n");
      out.write("   \n");
      out.write("   ");
      out.write("\n");
      out.write("\n");
      out.write("<footer class=\"footer\">\n");
      out.write("	<div class=\"footer-wrapper\">\n");
      out.write("		<div class=\"footer-top\">\n");
      out.write("			<p class=\"rating-info\">\n");
      out.write("				지금까지 <span class=\"rating-count\">★737,166,391</span> 개의 평가가 쌓였어요.\n");
      out.write("			</p>\n");
      out.write("			<div class=\"language-select\">\n");
      out.write("				<select>\n");
      out.write("					<option>한국어</option>\n");
      out.write("				</select>\n");
      out.write("			</div>\n");
      out.write("		</div>\n");
      out.write("\n");
      out.write("		<div class=\"footer-links\">\n");
      out.write("			<a href=\"#\">서비스 이용약관</a> <span>|</span> <a href=\"#\"><strong>개인정보\n");
      out.write("					처리방침</strong></a> <span>|</span> <a href=\"#\">회사 안내</a>\n");
      out.write("		</div>\n");
      out.write("\n");
      out.write("		<div class=\"footer-contact\">\n");
      out.write("			<p>고객센터 | cs@movmov.com, 02-000-0000</p>\n");
      out.write("			<p>광고 문의 | ad-sales@movmov.com / 최신 광고 소개서</p>\n");
      out.write("			<p>\n");
      out.write("				제휴 및 대외 협력 | <a href=\"https://movmov.team/contact\" target=\"_blank\">https://movmov.team/contact</a>\n");
      out.write("			</p>\n");
      out.write("		</div>\n");
      out.write("\n");
      out.write("		<div class=\"footer-company\">\n");
      out.write("			<p>주식회사 뭅뭅 | 대표 이응수 | 서울 종로구 율곡로10길 105 디아망 4층</p>\n");
      out.write("			<p>사업자 등록 번호 211-210-61239</p>\n");
      out.write("		</div>\n");
      out.write("\n");
      out.write("		<div class=\"footer-bottom\">\n");
      out.write("			<span class=\"copyright\"> © Copy Right MovMov 2025 Inc. All\n");
      out.write("				rights reserved.</span>\n");
      out.write("			<div class=\"footer-socials\">\n");
      out.write("				<span><i class=\"fa-brands fa-facebook\"></i></span> <span><i\n");
      out.write("					class=\"fa-brands fa-x-twitter\"></i></span> <span><i\n");
      out.write("					class=\"fa-brands fa-instagram\"></i></span>\n");
      out.write("			</div>\n");
      out.write("		</div>\n");
      out.write("	</div>\n");
      out.write("</footer>");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof jakarta.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
