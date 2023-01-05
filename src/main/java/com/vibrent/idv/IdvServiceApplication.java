package com.vibrent.idv;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.envers.repository.support.EnversRevisionRepositoryFactoryBean;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

/**
 * Class that can be used to bootstrap and launch a Spring application from Java main method.
 */
@SpringBootApplication
@ComponentScan(basePackages = {"com.vibrent.idv", "com.vibrent.vrp.oauth.integration", "com.vibrent.vrp.oidc"})
@EnableJpaRepositories(basePackages = {"com.vibrent.vrp.oauth.integration.repository"}, repositoryFactoryBeanClass = EnversRevisionRepositoryFactoryBean.class)
@EntityScan(basePackages = {"com.vibrent.vrp.oauth.integration.domain"})
public class IdvServiceApplication {

    public static void main(String[] args) {
        SpringApplication.run(IdvServiceApplication.class, args);
    }

}
