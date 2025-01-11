// Problemset url: https://leetcode.com/problems/max-consecutive-ones/description/

class Solution {
  func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
    if nums.count == 0 { return 0 }

    var maxCons = 0
    var current = 0

    for i in nums {
      if i == 0 {
        current = 0
        continue
      }
      current += 1
      maxCons = max(current, maxCons)
    }

    return maxCons
  }
}
