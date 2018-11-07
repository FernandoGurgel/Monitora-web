package br.ifam.monitoriaweb.contreller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class LoginMonitorController {

	@RequestMapping("/loginMonitor/")
	public String loginMonitor() {
		return "m/loginMonitor";
	}
	
}
