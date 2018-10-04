package br.ifam.monitoriaweb.contreller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/coordenador")
public class CoordenadorController {

	@RequestMapping("/")
	public String index() {
		return "c/index.html";
	}
}
