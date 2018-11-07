package br.ifam.monitoriaweb.contreller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.ifam.monitoriaweb.bean.Aluno;
import br.ifam.monitoriaweb.bean.ETipo;
import br.ifam.monitoriaweb.repository.AlunoRepository;

@Controller

public class AlunoController {

	@Autowired
	private AlunoRepository ar;
	
	@RequestMapping("/aluno/")
	public String menuAluno() {
		return "a/gerenciaAula";
	}
	

	
	
	
	@RequestMapping(value ="/aluno/cadastrar", method = RequestMethod.GET)
	public ModelAndView cadastra() {
		ModelAndView view = new ModelAndView("c/cadastrarAluno");
		view.addObject("Titulo", "Cadastra Aluno");
		return view;
	}
	
	@RequestMapping("/aluno/cadastraMonitoria")
	public ModelAndView alunocadastraMonitoria() {
		ModelAndView view = new ModelAndView("a/cadastraMonitoria");
		return view;
	}
	
	
	@RequestMapping(value ="/coordenandor/editarAluno", method = RequestMethod.GET)
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
	
	@RequestMapping(value ="/aluno/cadastrar", method = RequestMethod.POST)
	public String cadastra(Aluno bean, int tipo) {
		bean.setTipoaluno((tipo == 1 ? ETipo.Aluno : ETipo.Monitor));
		ar.save(bean);
		return "redirect:/coordenador/aluno";
	}
	
	@RequestMapping("/coordenandor/deletarAluno")
	public String deletarAluno(Long id) {
		Aluno aluno = ar.findById(id);
		ar.delete(aluno);
		return "redirect:/coordenador/aluno";
	}
	
	
}