import 'dart:math';
import '9-palindrome.dart';

String longestPalindrome(String str) {
    String createString(Set<String> unique_characters) {
        String unique = "";
        for (var s in unique_characters) {
            unique += s;
        }
        return unique;
    }
    if (str == "") {
        return "none";
    }
    int start = 0;
    int end = 0;
    int maxLength = 0;
    String unique = "";
    String cur_str = "";
    while (start < str.length) {
        cur_str = str.substring(start, end);
        if (isPalindrome(cur_str)) {
            unique = cur_str;
        }
        if (end == str.length) {
            start += 1;
        } else {
            end += 1;
        }
    }
    if (unique == "") {
        return "none";
    }
    return unique;
}
