// Problemseet url: https://leetcode.com/problems/find-words-containing-character/

class Solution {
  func findWordsContaining(_ words: [String], _ x: Character) -> [Int] {
    var indexArr: [Int] = []

    for word in 0..<words.count {
      if words[word].contains(x) {
        indexArr.append(word)
      }
    }

    return indexArr
  }
}
