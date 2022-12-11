func solution(_ s:String, _ n:Int) -> String {
    var resultString = ""
    
    s.forEach {
        let addedAscii = $0.asciiValue! + UInt8(n)
        
        guard $0.asciiValue != 32 else {
            resultString.append(" ")
            return
        }
        
        if ($0.asciiValue! <= 90 && addedAscii > 90) || ($0.asciiValue! >= 97 && addedAscii > 122) {
            resultString.append(String(UnicodeScalar(addedAscii - 26)))
        } else {
            resultString.append(String(UnicodeScalar(addedAscii)))
        }
    }
    
    return resultString
}

solution("z b a", 1)
