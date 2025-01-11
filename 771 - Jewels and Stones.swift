// Problemset url: https://leetcode.com/problems/jewels-and-stones/

class Solution {
  func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
    var newStr = Set(jewels)
    var totalNumSt = 0

    for i in stones {

      if newStr.contains(i) {
        totalNumSt += 1
      }

    }

    return totalNumSt
  }
}
