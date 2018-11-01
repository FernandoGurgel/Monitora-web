package br.ifam.monitoriaweb.contreller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.ifam.monitoriaweb.bean.Aluno;
import br.ifam.monitoriaweb.bean.Disciplina;
import br.ifam.monitoriaweb.bean.Sala;
import br.ifam.monitoriaweb.repository.AlunoRepository;
import br.ifam.monitoriaweb.repository.DataDisponivelRepository;
import br.ifam.monitoriaweb.repository.DisciplinaRepository;
import br.ifam.monitoriaweb.repository.SalaRepository;

@Controller
@RequestMapping("/coordenador")
public class CoordenadorController {

	@Autowired
	private AlunoRepository al;
	@Autowired
	private DisciplinaRepository ds;
	@Autowired
	private SalaRepository sl;
	@Autowired
	private DataDisponivelRepository dd;

	@RequestMapping("/")
	public String index() {
		return "c/menuCoordenador";
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
	public ModelAndView sala() {
		ModelAndView view = new ModelAndView("c/sala");
		Iterable<Sala> iterable = sl.findAll();
		view.addObject("lista", iterable);
		return view;
	}
}
