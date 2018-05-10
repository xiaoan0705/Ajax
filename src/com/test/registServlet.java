package com.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import org.apache.ibatis.session.SqlSession;
import com.test.session.MySession;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class registServlet
 */
@WebServlet("/registServlet")
public class registServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public registServlet() {
		super();
		// TODO Auto-generated constructor stub
	}
	/**
	 * @return 
	 * @return 
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		//response.setHeader("Access-Control-Allow-Origin", "*");//*允许任何域

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
        response.getWriter().write(obj.toString());	//将数据返回给前台
        
        //创建json对象obj1
        JSONObject obj1 = new JSONObject();
        obj1.put("name", "anna");
        obj1.put("sex", "male");
        obj1.put("age", 18);

        //创建json数组，存放json对象
        JSONArray json=new JSONArray();
        json.add(obj);
        json.add(obj1);
        System.out.println(json.toString());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	

}
