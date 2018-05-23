package com.gc.spring.SpringDemoApr18;

import org.springframework.stereotype.Component;

// this is considered a java bean or pojo 
// 1. no argument constructor
// 2. has getters and setters for private instance variables
// 3. implements serializable or externalizable interface
// although in this example we are not using the interface

@Component // this is used by Spring to perform Dependency Injection
public class Person {

	private String firstName;
	private String lastName;

	// meets # 1
	public Person() {
		firstName = "";
		lastName = "";
	}

	public Person(String firstName, String lastName) {

		this.firstName = firstName;
		this.lastName = lastName;
	}

	// adding these meets # 2
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	@Override
	public String toString() {
		return "Person [firstName=" + firstName + ", lastName=" + lastName + "]";
	}

}
