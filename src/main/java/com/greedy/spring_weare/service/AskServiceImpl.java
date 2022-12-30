package com.greedy.spring_weare.service;

import com.greedy.spring_weare.dto.AskDTO;
import com.greedy.spring_weare.mapper.AskMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@Log4j2
@RequiredArgsConstructor
public class AskServiceImpl implements AskService{

    private final AskMapper askMapper;
    private final ModelMapper modelMapper;


    @Override
    public void insert(AskDTO askDTO) {

        log.info("askInsert init");

        askMapper.insert(askDTO);

    }

    @Override
    public List<AskDTO> selectAll() {

        List<AskDTO> dtoList = askMapper.selectAll().stream()
                .map(vo -> modelMapper.map(vo , AskDTO.class))
                .collect(Collectors.toList());

        return dtoList;
    }
}
