package com.adaming.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.adaming.web.models.Produit;

@Controller
public class ProduitController {
	
	@RequestMapping(value="/produit")
	public String nouveauProdui(Model model) {
		model.addAttribute("produit", new Produit());
		return "nouveauProduit";
	}
	
	@RequestMapping(value="/produit", method=RequestMethod.POST)
	public String nouveauProduit(@ModelAttribute("produit")Produit produit, Model model) {
		
		model.addAttribute("produit", produit);
		
		return "detailsProduit";
	}
}
