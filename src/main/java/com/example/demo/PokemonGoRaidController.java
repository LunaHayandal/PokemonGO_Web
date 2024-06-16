package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PokemonGoRaidController {

    @GetMapping("/")
    public String home() {
        return "detailInfo";
    }
    @GetMapping("/edit")
    public String edit() {
        return "editDetailInfo";
    }
}

