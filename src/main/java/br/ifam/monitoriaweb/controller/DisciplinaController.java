package br.ifam.monitoriaweb.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.ifam.monitoriaweb.bean.Aluno;
import br.ifam.monitoriaweb.bean.Disciplina;
import br.ifam.monitoriaweb.bean.ETipo;
import br.ifam.monitoriaweb.repository.AlunoRepository;
import br.ifam.monitoriaweb.repository.DisciplinaRepository;

@Controller
public class DisciplinaController {

	@Autowired
	private DisciplinaRepository em;
	@Autowired
	private AlunoRepository al;	
	private Disciplina dis = null;
	
	// cadastra disciplina
	@RequestMapping(value="/disciplina/cadastrar", method= RequestMethod.GET)
	public ModelAndView index() {
		ModelAndView view = new ModelAndView("c/cadastrarDisciplina");
		view.addObject("titulo", "Cadastrar Disciplina");
		
		List<Aluno> alunos = new ArrayList<>();
		Iterable<Aluno> lista = al.findAll();
		for(Aluno a : lista) {
			if(a.getTipoaluno() == ETipo.Monitor.toString()) {
				if (em.findByaluno(a.getId()) == null)
					alunos.add(a);
			}
		}
		
		view.addObject("Monitor",alunos);
		if(alunos.size() == 0) {
			view.addObject("mensagem", "Sistema sem monitor disponível! ");
			view.addObject("icon", "<i class='fas fa-exclamation-circle'></i> ");
			view.addObject("alert", 2);
		} else if (dis != null) {
			view.addObject("mensagem", "Disciplina já cadastrada! ");
			view.addObject("icon", "<i class='fas fa-times'></i> ");
			view.addObject("alert", 1);
			view.addObject("disciplina", dis);
		}
		
		return view;
	}
	
	@RequestMapping(value="/disciplina/cadastrar", method= RequestMethod.POST)
	public String cadastrar(Disciplina disciplina, long codAluno) {
		if( em.findBynome(disciplina.getNome()) != null) {
			dis = disciplina;
			return"redirect:/disciplina/cadastrar";
		}else {			
			Aluno bean = al.findById(codAluno);
			disciplina.setAluno(bean);
			em.save(disciplina);
			return "redirect:/coordenador/disciplina";			
		}
	}
	// fim cadastra disciplina
	
	@RequestMapping(value="/disciplina/editar", method = RequestMethod.GET)
	public ModelAndView editar(long id) {
		ModelAndView view = new ModelAndView("c/cadastrarDisciplina");
		Disciplina a = em.findById(id);
		
		List<Aluno> alunos = new ArrayList<>();
		Iterable<Aluno> lista = al.findAll();
		for(Aluno a2 : lista) {
			if(a2.getTipoaluno() == ETipo.Monitor.toString())
				alunos.add(a2);
		}
		
		view.addObject("Monitor",lista);
		
		
		view.addObject("disciplina", a);
		view.addObject("titulo", "Editar Disciplina");
		return view;
	}
	
	@RequestMapping(value="/disciplina/editar", method= RequestMethod.POST)
	public String editar(Disciplina disciplina, String nomeAluno) {
		Aluno bean = al.findByNome(nomeAluno);
		disciplina.setAluno(bean);
		em.save(disciplina);
		return "redirect:/coordenador/disciplina";
	}
	
	
	@RequestMapping("/disciplina/excluir")
	public String excluir(long id) {
		Disciplina disciplina = em.findById(id);
		em.delete(disciplina);
		return "redirect:/coordenador/disciplina";
	}
}