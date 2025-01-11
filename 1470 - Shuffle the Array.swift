// Problemset url: https://leetcode.com/problems/shuffle-the-array/

class Solution {
  func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
    var newarr: [Int] = []

    for i in 0..<n {
      newarr += [nums[i], nums[i + n]]
    }

    return newarr
  }
}
