package com.example.resume.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.resume.entity.User;

public interface UserRepository extends JpaRepository<User, Long>{

  Optional<User> findByEmail(String email);
  
}
