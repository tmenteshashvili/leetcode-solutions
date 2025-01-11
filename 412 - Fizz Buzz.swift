// Problemset url: https://leetcode.com/problems/fizz-buzz/description/

class Solution {
  func fizzBuzz(_ n: Int) -> [String] {

    var fizbArr: [String] = []

    for i in 1...n {
      if i % 3 == 0 && i % 5 == 0 {
        fizbArr.append("FizzBuzz")
      } else if i % 3 == 0 {
        fizbArr.append("Fizz")
      } else if i % 5 == 0 {
        fizbArr.append("Buzz")
      } else {
        fizbArr.append(String(i))
      }

    }

    return fizbArr
  }
}
