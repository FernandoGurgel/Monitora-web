package br.ifam.monitoriaweb.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import br.ifam.monitoriaweb.bean.DataDisponivel;
import br.ifam.monitoriaweb.bean.Sala;

public interface DataDisponivelRepository extends CrudRepository<DataDisponivel, String>{

	DataDisponivel findById(long id);
	
	List<DataDisponivel> findBySala(Sala sala);
	
//	@Query("Select d from DataDisponivel d where d.codsala = ?1")
//	List<DataDisponivel> findByCodSala(long codsala);

}
