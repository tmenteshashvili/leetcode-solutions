// Problemset url: https://leetcode.com/problems/binary-search/

class Solution {
  func search(_ nums: [Int], _ target: Int) -> Int {
    var left = 0
    var right = nums.count - 1

    while left <= right {

      var mid = (right + left) / 2

      if nums[mid] == target {
        return mid
      }

      if nums[mid] < target {
        left = mid + 1
      } else if nums[mid] > target {
        right = mid - 1
      }
    }
    return -1
  }
}
