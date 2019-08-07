package com.sonar.dao;

import org.springframework.data.repository.CrudRepository;
import com.sonar.model.Login;

public interface LoginDAO extends CrudRepository<Login, Integer> {

}
