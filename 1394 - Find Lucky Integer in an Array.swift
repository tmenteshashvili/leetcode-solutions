// Problemset url: https://leetcode.com/problems/find-lucky-integer-in-an-array/

class Solution {
  func findLucky(_ arr: [Int]) -> Int {
    var freq: [Int: Int] = [:]

    for num in arr {
      freq[num, default: 0] += 1
    }

    var max = -1
    for (num, count) in freq {
      if num == count && num > max {
        max = num
      }
    }
    return max
  }
}
