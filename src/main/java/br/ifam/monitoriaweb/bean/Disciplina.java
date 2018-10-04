package br.ifam.monitoriaweb.bean;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Disciplina implements Serializable {

	private static final long serialVersionUID = 1L;
	@GeneratedValue
	@Id
	private Long id;
	private String nome;
	private String informacoes;
	private int qtdVagas;
	
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
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	
	
}
