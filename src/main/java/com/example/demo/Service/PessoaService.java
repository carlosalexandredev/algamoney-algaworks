package com.example.demo.Service;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Service;

import com.example.demo.model.Pessoa;
import com.example.demo.repository.PessoaRepository;

@Service
public class PessoaService {
	
	@Autowired
	private PessoaRepository pessoaRepository;
	
	public Pessoa autalizar (Long codigo, Pessoa pessoa) {
		Pessoa pessoaSalva =  pessoaRepository.findById(codigo).orElse(null);
		if(pessoaSalva == null) {throw new EmptyResultDataAccessException(1);}
		BeanUtils.copyProperties(pessoa, pessoaSalva, "codigo");
		return pessoaRepository.save(pessoaSalva);
	}
}
