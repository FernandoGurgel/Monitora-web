package br.ifam.monitoriaweb.contreller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import br.ifam.monitoriaweb.bean.Aluno;
import br.ifam.monitoriaweb.bean.Coordenador;
import br.ifam.monitoriaweb.bean.Disciplina;
import br.ifam.monitoriaweb.bean.Sala;
import br.ifam.monitoriaweb.repository.AlunoRepository;
import br.ifam.monitoriaweb.repository.CoordenadorRepository;
import br.ifam.monitoriaweb.repository.DataDisponivelRepository;
import br.ifam.monitoriaweb.repository.DisciplinaRepository;
import br.ifam.monitoriaweb.repository.SalaRepository;

@Controller
public class CoordenadorController {

	@Autowired
	private AlunoRepository al;
	@Autowired
	private DisciplinaRepository ds;
	@Autowired
	private SalaRepository sl;
	@Autowired
	private DataDisponivelRepository dd;
	@Autowired
	private CoordenadorRepository cr;
	
	@RequestMapping("/coordenador/")
	public String index() {
		return "c/index";
	}
	
	@RequestMapping(value="/coordenador/login",method=RequestMethod.GET)
	public String login() {
		return "c/login";
	}
	
	@RequestMapping("/api/coordenador")
	@ResponseBody
	public String inserir(Coordenador coordenador) {
		cr.save(coordenador);
		return "{success}";
	}
	
	@RequestMapping(value="/coordenador/login",method=RequestMethod.POST)
	public String login(String username, String password) {
		Coordenador coordenador = cr.findByValida(username, username);
		System.out.println(coordenador + "email"+username+" senha"+password);
		if(coordenador != null)
			return "redirect:/coordenador/?id="+coordenador.getId();
		else
			return "redirect:/coordenador/login";
	}
	
	@RequestMapping("/coordenador/aluno")
	public ModelAndView aluno() {
		ModelAndView view = new ModelAndView("c/aluno");
		Iterable<Aluno> lista = al.findAll();
		view.addObject("lista", lista);
		return view;
	}
	
	@RequestMapping("/coordenador/disciplina")
	public ModelAndView disciplina() {
		ModelAndView view = new ModelAndView("c/disciplina");
		Iterable<Disciplina> lista = ds.findAll();
		view.addObject("lista", lista);
		return view;
	}
	
	@RequestMapping("/coordenador/sala")
	public ModelAndView sala() {
		ModelAndView view = new ModelAndView("c/sala");
		Iterable<Sala> iterable = sl.findAll();
		view.addObject("lista", iterable);
		return view;
	}
}
