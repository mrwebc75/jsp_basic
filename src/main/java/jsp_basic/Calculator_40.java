package jsp_basic;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
  서블릿에서 아래처럼 @WebServlet("/cal") 이라고 작성했을때 경로의 의미
  
  => 서블릿은 컨텍스트까지 자동으로 포함
  => http://localhost:포트번호/jsp_basic/cal  -> 컨텍스트를 포함 하므로 원하는 결과이다.  
*/
@WebServlet("/cal")
public class Calculator_40 extends HttpServlet {

  @Override
  protected void service(HttpServletRequest req, HttpServletResponse res)
      throws ServletException, IOException {

    // 응답에 대한 인코딩처리
    res.setCharacterEncoding("utf-8");
    res.setContentType("text/html; charset=UTF-8");

    String[] num = req.getParameterValues("num");// {"10","777"}
    String op = req.getParameter("op");

    int result = 0;

    switch (op) {
    case "plus":
      result = Integer.parseInt(num[0]) + Integer.parseInt(num[1]);
      break;

    }

    PrintWriter out = res.getWriter();

    out.println("<h1 style='line-height:100px;text-align: center;'>연산결과는 " + result + " 입니다.</h1>");

    // System.out.println("result = " + result);
  }

}
