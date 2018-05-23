package com.gc.spring.SpringDemoApr18;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller // this is required for all controller classes
public class HomeController {

	@Autowired // This is used by Spring to create an instance of Person using the @Component
	// annotation in the Person class
	Person p;

	@RequestMapping("/") // these request mapping annotations refer to the url that a user visits and
							// that is how the method is invoked
	public ModelAndView index() {

		// the return appends the .jsp based off of the settings we added in the
		// application.properties file
		// the first parameter represents the jsp page
		// the second parameter is used to pass the data into the jsp with EL
		// the third parameter is the data that we want to send to the page
		return new ModelAndView("index", "test", "Hello World!");
	}

	@RequestMapping("/test")
	public ModelAndView testing() {
		return new ModelAndView("testingstuff", "test", "Hello World!");
	}

	// this is just to render the view for the form.jsp
	@RequestMapping("/form")
	public String form() {
		// the return appends the .jsp based off of the settings we added in the
		// application.properties file
		return "form";
	}

	// this is being used to take the data from the form.jsp and send it to a new
	// page
	@RequestMapping("/form1")
	public ModelAndView formTest(@RequestParam("fName") String firstName, @RequestParam("lName") String lastName) {

		// because we used the @Autowired annotation for the Person p
		// we never needed to use the new keyword to create an instance of Person
		p.setFirstName(firstName);
		p.setLastName(lastName);

		return new ModelAndView("formresults", "person", p);
	}

	@RequestMapping("/list")
	public ModelAndView personList() {

		ArrayList<Person> pList = new ArrayList<>();
		pList.add(new Person("Anthony", "Reakoff"));
		pList.add(new Person("Vicki", "Rush"));
		pList.add(new Person("Jonah", "Wooten"));

		return new ModelAndView("personlist", "test", pList); // remember to add these
	}

	// this is for the checkbox example in the form jsp
	// if no data is selected you will get an error,
	// so at least one box must be checked for it to work
	@RequestMapping("/form2")
	public ModelAndView index(@RequestParam("vehicle") String vehicle) {

		// the data will return to the index page the way it's set up
		return new ModelAndView("index", "test", vehicle);
	}

	// this is for the dropdown example in the form jsp
	// if no data is selected you will get an error

	@RequestMapping("/form3")
	public ModelAndView form3(@RequestParam("form3") String vehicle) {

		// the data will return to the index page the way it's set up
		return new ModelAndView("index", "test", vehicle);
	}

	// for the radio button form on the form.jsp
	@RequestMapping("/form4")
	public ModelAndView form4(@RequestParam("gender") String gender) {

		// the data will return to the index page the way it's set up
		return new ModelAndView("index", "test", gender);
	}

}
