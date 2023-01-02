package com.greedy.spring_weare.mapper;

import com.greedy.spring_weare.domain.AskVO;
import com.greedy.spring_weare.dto.AskDTO;
import com.greedy.spring_weare.mapper.AskMapper;
import lombok.extern.log4j.Log4j2;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.time.LocalDate;
import java.util.List;

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
    void testInsert() {
       AskDTO askDTO = AskDTO.builder()
               .title("제목테스트")
               .content("내용테스트")
               .name("신승록")
               .date(LocalDate.now())
               .email("test@naver.com")
               .build();

       askMapper.insert(askDTO);

    }
    @Test
    void selectAll() {

        List<AskVO> voList = askMapper.selectAll();

        voList.forEach(askVO -> log.info(askVO));
    }


    @Test
    void selectOne() {

        AskVO vo = askMapper.selectOne(1L);

        log.info(vo);
    }
}