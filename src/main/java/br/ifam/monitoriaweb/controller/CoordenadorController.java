package br.ifam.monitoriaweb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.NonNull;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
	
	private long id;
	private String notification;
	
	public CoordenadorController() {
		this.id = 0;
		this.notification = "Bem-vindo";
	}

	@RequestMapping("/coordenador/login")
	public ModelAndView login() {
		ModelAndView view = new ModelAndView("c/login");
		if(id == -1) {
			view.addObject("mensagem", "Login ou Senha invalida!");
			view.addObject("icon", "<i class='far fa-frown'></i>");
			view.addObject("alert", 1);
		}
		return view;
	}
	
	@RequestMapping("/coordenador/validar")
	public String validar(@NonNull String email,@NonNull String senha) {
		Coordenador co = cr.findByValida(email,senha);
		id = (co != null ? co.getId():-1 );
		if(id != -1)
			return "redirect:/coordenador/?id="+co.getId();
		else {
			return "redirect:/coordenador/login";
		}
	}
	
	@RequestMapping("/coordenador/")
	public ModelAndView index() {
		ModelAndView view = new ModelAndView("c/index");
		if (id != -1) {			
			view.addObject("mensagem", notification);
			view.addObject("alert", 0);
			view.addObject("icon","<i class='far fa-grin'></i>");
		}
		return view;
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
