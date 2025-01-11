// Problemset url: https://leetcode.com/problems/plus-one/

class Solution {
  func plusOne(_ digits: [Int]) -> [Int] {
    var digits = digits
    for i in (0..<digits.count).reversed() {
      if digits[i] != 9 {
        digits[i] += 1
        return digits
      } else {
        digits[i] = 0
      }

    }
    digits = digits.reversed()
    digits.append(1)

    return digits.reversed()

  }
}
