// Problemset url: https://leetcode.com/problems/valid-anagram/

class Solution {
  func toDict(_ s: String) -> [String: Int] {
    var dictionary = [String: Int]()
    for char in s {
      let key = char.lowercased()
      let count = dictionary[key, default: 0]
      dictionary[key] = count + 1
    }

    return dictionary
  }

  func isAnagram(_ s: String, _ t: String) -> Bool {
    if s.count != t.count { return false }

    let dict = toDict(s)
    let dict2 = toDict(t)

    for (key, value) in dict {
      if value != dict2[String(key)] {
        return false
      }
    }

    return true
  }
}
