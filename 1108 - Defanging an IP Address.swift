// Problemset url: https://leetcode.com/problems/defanging-an-ip-address/

class Solution {
  func defangIPaddr(_ address: String) -> String {
    var newAddress = ""

    for i in address {

      if String(i) == "." {
        newAddress.append("[.]")
      } else {
        newAddress.append(i)
      }
    }

    return newAddress
  }
}
