//Problemset url: https://leetcode.com/problems/running-sum-of-1d-array/

class Solution {
  func runningSum(_ nums: [Int]) -> [Int] {
    var newNums: [Int] = []
    var sum = 0

    for numb in nums {
      sum += numb
      newNums.append(sum)

    }

    return newNums

  }
}
