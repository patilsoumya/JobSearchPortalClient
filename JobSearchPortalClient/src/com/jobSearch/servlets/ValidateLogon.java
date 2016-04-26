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

public class ValidateLogon extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ValidateLogon() {
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
		 ClientConfig clientConfig = new DefaultClientConfig();
		 clientConfig.getFeatures().put(JSONConfiguration.FEATURE_POJO_MAPPING, Boolean.TRUE);
		 
		Client client = Client.create(clientConfig);
		WebResource webResource = client.resource("http://localhost:8084/JobSearchPortalWebService/ValidateLogonService/validateUser");
		String name=request.getParameter("user");
		String password=request.getParameter("pwd");
		UserVO uservo = new UserVO();
		uservo.setEmailId(name);
		uservo.setPassword(password);
		ClientResponse restResponse = webResource
			    .type(MediaType.APPLICATION_XML)
			    .accept(MediaType.APPLICATION_XML)
			    .post(ClientResponse.class, uservo);
		
		UserVO userVO = restResponse.getEntity(UserVO.class);
		System.out.println(userVO.isValid());
	}

}
