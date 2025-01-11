// Problemset url: https://leetcode.com/problems/goal-parser-interpretation/

class Solution {
  func interpret(_ command: String) -> String {
    var newStr = command

    newStr = newStr.replacingOccurrences(of: "G", with: "G")
    newStr = newStr.replacingOccurrences(of: "()", with: "o")
    newStr = newStr.replacingOccurrences(of: "(al)", with: "al")

    return newStr
  }
}
