package br.ifam.monitoriaweb.contreller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.NonNull;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
	
	@RequestMapping("/coordenador/login")
	public String login() {
		return "c/login";
	}
	
	@RequestMapping("/coordenador/validar")
	@ResponseBody
	public String validar(@NonNull String email,@NonNull String senha) {
		Coordenador co = cr.findByValida(email,senha);		
		if(co != null)
			return "success";
		else
			return "false";
	}
	
	@RequestMapping("/coordenador/")
	public String index() {
		return "c/index";
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
