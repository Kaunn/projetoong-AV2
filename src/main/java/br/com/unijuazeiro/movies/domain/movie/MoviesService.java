package br.com.unijuazeiro.movies.domain.movie;

import java.util.List;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.management.relation.Role;

import br.com.unijuazeiro.movies.exceptions.BusinessException;
import br.com.unijuazeiro.movies.infrastructure.MoviesDB;

@ApplicationScoped
public class MoviesService {

	@Inject
	private MoviesDB moviesDB;

	public void save(Movie movie) {
		Movie found = this.moviesDB.findByTitle(movie.getTitle());
		if (found != null) {
			throw new BusinessException("ONG ja cadastrada");
		}

		this.moviesDB.save(movie);
	}
	
	public Movie findById(String id) {
		Movie found = this.moviesDB.findById(id);
		
		if (found == null) {
			throw new BusinessException("ONG não encontrada");
		}
		
		return found;
	}

	public Movie findByTitle(String title) {
		Movie found = this.moviesDB.findByTitle(title);
		
		if (found == null) {
			throw new BusinessException("Filme não encontrado");
		}
		
		return found;
	}

	public void update(Movie movie) {
		this.moviesDB.update(movie);
	}

	public void delete(String id) {
		this.moviesDB.delete(id);
	}

	public List<Movie> listAll() {
		return this.moviesDB.listAll();
	}
}
