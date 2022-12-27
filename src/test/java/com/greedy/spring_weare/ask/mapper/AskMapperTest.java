package com.greedy.spring_weare.ask.mapper;

import com.greedy.spring_weare.mapper.AskMapper;
import lombok.extern.log4j.Log4j2;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@Log4j2
@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/root-context.xml")
class AskMapperTest {

    @Autowired(required = false)
    private AskMapper askMapper;

    @Test
    void getTime() {
        log.info(askMapper.getTime());
    }

    @Test
    void insert() {
    }
}