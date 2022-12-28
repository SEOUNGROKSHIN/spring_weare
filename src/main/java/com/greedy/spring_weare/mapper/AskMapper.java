package com.greedy.spring_weare.mapper;

import com.greedy.spring_weare.dto.AskDTO;

public interface AskMapper {

    String getTime();
    void insert(AskDTO askDTO);
}
