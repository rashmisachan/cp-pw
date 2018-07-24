import Foundation

class Solution {
    
    func numRange(_ inputArray: inout [Int], _ rangeStart: inout Int, _ rangeEnd: inout Int) -> Int {
        
        var i = 0
        var j = 0
        var sum = 0
        var count = 0
        
        while(i < inputArray.count){
            
            sum = sum + inputArray[j]
            
            if sum >= rangeStart && sum <= rangeEnd {
                count += 1
                j += 1
            } else if(sum < rangeStart){
                j += 1
            } else if(sum > rangeEnd){
                sum = 0
                
                i += 1
                j = i
            }
            
            if(j == inputArray.count){
                sum = 0
                i += 1
                j = i
            }
        }
        
        return count;
    }
}

var numRangeInput = [10, 5, 1, 0, 2]
var rangeStart = 6
var rangeEnd = 8
Solution().numRange(&numRangeInput, &rangeStart, &rangeEnd)

