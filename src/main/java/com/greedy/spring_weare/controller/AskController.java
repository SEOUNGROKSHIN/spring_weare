package com.greedy.spring_weare.controller;

import com.greedy.spring_weare.dto.AskDTO;
import com.greedy.spring_weare.service.AskService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@Log4j2
@RequestMapping("/ask")
@RequiredArgsConstructor
public class AskController {

    private final AskService askService;


    @GetMapping("/list")
    public void selectAll(Model model , AskDTO askDTO) {
        log.info("ask List ....");
    if(askDTO != null) {
        model.addAttribute("dtoList" , askService.selectAll());
    } else if(askDTO == null) {
        log.info("askList : " + askDTO);
        model.addAttribute("empty" , "게시글이 없습니다.");
    }
    }
    @PostMapping("/regist")
    public String registerPost(AskDTO askDTO) {

        ModelMapper modelMapper = new ModelMapper();

        askService.insert(askDTO);

        return "redirect:/";
    }

    @GetMapping("/read")
    public void read(Long tno , Model model) {


        AskDTO askDTO = askService.selectOne(tno);
        model.addAttribute("dto" , askDTO);
    }

}
