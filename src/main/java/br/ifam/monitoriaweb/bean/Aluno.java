package br.ifam.monitoriaweb.bean;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Aluno extends Usuario implements Serializable {

	private static final long serialVersionUID = 1L;

	private String matricula;
	@OneToOne
	@JoinColumn(name="alucurso")
	private Curso curso; 
	//status
	private String tipoaluno;
	
	public String getMatricula() {
		return matricula;
	}
	public void setMatricula(String matricula) {
		this.matricula = matricula;
	}
	public Curso getCurso() {
		return curso;
	}
	public void setCurso(Curso curso) {
		this.curso = curso;
	}
	public String getTipoaluno() {
		return tipoaluno;
	}
	public void setTipoaluno(String tipoaluno) {
		this.tipoaluno = tipoaluno;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	} 
	
	
}
	