package br.ifam.monitoriaweb.contreller;

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
	
	

	
	@RequestMapping(value="/disciplina/cadastrar", method= RequestMethod.GET)
	public ModelAndView index() {
		ModelAndView view = new ModelAndView("c/cadastrarDisciplina");
		
		List<Aluno> alunos = new ArrayList<>();
		Iterable<Aluno> lista = al.findAll();
		for(Aluno a : lista) {
			if(a.getTipoaluno() == ETipo.Monitor.toString())
				alunos.add(a);
		}
		
		view.addObject("Monitor",lista);
		
		view.addObject("titulo", "Cadastrar Disciplina");
		return view;
	}
	
	@RequestMapping(value="/disciplina/cadastrar", method= RequestMethod.POST)
	public String cadastrar(Disciplina disciplina, long codAluno) {
		Aluno bean = al.findById(codAluno);
		disciplina.setAluno(bean);
//		disciplina.setDataFim(fim);
//		disciplina.setDataInicio(inicio);
		em.save(disciplina);
		return "redirect:/coordenador/disciplina";
	}
	
	@RequestMapping(value="/disciplina/editar", method = RequestMethod.GET)
	public ModelAndView editar(long id) {
		ModelAndView view = new ModelAndView("c/cadastrarDisciplina");
		Disciplina a = em.findById(id);
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
