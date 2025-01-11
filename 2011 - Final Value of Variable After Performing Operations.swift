// Problemset url: https://leetcode.com/problems/final-value-of-variable-after-performing-operations/

class Solution {
  func finalValueAfterOperations(_ operations: [String]) -> Int {
    var valueOfX = 0

    for operation in operations {
      if operation == "--X" || operation == "X--" {
        valueOfX -= 1
      } else if operation == "++X" || operation == "X++" {
        valueOfX += 1
      }
    }

    return valueOfX
  }
}
