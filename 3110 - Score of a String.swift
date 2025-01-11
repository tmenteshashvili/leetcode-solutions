// Problemset url: https://leetcode.com/problems/score-of-a-string/

class Solution {
  func scoreOfString(_ s: String) -> Int {
    var countScore: Int = 0
    var chars = Array(s)

    for i in 0..<chars.count - 1 {
      var current = Int(chars[i].asciiValue ?? 0)
      var next = Int(chars[i + 1].asciiValue ?? 0)
      countScore = countScore + abs(current - next)
    }
    return countScore

  }
}
