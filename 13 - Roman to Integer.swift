// Problemset url: https://leetcode.com/problems/roman-to-integer/

class Solution {
  func romanToInt(_ s: String) -> Int {
    var dict: [Character: Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
    var sum = 0
    var previousVel = 0

    for char in s {
      let currentVel = dict[char, default: 0]

      if previousVel < currentVel {
        sum += currentVel - 2 * previousVel
      } else {
        sum += currentVel
      }

      previousVel = currentVel
    }

    return sum
  }
}
