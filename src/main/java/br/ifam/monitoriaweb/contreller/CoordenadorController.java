package br.ifam.monitoriaweb.contreller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/coordenador")
public class CoordenadorController {

	@RequestMapping("/")
	public String index() {
		return "c/index";
	}
	
	@RequestMapping("/aluno")
	public String aluno() {
		return "c/aluno";
	}
	
	@RequestMapping("/disciplina")
	public String disciplina() {
		return "c/disciplina";
	}
	
	@RequestMapping("/sala")
	public String sala() {
		return "c/sala";
	}
}
