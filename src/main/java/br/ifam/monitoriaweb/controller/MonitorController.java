package br.ifam.monitoriaweb.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.ifam.monitoriaweb.bean.Aluno;
import br.ifam.monitoriaweb.bean.DataDisponivel;
import br.ifam.monitoriaweb.bean.Disciplina;
import br.ifam.monitoriaweb.bean.Reserva;
import br.ifam.monitoriaweb.bean.Sala;
import br.ifam.monitoriaweb.repository.AlunoRepository;
import br.ifam.monitoriaweb.repository.DataDisponivelRepository;
import br.ifam.monitoriaweb.repository.DisciplinaRepository;
import br.ifam.monitoriaweb.repository.ReservaRepository;
import br.ifam.monitoriaweb.repository.SalaRepository;

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
	
	private Long codmonitor;
	
	@RequestMapping(value="/monitor/", method=RequestMethod.GET)
	public ModelAndView index(long id) {
		codmonitor = id;
		
		ModelAndView view = new ModelAndView("m/gerenciamonitor");
		
		Iterable<Reserva> lista = rr.findAll();
		view.addObject("lista", lista);
		
		Disciplina disciplina = dr.findByaluno(id);
		view.addObject("disciplina", disciplina);		

		view.addObject("monitoria", codmonitor);
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
		Aluno al = ar.findById(codmonitor);
		
		
		Reserva reserva = new Reserva();
		reserva.setCodsala(dd.getSala());
		reserva.setCodmonitor(al);
		reserva.setHoraIncio(dd.getInicio());
		reserva.setHoraFim(dd.getFim());
		reserva.setDia(dd.getDia());
	
		rr.save(reserva);
		dataD.delete(dd);

		String retorno;
		retorno = "redirect:/monitor/?id=" + codmonitor;
				
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
		retorno = "redirect:/monitor/?id=" + codmonitor;
				
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
