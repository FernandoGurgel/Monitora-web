package br.ifam.monitoriaweb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.NonNull;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import br.ifam.monitoriaweb.bean.Aluno;
import br.ifam.monitoriaweb.bean.DataDisponivel;
import br.ifam.monitoriaweb.bean.Disciplina;
import br.ifam.monitoriaweb.bean.Reserva;
import br.ifam.monitoriaweb.repository.AlunoRepository;
import br.ifam.monitoriaweb.repository.DataDisponivelRepository;
import br.ifam.monitoriaweb.repository.DisciplinaRepository;
import br.ifam.monitoriaweb.repository.ReservaRepository;

@Controller

public class MonitorController {

	@Autowired
	private ReservaRepository rr;
	
	@Autowired
	private DataDisponivelRepository dataD;

	@Autowired
	private DisciplinaRepository dr;
	
	@Autowired
	private AlunoRepository ar;
	
	private Aluno monitor;

	public MonitorController() {
		this.monitor = null;
	}

	@RequestMapping(value = "/monitor/login", method = RequestMethod.GET)
	public ModelAndView login() {
		ModelAndView view = new ModelAndView("m/login");
		if (monitor == null){
			return view;			
		} else if (monitor.getId() != -1) {
			view.addObject("mensagem", "Login ou Senha invalida!");
			view.addObject("icon", "<i class='far fa-frown'></i>");
			view.addObject("alert", 1);
		}
		return view;
	
	}

	@RequestMapping(value = "/monitor/login", method = RequestMethod.POST)
	public String login(@NonNull String username, @NonNull String password) {
		monitor = ar.findBymonitor(username, password);
		System.out.println(monitor.getId());
		if (monitor != null) {
			return "redirect:/monitor/?id=" + monitor.getId();
		} else {
			monitor = new Aluno();
			monitor.setId(-1l);
			return "redirect:/monitor/";
		}
	}

	
	@RequestMapping(value="/monitor/", method=RequestMethod.GET)
	public ModelAndView index(long id) {
		monitor.setId(id); 
		
		ModelAndView view = new ModelAndView("m/gerenciamonitor");
		
		Iterable<Reserva> lista = rr.findAll();
		view.addObject("lista", lista);
		
		Disciplina disciplina = dr.findByaluno(id);
		view.addObject("disciplina", disciplina);		

		view.addObject("monitoria", monitor.getId());
		return view;
	}

	@RequestMapping(value="/monitor/listaAluno/", method=RequestMethod.GET)
	public ModelAndView listaAluno() {
		ModelAndView view = new ModelAndView("m/listaAluno"); 
		return view;
	}
	
	@RequestMapping(value="/monitor/adicionarHorario", method=RequestMethod.GET)
	public ModelAndView horariodisciplina() {
		ModelAndView view = new ModelAndView("m/adicionarHorario");
		Iterable<DataDisponivel> lista = dataD.findAll();
		view.addObject("lista", lista);
		return view;
	}
	
	@RequestMapping(value="/monitor/addreserva",method=RequestMethod.GET)
	public String adicionarReserva(long id) {
		
		DataDisponivel dd = dataD.findById(id);
		
		// Alterar Session
		Aluno al = ar.findById(id);
		
		
		Reserva reserva = new Reserva();
		reserva.setCodsala(dd.getSala());
		reserva.setCodmonitor(al);
		reserva.setHoraIncio(dd.getInicio());
		reserva.setHoraFim(dd.getFim());
		reserva.setDia(dd.getDia());
	
		rr.save(reserva);
		dataD.delete(dd);

		String retorno;
		retorno = "redirect:/monitor/?id=" + monitor.getId();;
				
		return retorno;
	}
	
	@RequestMapping(value="/monitor/removereserva",method=RequestMethod.GET)
	public String removerReserva(long rescodigo) {
		
		Reserva r = rr.findByrescodigo(rescodigo);
		
		DataDisponivel dd = new DataDisponivel();
		dd.setDia(r.getDia());
		dd.setFim(r.getHoraFim());
		dd.setInicio(r.getHoraIncio());
		dd.setSala(r.getCodsala());
		
		dataD.save(dd);
		rr.delete(r);

		String retorno;
		retorno = "redirect:/monitor/?id=" + monitor.getId();;
				
		return retorno;
	}	
	

	@RequestMapping("/monitor/alunosInscritos")
	public ModelAndView alunosdisciplina() {
		ModelAndView view = new ModelAndView("m/alunosInscritos");
		//Iterable<Sala> lista = sala.findAll();
		//view.addObject("lista", lista);
		return view;
	}
}
