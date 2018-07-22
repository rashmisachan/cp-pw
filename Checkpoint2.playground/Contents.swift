import Foundation

class Solution {
    func prettyPrint(_ num: inout Int) -> [[Int]] {
        
        let arraySize = (num*2) - 1
        var resultArr = Array(repeating: Array(repeating: 0, count: arraySize), count: arraySize)
        
        var dirCheckCount = arraySize
        var circleCount = 0
        
        var i = circleCount
        var j = circleCount
        
        for num in (1...num).reversed() {
            
            i = circleCount
            j = circleCount
            
            if num == 1 {
                resultArr[i][j] = num
                break
            }
            
            var dir = 0
            dirCheckCount = dirCheckCount - 1
            
            while(dir<4){
                
                resultArr[i][j] = num
                
                if dir == 0 && j <= dirCheckCount {
                    if j==dirCheckCount{
                        dir = 1
                    } else {
                        j+=1
                    }
                }
                
                if dir == 1 && i <= dirCheckCount {
                    if i==dirCheckCount{
                        dir = 2
                    } else {
                        i+=1
                    }
                }
                
                if dir == 2 && j >= circleCount {
                    if j==circleCount{
                        dir = 3
                    } else {
                        j-=1
                    }
                }
                
                if dir == 3 && i >= circleCount {
                    if i==circleCount{
                        break
                    } else {
                        i-=1
                    }
                }
            }
            
            circleCount += 1
        }
        return resultArr
    }
}

var num = 5
print(Solution().prettyPrint(&num))

var num2 = 1
print(Solution().prettyPrint(&num2))
