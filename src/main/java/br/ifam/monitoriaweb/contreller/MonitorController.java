package br.ifam.monitoriaweb.contreller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import br.ifam.monitoriaweb.bean.Sala;
import br.ifam.monitoriaweb.repository.ReservaRepository;
import br.ifam.monitoriaweb.repository.SalaRepository;

@Controller
@RequestMapping("/monitor")
public class MonitorController {

	@Autowired
	private ReservaRepository rr;
	
	@Autowired
	private SalaRepository sala;
	
	@RequestMapping("/")
	public String index() {
		return "m/gerenciamonitor";
	}
	
	@RequestMapping("/adicionarHorario")
	public ModelAndView horariodisciplina() {
		ModelAndView view = new ModelAndView("m/adicionarHorario");
		Iterable<Sala> lista = sala.findAll();
		view.addObject("lista", lista);
		return view;
	}
	@RequestMapping("/alunosInscritos")
	public ModelAndView alunosdisciplina() {
		ModelAndView view = new ModelAndView("m/alunosInscritos");
		//Iterable<Sala> lista = sala.findAll();
		//view.addObject("lista", lista);
		return view;
	}
}
