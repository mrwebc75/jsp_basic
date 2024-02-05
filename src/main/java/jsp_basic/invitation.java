package jsp_basic;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//서블릿은 브라우저로 접속해서 실행하는 자바 클래스(프로그램)이다.
//서블릿은 HTML 소스코드를 동적으로 생성해주는 자바 프로그램이다.
//서블릿 프로그램의 출력대상은 브라우저다.
public class Invitation extends HttpServlet {

  private static final long serialVersionUID = 1L;

  @Override
  protected void service(HttpServletRequest req, HttpServletResponse res) throws IOException {

    System.out.println("Hello Servlet~!");

    // 요청과 응답에 대한 한글 인코딩설정
    req.setCharacterEncoding("utf-8");
    res.setContentType("text/html;charset=utf-8");

    String name = req.getParameter("name");

    PrintWriter out = res.getWriter();

    out.write("\r\n");
    out.write("<!DOCTYPE html>\r\n");
    out.write("<html>\r\n");
    out.write("<head>\r\n");
    out.write("<meta charset=\"UTF-8\">\r\n");
    out.write("<title>청첩장</title>\r\n");
    out.write("</head>\r\n");
    out.write("<body>\r\n");
    out.write(" <h1>최고의 순간은 갑자기 찾아오는거야~!</h1>\r\n");
    out.write(" \r\n");

    out.printf("<h2>%s~! 내 결혼식에 꼭 참석해줘~!</h2>\r\n", name);

    out.write("</body>\r\n");
    out.write("</html>");

    out.close();

  }

}
