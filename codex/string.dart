void main(List<String> args) {
  // var res = lengthOfLastWord("Felix Izarra");
  // print(res);

  //print(isPalindrome("ana"));

  print(isAnagram("ana", "naas"));
}

int lengthOfLastWord(String s) {
  int wordLen = 0;
  bool found = false;
  for (int i = s.length - 1; i >= 0; i--) {
    if (s[i] != ' ') {
      found = true;
      wordLen++;
    }

    if (s[i] == ' ' && found) return wordLen;
  }
  return wordLen;
}

bool isPalindrome(String s) {
  s = s.toLowerCase();
  int i = 0, j = s.length - 1;

  while (i < j) {
    var iLetter = '';
    var jLetter = '';

    while (!(isLetter(s[i]) || isNumber(s[i]))) {
      i++;
    }
    iLetter = s[i];

    while (!(isLetter(s[j]) || isNumber(s[j]))) {
      j--;
    }
    jLetter = s[j];

    if (s[i] != s[j]) return false;
    i++;
    j--;
  }
  return true;
}

bool isLetter(String char) {
  return RegExp(r'[a-zA-Z]').hasMatch(char);
}

bool isNumber(String char) {
  return RegExp(r'[0-9]').hasMatch(char);
}

bool isAnagram(String s, String t) {
  Map<String, int> dict = {};

  for (int i = 0; i < s.length; i++) {
    if (dict.containsKey(s[i])) {
      dict[s[i]] = dict[s[i]]! + 1;
    } else {
      dict[s[i]] = 1;
    }
  }

  for (int i = 0; i < t.length; i++) {
    if (!dict.containsKey(t[i])) {
      return false;
    } else {
      if (dict[t[i]] == 0) return false;
      dict[t[i]] = dict[t[i]]! - 1;
    }
  }

  for (int val in dict.values) {
    if (val > 0) return false;
  }

  return true;
}
