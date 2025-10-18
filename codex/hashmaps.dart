void main(List<String> args) {
  //print(sumOfDoubleDigits(124));
  distributeCandies([1, 1, 2, 3]);
}

bool isHappy(int n) {
  Map<int, int> numbers = {};

  int currentNumber = n;

  while (!numbers.containsKey(currentNumber)) {
    var sum = sumOfDoubleDigits(currentNumber);
    if (sum == 1) return true;

    numbers[currentNumber] = sum;
    currentNumber = sum;
  }

  return false;
}

int sumOfDoubleDigits(int num) {
  int sum = 0;

  while (num > 0) {
    var digit = num % 10;
    sum += digit * digit;
    num = (num / 10).toInt();
  }

  return sum;
}

bool canConstruct(String ransomNote, String magazine) {
  Map<String, int> map = {};

  for (int i = 0; i < magazine.length; i++) {
    if (map.containsKey(magazine[i])) {
      map[magazine[i]] = map[magazine[i]]! + 1;
    } else {
      map[magazine[i]] = 1;
    }
  }

  for (int i = 0; i < ransomNote.length; i++) {
    if (!map.containsKey(ransomNote[i])) {
      return false;
    } else {
      if (map[ransomNote[i]] == 0) return false;
      map[ransomNote[i]] = map[ransomNote[i]]! - 1;
    }
  }

  return true;
}

int distributeCandies(List<int> candyType) {
  int maxCandies = (candyType.length / 2).toInt();
  Map<int, int> candyMap = {};

  for (int i = 0; i < candyType.length; i++) {
    candyMap[candyType[i]] = 1;
  }

  print("maxC $maxCandies mapKeysLen ${candyMap.keys.length}");

  return (maxCandies < candyMap.keys.length
      ? maxCandies
      : candyMap.keys.length);
}
