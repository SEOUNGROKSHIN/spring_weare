package com.greedy.spring_weare.domain;

import lombok.*;

import java.time.LocalDate;

@NoArgsConstructor
@AllArgsConstructor
@ToString
@Getter
@Builder
public class AskVO {

    private Long tno;
    private String name;
    private String title;
    private String content;
    private String email;
    private boolean state;
    private LocalDate date;
}
