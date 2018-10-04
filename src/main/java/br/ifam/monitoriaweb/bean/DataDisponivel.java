package br.ifam.monitoriaweb.bean;

import java.util.Calendar;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class DataDisponivel {
	
	@Id
	@GeneratedValue
	private Long id;
	private Calendar dataDisp;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Calendar getDataDisp() {
		return dataDisp;
	}
	public void setDataDisp(Calendar dataDisp) {
		this.dataDisp = dataDisp;
	}

	
}
