// Problemset url: https://leetcode.com/problems/permutation-difference-between-two-strings/

class Solution {
  func findPermutationDifference(_ s: String, _ t: String) -> Int {
    var dic: [String: Int] = [:]
    var counDifference = 0

    for (index, char) in s.enumerated() {
      dic[String(char)] = index

    }

    for (index, char) in t.enumerated() {

      counDifference += abs(index - dic[String(char)]!)
    }

    return counDifference

  }
}
