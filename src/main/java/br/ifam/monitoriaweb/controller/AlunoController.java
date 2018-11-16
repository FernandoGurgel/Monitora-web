package br.ifam.monitoriaweb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.NonNull;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import br.ifam.monitoriaweb.bean.Aluno;
import br.ifam.monitoriaweb.bean.DataDisponivel;
import br.ifam.monitoriaweb.bean.Disciplina;
import br.ifam.monitoriaweb.bean.ETipo;
import br.ifam.monitoriaweb.bean.Reserva;
import br.ifam.monitoriaweb.repository.AlunoRepository;
import br.ifam.monitoriaweb.repository.DisciplinaRepository;
import br.ifam.monitoriaweb.repository.ReservaRepository;

@Controller

public class AlunoController {

	@Autowired
	private AlunoRepository ar;

	@Autowired
	private ReservaRepository rr;
	
	@Autowired
	private DisciplinaRepository dr;
	
	private Aluno aluno = null;
	private Long idAluno;
	

	@RequestMapping("/aluno/login")
	public String loginAluno() {
		return "a/loginAluno";
	}
	
	@RequestMapping("/aluno/validar")
	@ResponseBody
	public String validar(@NonNull String email,@NonNull String senha) {
		Aluno aluno = ar.findByValida(email,senha);		
		if(aluno != null)
			return "success";
		else
			return "false";
	}
	
	@RequestMapping("/aluno/")
	public ModelAndView index(long al) {
		idAluno = al;
		
		ModelAndView view = new ModelAndView("a/gerenciaAula");
		Disciplina disciplina = rr.findDiciplina(al);
		Iterable<Reserva> lista = rr.findAll();
		view.addObject("lista", lista);	
		view.addObject("diciplina", disciplina);
		
		return view ;
	}

	// inicio do cadastro aluno
	@RequestMapping(value ="/aluno/cadastrar", method = RequestMethod.GET)
	public ModelAndView cadastra() {
		ModelAndView view = new ModelAndView("c/cadastrarAluno");
		view.addObject("Titulo", "Cadastra Aluno");
		if (aluno != null) {
			view.addObject("mensagem", "Email ou matrícula já cadastrada! ");
			view.addObject("icon", "<i class='fas fa-exclamation-circle'></i> ");
			view.addObject("alert", 1);
			view.addObject("aluno", aluno);
			return view;			
		}else 
			return view;
		
	}
	
	@RequestMapping(value ="/aluno/cadastrar", method = RequestMethod.POST)
	public String cadastra(Aluno bean, int tipo) {
		bean.setTipoaluno((tipo == 1 ? ETipo.Aluno : ETipo.Monitor));
		if (ar.findByemail(bean.getEmail()) == null && ar.findBymatricula(bean.getMatricula()) == null ) {
			ar.save(bean);
			return "redirect:/coordenador/aluno";
		} else {
			aluno = bean;
			return "redirect:/aluno/cadastrar";
		}
	}
	// fim do cadastro aluno
	
	@RequestMapping(value="/aluno/cadastraMonitoria", method = RequestMethod.GET)
	public ModelAndView alunocadastraMonitoria() {
		ModelAndView view = new ModelAndView("a/cadastraMonitoria");
		
		Iterable<Reserva> lista = rr.findByMonitorDisciplina();
		view.addObject("lista", lista);	
	
		return view;
	}
	
	
	@RequestMapping(value="/aluno/cadastrarhorario",method=RequestMethod.GET)
	public String adicionarReserva(long id) {
	
	   Aluno al = ar.findById(idAluno);
	   Reserva reserva = rr.findByrescodigo(7);
	   List<Aluno> alunos = reserva.getAlunos();
	   alunos.add(al);
	   reserva.setAlunos(alunos);
	   rr.save(reserva);
	   
		return "redirect:/aluno/?al="+idAluno;
	}
	
	
	@RequestMapping(value ="/coordenador/editarAluno", method = RequestMethod.GET)
	public ModelAndView editar(long id) {
		ModelAndView view = new ModelAndView("c/cadastrarAluno");
		Aluno aluno = ar.findById(id);
		view.addObject("aluno", aluno);
		view.addObject("Titulo", "Editar Aluno");
		return view;
	}

	@RequestMapping(value ="/coordenador/editarAluno", method = RequestMethod.POST)
	public String editar(Aluno aluno,int tipo) {
		aluno.setTipoaluno((tipo == 1 ? ETipo.Aluno : ETipo.Monitor));
		ar.save(aluno);
		return "redirect:/coordenador/aluno";
	}
	
	
	@RequestMapping("/coordenador/deletarAluno")
	public String deletarAluno(Long id) {
		Aluno aluno = ar.findById(id);
		ar.delete(aluno);
		return "redirect:/coordenador/aluno";
	}
}