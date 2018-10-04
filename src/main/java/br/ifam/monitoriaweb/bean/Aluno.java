package br.ifam.monitoriaweb.bean;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Enumerated;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Aluno extends Usuario implements Serializable {

	private static final long serialVersionUID = 1L;

	private String matricula;
//	@OneToOne
//	@JoinColumn(name="alucurso")
	private String curso; 
	//status
	@Enumerated
	private ETipo tipoaluno;
	
	public String getMatricula() {
		return matricula;
	}
	public void setMatricula(String matricula) {
		this.matricula = matricula;
	}
	public String getCurso() {
		return curso;
	}
	public void setCurso(String curso) {
		this.curso = curso;
	}
	public ETipo getTipoaluno() {
		return tipoaluno;
	}
	public void setTipoaluno(ETipo tipoaluno) {
		this.tipoaluno = tipoaluno;
	}
	
}
	