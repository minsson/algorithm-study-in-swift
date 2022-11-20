import Foundation

func solution(_ my_string:String) -> String {
    var reversedString: String = ""
    for character in my_string.reversed() {
        reversedString.append(character)
    }
    
    return reversedString
}

solution("jaron")
