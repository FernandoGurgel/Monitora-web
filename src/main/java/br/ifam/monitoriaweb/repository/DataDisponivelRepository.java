package br.ifam.monitoriaweb.repository;

import org.springframework.data.repository.CrudRepository;
import br.ifam.monitoriaweb.bean.DataDisponivel;

public interface DataDisponivelRepository extends CrudRepository<DataDisponivel, String>{

	DataDisponivel findById(long id);

}
