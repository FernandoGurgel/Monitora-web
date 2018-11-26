package br.ifam.monitoriaweb.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import br.ifam.monitoriaweb.bean.Aluno;

public interface AlunoRepository extends CrudRepository<Aluno, String>{

	Aluno findById(Long id);

	Aluno findByNome(String nome);

	@Query("SELECT a FROM Aluno a WHERE email = ?1 and senha = ?2")
	Aluno findByValida(String email, String senha);

	Aluno findByemail(String email);

	Aluno findBymatricula(String matricula);

	@Query("SELECT a FROM Aluno a WHERE email = ?1 and senha = ?2 and tipoaluno = 'Monitor'")
	Aluno findBymonitor(String username, String password);
}
