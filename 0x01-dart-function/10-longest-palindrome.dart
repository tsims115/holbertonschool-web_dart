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
    Set<String> unique_characters = {};
    while (end < str.length) {
        if (!(unique_characters.any((c) => c == str[end]))) {
            unique_characters.add(str[end]);
            end += 1;
        }
        else {
            unique_characters.remove(str[start]);
            start += 1;
        }
        if ( isPalindrome(createString(unique_characters)) && unique_characters.length > unique.length) {
            unique = createString(unique_characters);
        }
    }
    if (unique == "") {
        return "none";
    }
    return unique;
}
