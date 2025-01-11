// Problemset url: https://leetcode.com/problems/concatenation-of-array/

class Solution {
  func getConcatenation(_ nums: [Int]) -> [Int] {
    var ans = [Int](repeating: 0, count: nums.count * 2)

    for i in 0..<nums.count {
      ans[i] = nums[i]
      ans[i + nums.count] = nums[i]
    }
    return ans
  }
}
