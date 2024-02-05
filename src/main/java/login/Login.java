package login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//http://localhost:8090/jsp_basic/80_login/login
@WebServlet("/80_login/login")
public class Login extends HttpServlet {

  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse res)
      throws ServletException, IOException {

    // 아이디, 패스워드 값을 받아온다.
    String userid = req.getParameter("userid");
    String userpw = req.getParameter("userpw");

    System.out.printf("<%s>\n", userid);
    System.out.printf("<%s>\n", userpw);

    // 아이디저장 여부
    int idsave = 0;
    String idsave_ = req.getParameter("idsave");
    if (idsave_ != null && idsave_ != "") {
      idsave = Integer.parseInt(idsave_);
    }

    // DB로부터 받아온 id, pw와 같은 비교하는 로직
    String DBid = "dokdo";
    String DBpw = "87k";

    // 만약 일치하면 세션을 생성하고, 아니면 로그인폼으로 되돌림
    if (userid.equals(DBid) && userpw.equals(DBpw)) {

      HttpSession session = req.getSession();
      session.setAttribute("id", userid);

      // 쿠키를 활용한 아이디저장
      if (idsave == 1) {
        Cookie cookie = new Cookie("userid", userid);
        res.addCookie(cookie);

      } else {// 쿠키를 더이상 사용하지 않는다
        Cookie cookie = new Cookie("userid", "");
        cookie.setMaxAge(0);
        res.addCookie(cookie);
      }

      res.sendRedirect("/jsp_basic/80_login/index.jsp");

    } else {
      res.sendRedirect("/jsp_basic/80_login/loginForm.jsp");
    }

  }

  // init(), service(), destroy(), doGet(), doPost()

}
