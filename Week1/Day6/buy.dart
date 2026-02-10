void main() {
  var prices = [7, 2, 15, 1, 12];
  var min = prices[0];
  var profit = 0;

  for (int i = 1; i < prices.length; i++) {
    if (min > prices[i]) {
      min = prices[i];
    } else if ((prices[i] - min) > profit) {
      profit = prices[i] - min;
    }
  }
  print(profit);
}
