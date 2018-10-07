package br.ifam.monitoriaweb.contreller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.ifam.monitoriaweb.bean.Aluno;
import br.ifam.monitoriaweb.bean.Disciplina;
import br.ifam.monitoriaweb.repository.AlunoRepository;
import br.ifam.monitoriaweb.repository.DisciplinaRepository;

@Controller
@RequestMapping("/coordenador")
public class CoordenadorController {

	@Autowired
	private AlunoRepository al;
	@Autowired
	private DisciplinaRepository ds;
	
	@RequestMapping("/")
	public String index() {
		return "c/index";
	}
	
	@RequestMapping("/aluno")
	public ModelAndView aluno() {
		ModelAndView view = new ModelAndView("c/aluno");
		Iterable<Aluno> lista = al.findAll();
		view.addObject("lista", lista);
		return view;
	}
	
	@RequestMapping("/disciplina")
	public ModelAndView disciplina() {
		ModelAndView view = new ModelAndView("c/disciplina");
		Iterable<Disciplina> lista = ds.findAll();
		view.addObject("lista", lista);
		return view;
	}
	
	@RequestMapping("/sala")
	public String sala() {
		return "c/sala";
	}
}