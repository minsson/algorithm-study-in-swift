import Foundation

let firstInput = readLine()!
let secondInput = readLine()!
let thirdInput = readLine()!

let splittedFirstInput = firstInput.split(separator: " ").map { Int($0)! }
let 총헬맷수 = splittedFirstInput[0]
let 총조끼수 = splittedFirstInput[1]

let splittedSecondInput = secondInput.split(separator: " ").map { Int($0)! }
let splittedThirdInput = thirdInput.split(separator: " ").map { Int($0)! }

var firstLargest: Int = 0
var secondLargest: Int = 0


for number in splittedSecondInput {
    if firstLargest < number {
        firstLargest = number
    }
}

for number in splittedThirdInput {
    if secondLargest < number {
        secondLargest = number
    }
}

print(firstLargest + secondLargest)
