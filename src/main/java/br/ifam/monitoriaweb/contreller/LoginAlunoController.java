package br.ifam.monitoriaweb.contreller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import br.ifam.monitoriaweb.repository.AlunoRepository;

@Controller
public class LoginAlunoController {

	@Autowired
	private AlunoRepository al;

	@RequestMapping("/loginAluno")
	public String loginAluno() {
		return "a/loginAluno";
	}

}
