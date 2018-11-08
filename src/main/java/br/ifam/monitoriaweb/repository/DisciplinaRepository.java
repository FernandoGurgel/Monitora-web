package br.ifam.monitoriaweb.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import br.ifam.monitoriaweb.bean.Disciplina;

public interface DisciplinaRepository extends CrudRepository<Disciplina, String>{

	Disciplina findById(long id);

	@Query("SELECT d FROM Disciplina d WHERE aluno_id = ?1")
	Disciplina findByaluno(long aluno);
	
}
