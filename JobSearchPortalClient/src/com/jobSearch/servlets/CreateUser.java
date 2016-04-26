package com.jobSearch.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.core.MediaType;

import com.jobSearch.VO.UserVO;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.config.ClientConfig;
import com.sun.jersey.api.client.config.DefaultClientConfig;
import com.sun.jersey.api.json.JSONConfiguration;

/**
 * Servlet implementation class CreateUser
 */
public class CreateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ClientConfig clientConfig = new DefaultClientConfig();
		 clientConfig.getFeatures().put(JSONConfiguration.FEATURE_POJO_MAPPING, Boolean.TRUE);
		 
		Client client = Client.create(clientConfig);
		WebResource webResource = client.resource("http://localhost:8084/JobSearchPortalWebService/ValidateLogonService/createUser");
		//MultivaluedMap<String, String> formData = new MultivaluedMapImpl();
		UserVO uservo = new UserVO();
		if(request.getParameter("name") != null){
			uservo.setUserName(request.getParameter("name"));
		}
		else{
			uservo.setUserName(null);
		}
		if(request.getParameter("password") != null){
			uservo.setPassword(request.getParameter("password"));
		}
		else{
			uservo.setPassword(null);
		}
		if(request.getParameter("gender") != null){
			uservo.setGender(request.getParameter("gender"));
		}
		else{
			uservo.setGender(null);
		}
		if(request.getParameter("email") != null){
			uservo.setEmailId(request.getParameter("email"));
		}
		else{
			uservo.setEmailId(null);
		}
		if(request.getParameter("phone") != null){
			uservo.setMobileNo(request.getParameter("phone"));
		}
		else{
			uservo.setMobileNo(null);
		}
		if(request.getParameter("city") != null){
			uservo.setCity(request.getParameter("city"));
		}
		else{
			uservo.setCity(null);
		}
		if(request.getParameter("state") != null){
			uservo.setState(request.getParameter("state"));
		}
		else{
			uservo.setState(null);
		}
		if(request.getParameter("country") != null){
			uservo.setCountry(request.getParameter("country"));
		}
		else{
			uservo.setCountry(null);
		}
		
		ClientResponse restResponse = webResource
			    .type(MediaType.APPLICATION_XML)
			    .accept(MediaType.APPLICATION_XML)
			    .post(ClientResponse.class, uservo);
		
		UserVO userVO = restResponse.getEntity(UserVO.class);
		
		doGet(request, response);
	}

}
