import Foundation

class Solution {

    public struct Stack<T> {
        
        fileprivate var array = [T]()
        
        public mutating func pop() -> T? {
            return array.popLast()
        }
        
        public mutating func push( element: T) {
            array.append(element)
        }
        
        public func peek() -> T?{
            return array.last
        }
        
        public func isEmpty() -> Bool{
            return array.count <= 0
        }
    }
    
    func nextGreater(_ inputArray: inout [Int]) -> [Int] {
        
        var resultArray = Array(repeating: -1, count: inputArray.count)
        var stack = Stack<(Int,Int)>()
        
        for (index,num) in inputArray.enumerated() {
            
            if stack.isEmpty() {
                stack.push(element: (index,num))
                continue
            }
            
            while !stack.isEmpty(),
                let (stackIndex,topElement) = stack.peek(),
                topElement < num {
                
                    resultArray[stackIndex] = num
                    stack.pop()
            }
            stack.push(element: (index,num))
        }
        return resultArray
    }
}

var inputArray = [5,3,2,10,6,8,1,4,12,7,4]
// var inputArray = [11,13,3,21]
let outputArray = Solution().nextGreater(&inputArray)
print(outputArray)
