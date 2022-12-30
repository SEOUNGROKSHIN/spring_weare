package com.greedy.spring_weare.service;

import com.greedy.spring_weare.dto.AskDTO;

import java.util.List;

public interface AskService {

    void insert(AskDTO askDTO);

    List<AskDTO> selectAll();
}
