package br.ifam.monitoriaweb.contreller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.ifam.monitoriaweb.bean.Disciplina;
import br.ifam.monitoriaweb.repository.DisciplinaRepository;

@Controller
public class DisciplinaController {

	@Autowired
	private DisciplinaRepository em;
	
	@RequestMapping(value="/disciplina/cadastrar", method= RequestMethod.GET)
	public String index() {
		return "c/cadastrarDisciplina";
	}
	
	@RequestMapping(value="/disciplina/cadastrar", method= RequestMethod.POST)
	public String cadastrar(Disciplina disciplina) {
		em.save(disciplina);
		return "redirect:/coordenador/disciplina";
	}
	
	@RequestMapping("/disciplina/editar")
	public String editar(long id) {
		return "c/cadastrarDisciplina";
	}
	
	@RequestMapping("/disciplina/excluir")
	public String excluir(long id) {
		Disciplina disciplina = em.findById(id);
		em.delete(disciplina);
		return "redirect:/coordenador/disciplina";
	}
}
