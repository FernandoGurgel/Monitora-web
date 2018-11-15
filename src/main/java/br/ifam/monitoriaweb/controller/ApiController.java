package br.ifam.monitoriaweb.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.ifam.monitoriaweb.bean.Aluno;
import br.ifam.monitoriaweb.bean.ETipo;
import br.ifam.monitoriaweb.repository.AlunoRepository;

@RestController
public class ApiController {

	@Autowired
	private AlunoRepository al; 
	
	@RequestMapping("/api/aluno")
	public List<Aluno> alunoMonitor() {
		List<Aluno> alunos = new ArrayList<>();
		Iterable<Aluno> lista = al.findAll();
		for(Aluno a : lista) {
			if(a.getTipoaluno() == ETipo.Monitor.toString())
				alunos.add(a);
		}
		return alunos;
	}
}
