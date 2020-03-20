package com.moqi.tool;

import lombok.extern.slf4j.Slf4j;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Stream;

import static com.moqi.constant.Constant.EMPTY_STRING;

/**
 * @author moqi
 * On 2/27/20 09:51
 */
@Slf4j
public class Tool {

    private static final String DATA_PREFIX = "src/main/resources/data/";

    /**
     * 正则匹配字符串
     */
    public static List<String> patternString(String regex, String sourceString) {
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(sourceString);

        List<String> list = new ArrayList<>();

        while (matcher.find()) {
            list.add(matcher.group());
        }

        return list;
    }

    /**
     * 正则替换字符串
     */
    public static void regexReplaceAllString(String regex, String sourceString, String replacement) {
        log.info("sourceString: {}", sourceString);
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(sourceString);

        String after = matcher.replaceAll(replacement);
        log.info("after: {}", after);
    }


    /**
     * 将整个文件读取为一行字符串
     */
    public static String getStringFromFile(String filePath) {

        try {
            return new String(Files.readAllBytes(Paths.get(DATA_PREFIX + filePath)));
        } catch (IOException e) {
            log.error("文件读取异常");
        }

        return EMPTY_STRING;
    }

    /**
     * 将整个文件读取为多个字符串
     * 此种读取方式默认是有损耗的，会去掉每一行最后的分隔符，因此加上 \n
     * 参考：
     * https://stackoverflow.com/a/326440
     * https://howtodoinjava.com/java/io/java-read-file-to-string-examples/
     */
    @SuppressWarnings("unused")
    public static String getMultiStringFromFile(String filePath) {
        StringBuilder stringBuilder = new StringBuilder();
        try (Stream<String> lines = Files.lines(Paths.get(DATA_PREFIX + filePath), StandardCharsets.UTF_8)) {
            lines.forEach(line -> stringBuilder.append(line).append("\n"));
            return stringBuilder.toString();
        } catch (IOException e) {
            log.error("文件读取异常");
        }

        return EMPTY_STRING;
    }


}
