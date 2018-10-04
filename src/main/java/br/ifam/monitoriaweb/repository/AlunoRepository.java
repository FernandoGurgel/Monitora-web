package br.ifam.monitoriaweb.repository;

import org.springframework.data.repository.CrudRepository;

import br.ifam.monitoriaweb.bean.Aluno;

public interface AlunoRepository extends CrudRepository<Aluno, String>{
}
