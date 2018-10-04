package br.ifam.monitoriaweb.bean;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Sala implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue
	private Long id;
	private String nome;
	@OneToMany
	private List<DataDisponivel> dataDisponiveis;
	
	public Sala() {}
	
	public Sala(Long id, String nome, List<DataDisponivel> dataDisponiveis) {
		this.id = id;
		this.nome = nome;
		this.dataDisponiveis = dataDisponiveis;
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
	public List<DataDisponivel> getDataDisponiveis() {
		return dataDisponiveis;
	}
	public void setDataDisponiveis(List<DataDisponivel> dataDisponiveis) {
		this.dataDisponiveis = dataDisponiveis;
	}
}
