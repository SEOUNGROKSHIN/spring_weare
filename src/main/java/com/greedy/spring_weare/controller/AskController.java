package com.greedy.spring_weare.controller;

import com.greedy.spring_weare.dto.AskDTO;
import com.greedy.spring_weare.service.AskService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//@RequestMapping("/ask")
@Log4j2
@RequiredArgsConstructor
public class AskController {

    private final AskService askService;

    @PostMapping("/")
    public String registerPost(AskDTO askDTO) {
        log.info("register Post....");

        askService.insert(askDTO);

        return "redirect:/";
    }
}
