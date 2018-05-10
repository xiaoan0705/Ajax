package com.test;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.test.session.MySession;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class crossDomainServlet
 */
@WebServlet("/crossDomainServlet")
public class crossDomainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public crossDomainServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");

		String name = request.getParameter("user");
		String password = request.getParameter("password");
		String email = request.getParameter("email");

		SqlSession session = MySession.creatSession();
		regist regis = session.getMapper(regist.class);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("name", name);
		map.put("password", password);
		map.put("email", email);
		System.out.println(map);
		regis.regist(map); 
		session.commit();
		//返回json数据
		response.setContentType("application/json;charset=utf-8");
		//创建json对象obj
		JSONObject obj = new JSONObject();
        obj.put("name", "John");
        obj.put("sex", "male");
        obj.put("age", 22);
        obj.put("is_student", true);
        obj.put("hobbies", new String[] {"hiking", "swimming"});
        System.out.println(obj.toString());
        /*第一种jsonp*/
       // String jsonp=request.getParameter("callback123");// 接收jsonp传来的参数
        //response.getWriter().write(jsonp+"("+obj.toString()+")");	//返回jsonp格式数据  
        
        /*第二种*/
		response.setHeader("Access-Control-Allow-Origin", "*");//*允许任何域
		response.getWriter().write(obj.toString());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
