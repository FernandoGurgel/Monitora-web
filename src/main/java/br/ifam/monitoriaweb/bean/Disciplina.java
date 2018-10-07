package br.ifam.monitoriaweb.bean;

import java.io.Serializable;
import java.util.Calendar;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Disciplina implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue (strategy = GenerationType.AUTO)
	private Long id;
	private String nome;
	private String informacoes;
	private int qtdVagas;
	@OneToOne(optional=false)
	@JoinColumn(name="aluno_id")
	private Aluno aluno;
	@Temporal(TemporalType.DATE)
	private Calendar dataInicio;
	@Temporal(TemporalType.DATE)
	private Calendar dataFim;
	
	public Disciplina() {}
	
	public Disciplina(Long id, String nome, String informacoes, int qtdVagas) {
		this.id = id;
		this.nome = nome;
		this.informacoes = informacoes;
		this.qtdVagas = qtdVagas;
	}
	
	public Calendar getDataInicio() {
		return dataInicio;
	}

	public void setDataInicio(Calendar dataInicio) {
		this.dataInicio = dataInicio;
	}

	public Calendar getDataFim() {
		return dataFim;
	}

	public void setDataFim(Calendar dataFim) {
		this.dataFim = dataFim;
	}

	public Aluno getAluno() {
		return aluno;
	}

	public void setAluno(Aluno aluno) {
		this.aluno = aluno;
	}

	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getInformacoes() {
		return informacoes;
	}
	public void setInformacoes(String informacoes) {
		this.informacoes = informacoes;
	}
	public int getQtdVagas() {
		return qtdVagas;
	}
	public void setQtdVagas(int qtdVagas) {
		this.qtdVagas = qtdVagas;
	}
}
