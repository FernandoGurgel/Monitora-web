package br.ifam.monitoriaweb.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.NonNull;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import br.ifam.monitoriaweb.bean.Aluno;
import br.ifam.monitoriaweb.bean.Coordenador;
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
	
	private long id = 0;
	private String notification = "Bem-vindo";
	
	@RequestMapping("/aluno/login")
	public ModelAndView loginAluno() {
		ModelAndView view = new ModelAndView("a/loginAluno");
		if(id == -1) {
			view.addObject("mensagem", "Login ou Senha invalida!");
			view.addObject("icon", "<i class='far fa-frown'></i>");
			view.addObject("alert", 1);
		}
		return view;
	}
	
	@RequestMapping("/aluno/validar")
	public String validar(@NonNull String email,@NonNull String senha) {
		Aluno aluno = ar.findByValida(email,senha);	
		id = aluno != null ? aluno.getId():-1;
		if(id != -1)
			return "redirect:/aluno/?al="+aluno.getId();
		else
			return "redirect:/aluno/login";
	}
	
	@RequestMapping("/aluno/")
	public ModelAndView index(long al) {

		ModelAndView view = new ModelAndView("a/gerenciaAula");
		idAluno = al;
		ArrayList<Reserva> re = new ArrayList<Reserva>();

		if (notification != null) {			
			view.addObject("mensagem", notification);
			view.addObject("alert", 0);
			view.addObject("icon","<i class='far fa-grin'></i>");
			notification = null;
		}
		
		List<Reserva> reserva = rr.findAllReservas();
		for(Reserva r : reserva) {
			  
			List<Aluno> alunos = r.getAlunos();
			
			for(Aluno a : alunos) {
				if(a.getId() == idAluno) {
					re.add(r);
				}
			};
		}
		view.addObject("lista", re);
		Iterable<Disciplina> ds = dr.findAll();
		view.addObject("listaD", ds);
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
		
		boolean entrou = false;

		ArrayList<HashMap<String, String>> re = new ArrayList<HashMap<String, String>>();

		
		List<Reserva> reserva = rr.findAllReservas();
		int i = 0;
		for(Reserva r : reserva) {

			entrou = false;
			List<Aluno> alunos = r.getAlunos();
			
			for(Aluno a : alunos) {
				if(a.getId() == idAluno) {
					entrou = true;
				}
			};
			if(!entrou) {
				HashMap<String, String> hashMap = new HashMap<String, String>();
				System.out.println(r.getRescodigo());
				hashMap.put("id", ""+r.getRescodigo());
				hashMap.put("sala", r.getCodsala().getNome());
				hashMap.put("monitor", r.getCodmonitor().getNome());
				hashMap.put("diaSemana", r.getDia());
				hashMap.put("horaInicio", r.getHoraIncio());
				hashMap.put("horaFim", r.getHoraFim());
				re.add(hashMap);
			}
		}
        
		view.addObject("lista", re);	
		Iterable<Disciplina> ds = dr.findAll();
		view.addObject("listaD", ds);	
		return view;
	}
	
	
	@RequestMapping(value="/aluno/cadastrarhorario",method=RequestMethod.GET)
	public String adicionarReserva(long id) {
	
	   Aluno al = ar.findById(idAluno);
	   
	   Reserva reserva = rr.findByrescodigo(id);
	   List<Aluno> alunos = rr.findAllAlunosReserva(id);
	   alunos.add(al);
	   reserva.setAlunos(alunos);
	   rr.save(reserva);
	   
	   return "redirect:/aluno/?al="+idAluno;
	}
	
	
	@RequestMapping(value="/aluno/sairhorario",method=RequestMethod.GET)
	public String SairReserva(long id) {
	
	   Aluno al = ar.findById(idAluno);
	   
	   Reserva reserva = rr.findByrescodigo(id);
	   List<Aluno> alunos = rr.findAllAlunosReserva(id);
	   alunos.remove(al);
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