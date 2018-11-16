package br.ifam.monitoriaweb.repository;

import org.springframework.data.repository.CrudRepository;

import br.ifam.monitoriaweb.bean.Sala;

public interface SalaRepository extends CrudRepository<Sala, String>{

	Sala findBycodsala(long codsala);

	Sala findBynome(String nome);

}
