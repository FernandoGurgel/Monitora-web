package br.ifam.monitoriaweb.contreller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.ifam.monitoriaweb.bean.DataDisponivel;
import br.ifam.monitoriaweb.bean.Sala;
import br.ifam.monitoriaweb.repository.DataDisponivelRepository;
import br.ifam.monitoriaweb.repository.ReservaRepository;
import br.ifam.monitoriaweb.repository.SalaRepository;

@Controller

public class MonitorController {

	@Autowired
	private ReservaRepository rr;
	
	@Autowired
	private DataDisponivelRepository dataD;
	
	@RequestMapping("/monitor/")
	public String index() {
		return "m/gerenciamonitor";
	}
	
	@RequestMapping(value="/monitor/adicionarHorario", method=RequestMethod.GET)
	public ModelAndView horariodisciplina() {
		ModelAndView view = new ModelAndView("m/adicionarHorario");
		Iterable<DataDisponivel> lista = dataD.findAll();
		view.addObject("lista", lista);
		return view;
	}
	
	@RequestMapping("/monitor/alunosInscritos")
	public ModelAndView alunosdisciplina() {
		ModelAndView view = new ModelAndView("m/alunosInscritos");
		//Iterable<Sala> lista = sala.findAll();
		//view.addObject("lista", lista);
		return view;
	}
}
