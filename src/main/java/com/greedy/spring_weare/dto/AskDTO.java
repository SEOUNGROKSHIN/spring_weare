package com.greedy.spring_weare.dto;

import lombok.*;

import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Builder
public class AskDTO {

    private Long tno;
    private String name;
    private String title;
    private String content;
    private String email;
    private boolean state;
    private LocalDate date;
}
