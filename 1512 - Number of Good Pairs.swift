// Problemset url: https://leetcode.com/problems/number-of-good-pairs/

class Solution {
  func numIdenticalPairs(_ nums: [Int]) -> Int {
    var countPairs = 0

    for i in 0..<nums.count {

      for j in (i + 1)..<nums.count {
        if nums[i] == nums[j] && i < j {
          countPairs += 1
        }

      }

    }
    return countPairs
  }
}
