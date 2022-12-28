package com.greedy.spring_weare.service;

import com.greedy.spring_weare.dto.AskDTO;
import com.greedy.spring_weare.mapper.AskMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

@Service
@Log4j2
@RequiredArgsConstructor
public class AskServiceImpl implements AskService{

    private final AskMapper askMapper;


    @Override
    public void insert(AskDTO askDTO) {

        log.info("askInsert init");

        askMapper.insert(askDTO);

    }
}
