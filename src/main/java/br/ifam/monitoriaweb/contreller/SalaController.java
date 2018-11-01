package br.ifam.monitoriaweb.contreller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import br.ifam.monitoriaweb.bean.DataDisponivel;
import br.ifam.monitoriaweb.bean.Sala;
import br.ifam.monitoriaweb.repository.DataDisponivelRepository;
import br.ifam.monitoriaweb.repository.SalaRepository;

@Controller
public class SalaController {
	

	private List<DataDisponivel> horario;
	@Autowired
	private SalaRepository sr;
	@Autowired
	private DataDisponivelRepository data;
	@RequestMapping(value="/sala/addHorario", method=RequestMethod.GET)
	public ModelAndView cadastrar() {
		horario = new ArrayList<DataDisponivel>();		
		
		ModelAndView view = new ModelAndView("c/cadastrarHorario");
		view.addObject("titulo", "Cadastrar Horário");
		Iterable<Sala> iterable = sr.findAll();
		view.addObject("lista", iterable);
		return view;
	}
	
	
	@RequestMapping(value="/sala/addHorario", method=RequestMethod.POST)
	@ResponseBody
	public String cadastrar(DataDisponivel bean) {
		horario.add(bean);
		System.out.println(horario);
		return "{'success'}";
	}		
	
	
	
	
	@RequestMapping(value="/sala/addSala", method=RequestMethod.GET)
	public ModelAndView addSala() {
		ModelAndView view = new ModelAndView("c/cadastrarSala");
		view.addObject("titulo", "Cadastrar Sala");
		return view;
	}
	
	@RequestMapping(value="/sala/addSala", method=RequestMethod.POST)
	public String addSala(Sala sala) {
		sr.save(sala);
		return "redirect:/coordenador/sala";
	}
	
	@RequestMapping("/sala/excluirSala")
	public String excluir(long codsala) {
		Sala sala = sr.findBycodsala(codsala);
		sr.delete(sala);
		return "redirect:/coordenador/sala";
	}
	
	@RequestMapping("/api/horarioCadastro")
	@ResponseBody
	public List<DataDisponivel> horariolistar(){
		return horario;
	}
	
	@RequestMapping("/api/horarioremove")
	@ResponseBody
	public String horarioRemovido(int id) {
		for(DataDisponivel x: horario) {
			if(x.getId() == id) {
				horario.remove(x);
				return "{sucess}";
			}
		}
		return "{danger}";
	}
}
