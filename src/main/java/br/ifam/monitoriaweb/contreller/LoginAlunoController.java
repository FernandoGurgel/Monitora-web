package br.ifam.monitoriaweb.contreller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.ifam.monitoriaweb.bean.Aluno;
import br.ifam.monitoriaweb.bean.Coordenador;
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
	







	


