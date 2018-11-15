package br.ifam.monitoriaweb.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import br.ifam.monitoriaweb.bean.DataDisponivel;
import br.ifam.monitoriaweb.bean.Sala;
import br.ifam.monitoriaweb.repository.DataDisponivelRepository;
import br.ifam.monitoriaweb.repository.SalaRepository;

@Controller
public class SalaController {
	

	private List<DataDisponivel> horario;
	private Sala ob = null;
	
	@Autowired
	private SalaRepository sr;
	@Autowired
	private DataDisponivelRepository data;
	
	@RequestMapping(value="/sala/Editar",method=RequestMethod.GET)
	public ModelAndView editarHorario(long codsala) {
		ModelAndView view = new ModelAndView("c/cadastrarHorario");
		view.addObject("titulo", "Editar Horário");
		Sala sala = sr.findBycodsala(codsala);
		horario = data.findBySala(sala);
		view.addObject("sala", sala );
		view.addObject("horario", horario);
		return view;
	}
	
	
	@RequestMapping(value="/sala/addHorario", method=RequestMethod.GET)
	public ModelAndView cadastrar(long codsala) {
		horario = new ArrayList<DataDisponivel>();
		Sala sala = sr.findBycodsala(codsala);
		ob = sala;
		ModelAndView view = new ModelAndView("c/cadastrarHorario");
		view.addObject("titulo", "Cadastrar Horário");
		view.addObject("sala", sala);
		return view;
	}
	
	@RequestMapping(value="/sala/salvar",method=RequestMethod.POST)
	public String salvar() {
		data.saveAll(horario);
		return "redirect:/coordenador/sala";
	}
	
	@RequestMapping(value="/sala/addHorario", method=RequestMethod.POST)
	@ResponseBody
	public String sala(DataDisponivel bean) {
		if(ob != null) {			
			bean.setSala(ob);
			horario.add(bean);
		}
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
				DataDisponivel dd = data.findById(id);
				data.delete(dd);
				return "{sucess}";
			}
		}
		return "{danger}";
	}
}
