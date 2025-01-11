// Problemset url: https://leetcode.com/problems/check-if-all-characters-have-equal-number-of-occurrences/

class Solution {
  func areOccurrencesEqual(_ s: String) -> Bool {
    var dict: [String: Int] = [:]

    for char in s {
      let key = char.lowercased()
      let count = dict[key, default: 0]
      dict[key] = count + 1
    }

    return Set(dict.values).count == 1
  }
}
