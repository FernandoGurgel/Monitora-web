package br.ifam.monitoriaweb.contreller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.NonNull;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import br.ifam.monitoriaweb.bean.Aluno;
import br.ifam.monitoriaweb.bean.DataDisponivel;
import br.ifam.monitoriaweb.bean.Disciplina;
import br.ifam.monitoriaweb.bean.ETipo;
import br.ifam.monitoriaweb.bean.Reserva;
import br.ifam.monitoriaweb.repository.AlunoRepository;
import br.ifam.monitoriaweb.repository.DisciplinaRepository;
import br.ifam.monitoriaweb.repository.ReservaRepository;

@Controller

public class AlunoController {

	@Autowired
	private AlunoRepository ar;

	@Autowired
	private ReservaRepository rr;
	
	@Autowired
	private DisciplinaRepository dr;
	
	private int aluno = -1;
	
	@RequestMapping("/aluno/login")
	public String loginAluno() {
		return "a/loginAluno";
	}
	
	@RequestMapping("/aluno/validar")
	@ResponseBody
	public String validar(@NonNull String email,@NonNull String senha) {
		Aluno aluno = ar.findByValida(email,senha);		
		if(aluno != null)
			return "success";
		else
			return "false";
	}
	
	@RequestMapping("/aluno/")
	public String index() {
		return "a/index";
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
		
		Iterable<Reserva> lista = rr.findByMonitorDisciplina();
		view.addObject("lista", lista);	
	
		return view;
	}/*
	@RequestMapping(value="/aluno/cadastrarhorario",method=RequestMethod.GET)
	public String adicionarReserva(long id) {
		
		DataDisponivel dd = dataD.findById(id);
		
		// Alterar Session
		Aluno al = ar.findById(codmonitor);
		
		
		Reserva reserva = new Reserva();
		reserva.setCodsala(dd.getSala());
		reserva.setCodmonitor(al);
		reserva.setHoraIncio(dd.getInicio());
		reserva.setHoraFim(dd.getFim());
		reserva.setDia(dd.getDia());
	
		rr.save(reserva);
		dataD.delete(dd);

		String retorno;
		retorno = "redirect:/monitor/?id=" + codmonitor;
		return "redirect:/aluno/";
	}*/
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
	
	@RequestMapping("/aluno/alunoCadastraMonitoria")
	public String cadastraAlunoMonitoria(Long id) {
		Aluno aluno = ar.findById(id);
		ar.delete(aluno);
		return "redirect:/aluno/cadastraMonitoria";
	}
}