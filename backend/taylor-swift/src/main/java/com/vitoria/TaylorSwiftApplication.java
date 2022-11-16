package com.vitoria;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScans;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@ComponentScans({@ComponentScan("com.vitoria.controllers")})
@EnableJpaRepositories("com.vitoria.repositories")
@EntityScan("com.vitoria.models")
public class TaylorSwiftApplication {

	public static void main(String[] args) {
		SpringApplication.run(TaylorSwiftApplication.class, args);
	}

}
