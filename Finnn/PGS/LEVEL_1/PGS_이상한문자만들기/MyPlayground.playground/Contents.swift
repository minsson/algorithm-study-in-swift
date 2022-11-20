import Foundation

func solution(_ s:String) -> String {
    let splittedString = s.split(separator: " ")
    print(splittedString)
    
    var resultString: String = ""
    for string in splittedString {
        for (index, string) in string.enumerated() {
            if index % 2 != 0 {
                resultString.append(string.lowercased())
            } else {
                resultString.append(string.uppercased())
            }
        }
        resultString.append(" ")
    }
    
    return resultString.trimmingCharacters(in: .whitespaces)
}

print(solution("  tRy hello  WORLD    "))
