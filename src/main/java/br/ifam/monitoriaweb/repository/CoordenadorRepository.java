package br.ifam.monitoriaweb.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import br.ifam.monitoriaweb.bean.Aluno;
import br.ifam.monitoriaweb.bean.Coordenador;

public interface CoordenadorRepository extends CrudRepository<Coordenador, Long>{

	
	
	@Query("SELECT c FROM Coordenador c WHERE email = ?1 and senha = ?2")
	Coordenador findByValida(String email, String senha);
}
