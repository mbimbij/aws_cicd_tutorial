package com.example.demo;

import org.reactivestreams.Publisher;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import reactor.core.publisher.Mono;

import java.util.UUID;
import java.util.concurrent.Flow;

@SpringBootApplication
@RestController
public class AwsCicdTutorialApplication {

  private final String id = UUID.randomUUID().toString();

  public static void main(String[] args) {
    SpringApplication.run(AwsCicdTutorialApplication.class, args);
  }

  @GetMapping("/hello")
  public Publisher<String> hello() {
    return Mono.just("hello v2 - " + id);
  }
}
