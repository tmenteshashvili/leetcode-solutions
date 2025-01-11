// Problemset url: https://leetcode.com/problems/squares-of-a-sorted-array/description/

class Solution {
  func sortedSquares(_ nums: [Int]) -> [Int] {
    var newArr: [Int] = []

    for num in nums {
      newArr.append(num * num)
    }

    return newArr.sorted()
  }
}
