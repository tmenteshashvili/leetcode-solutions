// Problemset url: https://leetcode.com/problems/find-numbers-with-even-number-of-digits/description/

class Solution {
  func findNumbers(_ nums: [Int]) -> Int {

    var count = 0

    func isEvenDigits(_ num: Int) -> Bool {
      return String(num).count % 2 == 0
    }

    for num in nums {
      if isEvenDigits(num) {
        count += 1
      }
    }

    return count
  }
}
