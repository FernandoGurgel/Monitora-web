package br.ifam.monitoriaweb.contreller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SalaController {

	@RequestMapping(value="/sala/cadastrar", method=RequestMethod.GET)
	public ModelAndView cadastrar() {
		ModelAndView view = new ModelAndView("c/cadastrarSala");
		view.addObject("titulo", "Cadastra Sala");
		return view;
	}
}
