main() {
  //removeDuplicates();

  // var res = plusOne([9, 8, 7, 6, 5, 4, 3, 2, 1, 0]);
  // print(res);

  var res = maxProfit([7, 1, 5, 3, 6, 4]);
  print(res);
}

removeDuplicates() {
  List<int> nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4];
  print("Input $nums");

  int unique = 0;
  int pointer = 0;

  while (pointer < nums.length) {
    if (nums[unique] == nums[pointer]) {
      pointer++;
    } else {
      nums[unique + 1] = nums[pointer];
      unique++;
    }
  }

  print("Output $nums");
}

List<int> plusOne(List<int> digits) {
  bool carry = true;
  for (int i = digits.length - 1; i >= 0; i--) {
    if (digits[i] == 9 && carry) {
      carry = true;
      digits[i] = 0;
    } else {
      if (carry || i == digits.length - 1) {
        digits[i]++;
      }
      carry = false;
    }
  }
  if (carry) {
    digits = [1] + digits;
  }
  return digits;
}

int maxProfit(List<int> prices) {
  int profit = 0;
  int cheapest = 5000;
  for (int i = 0; i < prices.length; i++) {
    if (prices[i] < cheapest) {
      cheapest = i;

      for (int j = i; j < prices.length; j++) {
        int tempProfit = prices[j] - prices[i];
        if (tempProfit > 0) {
          if (profit < tempProfit) {
            profit = tempProfit;
          }
        }
      }
    }
  }
  return profit;
}
