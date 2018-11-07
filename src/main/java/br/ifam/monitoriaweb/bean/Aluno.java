package br.ifam.monitoriaweb.bean;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;

@Entity
public class Aluno extends Usuario implements Serializable {

	private static final long serialVersionUID = 1L;

	private String matricula;
//	@OneToOne
//	@JoinColumn(name="alucurso")
	private String curso; 
	//status
	@Enumerated(EnumType.STRING)
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
	public String getTipoaluno() {
		return tipoaluno.name();
	}
	public void setTipoaluno(ETipo tipoaluno) {
		this.tipoaluno = tipoaluno;
	}
	
}
	