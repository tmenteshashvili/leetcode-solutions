// Problemset url: https://leetcode.com/problems/sum-of-digits-of-string-after-convert/description/

class Solution {
  func getLucky(_ s: String, _ k: Int) -> Int {
    var charCodes = s.reduce(
      "",
      { output, char in
        output + String(char.asciiValue! - 96)
      })

    var sum = calculateDigitsSum(charCodes)
    for _ in 1..<k {
      sum = calculateDigitsSum(String(sum))
    }

    return sum
  }

  func calculateDigitsSum(_ input: String) -> Int {
    var sum = 0

    for char in input {
      sum += Int(char.wholeNumberValue ?? 0)
    }
    return sum
  }
}
