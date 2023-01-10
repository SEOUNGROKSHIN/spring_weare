package com.greedy.spring_weare.dto;

import lombok.*;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Builder
public class AskDTO {

    private Long tno;
    private String name;
    @NotEmpty
    private String title;
    private String content;
    private String email;
    private boolean status;
    private LocalDate date;
}
