bool isPalindrome(String word) {
    if (word.length < 3) {
        return false;
    }
    for (int i = 0; i < word.length ~/ 2; i++) {
      if (word[i] != word[word.length - i - 1]) return false;
    }
  return true;
}
