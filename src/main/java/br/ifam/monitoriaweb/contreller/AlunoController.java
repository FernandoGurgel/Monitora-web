package br.ifam.monitoriaweb.contreller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import br.ifam.monitoriaweb.bean.Aluno;
import br.ifam.monitoriaweb.repository.AlunoRepository;

@Controller
public class AlunoController {

	@Autowired
	private AlunoRepository ar;

	@RequestMapping(value ="/aluno/cadastrar", method = RequestMethod.GET)
	public String cadastra() {
		return "c/cadastrarAluno";
	}

	@RequestMapping(value ="/aluno/cadastrar", method = RequestMethod.POST)
	public String cadastra(Aluno bean) {
		ar.save(bean);
		
		return "redirect:/coordenador/";
	}
}
