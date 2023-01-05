package com.vibrent.idv.web;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Models the execution of groups of ProcessingResources.
 */
@RestController
public class IdvServiceController {

    @RequestMapping("/")
    public String index() {
        return "Greetings from Spring Boot!";
    }
}
