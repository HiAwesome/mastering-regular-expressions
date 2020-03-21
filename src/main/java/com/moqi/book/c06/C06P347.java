package com.moqi.book.c06;

import lombok.extern.slf4j.Slf4j;

import java.util.regex.*;
/**
 * Java BenchMark：Java 正则性能测试
 *
 * @author moqi
 * On 3/21/20 11:58
 */
@Slf4j
public class C06P347 {

    /**
     * 2020-03-21 12:06:06 INFO  C06P347:32 - Alternation takes 0.021 seconds
     * 2020-03-21 12:06:06 INFO  C06P347:40 - Character takes 0.005 seconds
     *
     * timesToDo 设定为 200 及其以上目前会 Stack Overflow
     */
    public static void main(String[] args) {
        Matcher regex1 = Pattern.compile("^(a|b|c|d|e|f|g)+$").matcher("");
        Matcher regex2 = Pattern.compile("^[a-g]+$").matcher("");
        int timesToDo = 100;

        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < timesToDo; i++) {
            sb.append("abababdedfg");
        }
        String testString = sb.toString();

        int count1 = timesToDo;
        long startTime1 = System.currentTimeMillis();
        while (--count1 > 0) {
            regex1.reset(testString).find();
        }
        double seconds1 = (System.currentTimeMillis() - startTime1) / 1000.0;
        log.info("Alternation takes {} seconds", seconds1);

        int count2 = timesToDo;
        long startTime2 = System.currentTimeMillis();
        while (--count2 > 0) {
            regex2.reset(testString).find();
        }
        double seconds2 = (System.currentTimeMillis() - startTime2) / 1000.0;
        log.info("Character takes {} seconds", seconds2);
    }

}
