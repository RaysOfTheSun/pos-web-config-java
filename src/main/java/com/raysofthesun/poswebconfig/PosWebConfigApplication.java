package com.raysofthesun.poswebconfig;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.config.server.EnableConfigServer;

@SpringBootApplication
@EnableConfigServer
public class PosWebConfigApplication {

    public static void main(String[] args) {
        SpringApplication.run(PosWebConfigApplication.class, args);
    }

}
