import Foundation

class Solution {

    func longestConsecutive(_ inputArray: [Int]) -> Int {

        var longestSeq = 0
        let hashSet = Set(inputArray)
        let arraySize = inputArray.count
        
        for i in 0..<arraySize {
            
            var num = inputArray[i] - 1
            var thisSequenceDistance = 0
            
            if !hashSet.contains(num){
            
                num += 1
                while hashSet.contains(num) {
                    thisSequenceDistance += 1
                    num += 1
                }
            }
            
            longestSeq = max(longestSeq, thisSequenceDistance)
        }
        
        return longestSeq
    }
}

let seq = [100, 4, 200, 1, 3, 2]
let longestSeq = Solution().longestConsecutive(seq)
print(longestSeq)
