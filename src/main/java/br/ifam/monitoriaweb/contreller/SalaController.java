package br.ifam.monitoriaweb.contreller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.devtools.restart.RestartScope;
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
	
	@RequestMapping(value="/sala/cadastrar", method=RequestMethod.GET)
	public ModelAndView cadastrar() {
		horario = new ArrayList<DataDisponivel>();		
		ModelAndView view = new ModelAndView("c/cadastrarSala");
		view.addObject("titulo", "Cadastrar Sala");
		return view;
	}
	
	@RequestMapping(value="/sala/cadastrar", method=RequestMethod.POST)
	public String cadastrar(Sala sala) {
		data.saveAll(horario);
		sala.setDataDisponiveis(horario);
		sr.save(sala);
		return "redirect:/coordenador/sala";
	}
	
	@RequestMapping("/sala/excluir")
	public String excluir(long codsala) {
		Sala sala = sr.findBycodsala(codsala);
		data.deleteAll(sala.getDataDisponiveis());
		sr.delete(sala);
		return "redirect:/coordenador/sala";
	}
	
	@RequestMapping(value="/sala/addHoraio", method=RequestMethod.POST)
	@ResponseBody
	public String addHorario(DataDisponivel bean) {
		horario.add(bean);
		System.out.println(horario);
		return "{'success'}";
	}
	
	@RequestMapping("/api/horaioCadastro")
	@ResponseBody
	public List<DataDisponivel> horaiolistar(){
		return horario;
	}
	
	@RequestMapping("/api/horaioremove")
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
