import Foundation

func solution(_ s:String) -> Int {
    let dic = [
        "zero": "0",
        "one" : "1",
        "two" : "2",
        "three" : "3",
        "four" : "4",
        "five" : "5",
        "six" : "6",
        "seven" : "7",
        "eight" : "8",
        "nine" : "9"
    ]
    
    var answerString = ""
    var stringArray = ""
    
    s.forEach {
        if Int(String($0)) != nil {
            answerString.append($0)
        } else {
            stringArray.append($0)
            
            if let num = dic[stringArray] {
                answerString.append(num)
                stringArray = ""
            }
        }
    }
    
    return Int(answerString)!
}

solution("23four5six7")
