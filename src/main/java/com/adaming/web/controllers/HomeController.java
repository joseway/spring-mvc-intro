package com.adaming.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.adaming.web.models.Client;

@Controller
public class HomeController {

	@RequestMapping(value="/", method=RequestMethod.GET)
	public String homePage(Model model) {
		
		model.addAttribute("client", new Client());
		
		return "index";
	}
	@RequestMapping(value="/", method=RequestMethod.POST)
	public String enregister(@ModelAttribute("client")Client client, Model model) {
		
		model.addAttribute("client", client);
		
		return "confirm";
	}
	
}
