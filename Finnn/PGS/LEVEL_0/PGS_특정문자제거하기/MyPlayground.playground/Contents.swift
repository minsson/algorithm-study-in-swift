import Foundation

func solution(_ my_string:String, _ letter:String) -> String {
    var myString = my_string
    
    while let firstIndex = myString.firstIndex(of: Character(letter)) {
        print(firstIndex)
        myString.remove(at: firstIndex)
    }
    
    return myString
}

solution("BCBdbe", "B")
