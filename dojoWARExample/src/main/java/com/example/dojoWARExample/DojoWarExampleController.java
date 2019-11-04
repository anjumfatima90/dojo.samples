package com.example.dojoWARExample;

import java.util.Date;
import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DojoWarExampleController {

	@GetMapping("/")
	public String welcome(Map<String, Object> model) {
		return "testjsp";
	}

}
