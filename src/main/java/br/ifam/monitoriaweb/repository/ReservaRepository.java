 package br.ifam.monitoriaweb.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import br.ifam.monitoriaweb.bean.Aluno;
import br.ifam.monitoriaweb.bean.DataDisponivel;
import br.ifam.monitoriaweb.bean.Disciplina;
import br.ifam.monitoriaweb.bean.Reserva;

public interface ReservaRepository extends CrudRepository<Reserva, String>{

	Reserva findByrescodigo(long rescodigo);

	@Query(" SELECT r.rescodigo, s.nome, d.nome, r.dia, r.horaIncio, r.horaFim, d.qtdVagas FROM Reserva r " + 
			" inner join Aluno a on r.codmonitor = a.id " 
			+ " INNER JOIN Disciplina d on a.id = aluno_id" 
			+ " inner join Sala s on s.codsala = r.codsala"
			)
			
	

	List<Reserva> findByMonitorDisciplina();
	
	@Query("SELECT d FROM Reserva r " + 
			" inner join Aluno a on r.codmonitor = a.id " 
			+ " INNER JOIN Disciplina d on a.id = aluno_id" 
			)
	
	Disciplina findDiciplina(long al);
	
	
	@Query(" SELECT a FROM Reserva r " + 
				" inner join Aluno a on r.codmonitor = a.id where rescodigo = ?1"
	)
	List<Aluno> findAllAlunosReserva(long id);

	@Query(" SELECT d.nome, s.nome, r.horaIncio, r.horaFim, r.dia FROM Reserva r " + 
			" inner join Aluno a on r.codmonitor = a.id"
			+ " INNER JOIN Disciplina d on a.id = aluno_id"
			+ " INNER JOIN Sala s on s.codsala = r.codsala"
			+ "		WHERE a.id = ?1" 
	)
	List<Aluno> findAlunoMonitoria(long id);

	@Query("SELECT r FROM Reserva r ")
	List<Reserva>  findAllReservas();
}
