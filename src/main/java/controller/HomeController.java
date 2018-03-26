package controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HomeController {
	
	
	
	
	@RequestMapping("/authenticate")
	public String login( HttpServletRequest request, HttpServletResponse response, Model model) {
		
		model.addAttribute("username", request.getParameter("username"));
		model.addAttribute("password", request.getParameter("password"));
		
		
		System.out.println("What do we have here : ");
		System.out.println(  request.getParameter("username")  );
		System.out.println( request.getParameter("password"));
		
		//check the username and password from the database
		
		//if correct logins, retrieve the file from the data base and send the with model.
		
		String[] cmt = {"Simtembile", "Soginga","Simtembile", "Soginga","Simtembile", "Soginga","Simtembile", "Soginga"};
		
		
		model.addAttribute("username",  request.getParameter("username") );
		model.addAttribute("fileList", cmt);
		
		
		
		
		return "dashboard.jsp";
		
	}
	
	
	


}
/*	@GetMapping("/authenticate")
    public String greetingForm(Model model) {
        model.addAttribute("loginForm", new LoginForm());
        return "index.jsp";
	 }
	
	@PostMapping("/authenticate")
	public String login( @ModelAttribute LoginForm loginForm ,BindingResult bindingResult, Model model ) {
		
		System.out.println("King of the south");
		
		if( bindingResult.hasErrors() ) {
			return "";
		}
		
		return "dashboard.jsp";
	}*/