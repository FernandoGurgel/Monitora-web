package br.ifam.monitoriaweb.bean;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

@Entity
public class Reserva {

	@Id @GeneratedValue
	private long rescodigo;
	@OneToOne
	private Aluno codmonitor;
	@ManyToMany
	private List<Aluno> alunos;
	@OneToOne
	private Sala codsala;
	private String horaIncio;
	private String horaFim;
	private String dia;
	
	public Reserva() {}
	
	public long getRescodigo() {
		return rescodigo;
	}
	public void setRescodigo(long rescodigo) {
		this.rescodigo = rescodigo;
	}
	public Aluno getCodmonitor() {
		return codmonitor;
	}
	public void setCodmonitor(Aluno codmonitor) {
		this.codmonitor = codmonitor;
	}
	public List<Aluno> getAlunos() {
		return alunos;
	}
	public void setAlunos(List<Aluno> alunos) {
		this.alunos = alunos;
	}
	public Sala getCodsala() {
		return codsala;
	}
	public void setCodsala(Sala codsala) {
		this.codsala = codsala;
	}
	public String getHoraIncio() {
		return horaIncio;
	}
	public void setHoraIncio(String horaIncio) {
		this.horaIncio = horaIncio;
	}
	public String getHoraFim() {
		return horaFim;
	}
	public void setHoraFim(String horaFim) {
		this.horaFim = horaFim;
	}

	public String getDia() {
		return dia;
	}

	public void setDia(String dia) {
		this.dia = dia;
	}
	
}
