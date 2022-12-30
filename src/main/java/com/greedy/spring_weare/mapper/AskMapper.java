package com.greedy.spring_weare.mapper;

import com.greedy.spring_weare.domain.AskVO;
import com.greedy.spring_weare.dto.AskDTO;

import java.util.List;

public interface AskMapper {

    String getTime();
    void insert(AskDTO askDTO);

    List<AskVO> selectAll();
}
