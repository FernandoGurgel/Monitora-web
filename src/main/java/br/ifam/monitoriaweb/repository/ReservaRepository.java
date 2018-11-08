package br.ifam.monitoriaweb.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import br.ifam.monitoriaweb.bean.DataDisponivel;
import br.ifam.monitoriaweb.bean.Disciplina;
import br.ifam.monitoriaweb.bean.Reserva;

public interface ReservaRepository extends CrudRepository<Reserva, String>{

	Reserva findByrescodigo(long rescodigo);
	
	@Query("    SELECT r.rescodigo, c.nome, r.dia, r.horaIncio, r.horaFim, c.qtdVagas "
			+ " FROM Reserva r" 
			+ " INNER JOIN Aluno d      on r.rescodigo =  d.id "
			+ " INNER JOIN Disciplina c on d.id = aluno_id" )
		//	+ " WHERE aluno_id = ?1" )
	// r.rescodigoaluno ou r.rescodigo ???
	List<Reserva> findByMonitorDisciplina();
	

}
