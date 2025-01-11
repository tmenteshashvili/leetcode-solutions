// Problemset url: https://leetcode.com/problems/ransom-note/description/

class Solution {
  func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
    if ransomNote.count > magazine.count { return false }
    var ransomNoteFreq = [Int](repeating: 0, count: 26)
    var magazineFreq = [Int](repeating: 0, count: 26)

    for i in ransomNote {
      ransomNoteFreq[Int(i.asciiValue!) - 97] += 1
    }

    for char in magazine {
      magazineFreq[Int(char.asciiValue!) - 97] += 1
    }

    for i in 0..<ransomNoteFreq.count {
      if ransomNoteFreq[i] > magazineFreq[i] {
        return false
      }
    }

    return true
  }
}
