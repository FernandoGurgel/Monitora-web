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
	
	
	
	

}
