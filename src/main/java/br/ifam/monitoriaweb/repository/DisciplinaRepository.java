package br.ifam.monitoriaweb.repository;

import org.springframework.data.repository.CrudRepository;

import br.ifam.monitoriaweb.bean.Disciplina;

public interface DisciplinaRepository extends CrudRepository<Disciplina, String>{

	Disciplina findById(long id);

}
