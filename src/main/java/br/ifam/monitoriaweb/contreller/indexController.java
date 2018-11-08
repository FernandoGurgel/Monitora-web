package br.ifam.monitoriaweb.contreller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.ifam.monitoriaweb.bean.Aluno;
import br.ifam.monitoriaweb.bean.Sala;

@Controller

public class indexController {

	@RequestMapping("/")
	public String index() {
		return "index";
	}

	@RequestMapping("/contato/")
	public String contato() {
		return "co/contato";
	}

}
