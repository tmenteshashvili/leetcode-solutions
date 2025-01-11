// Problemset url: https://leetcode.com/problems/valid-parentheses/
class Solution {
  func isValid(_ s: String) -> Bool {
    var stack: [Character] = []

    guard s.count % 2 == 0 else { return false }

    for i in s {
      switch i {
      case "(": stack.append(")")
      case "[": stack.append("]")
      case "{": stack.append("}")
      default:
        if stack.isEmpty || stack.removeLast() != i {
          return false
        }
      }
    }

    return stack.isEmpty
  }
}
