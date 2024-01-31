import Cocoa

import Foundation

func isValidBase64String(_ base64String: String) -> Bool {
    // 將Base64字串轉換為Data
    if let data = Data(base64Encoded: base64String) {
        // 檢查轉換前後的Data是否相等
        if let decodedData = Data(base64Encoded: base64String), decodedData == data {
            return true
        }
    }
    
    return false
}

// 測試
let validBase64String = "Ho9xWhfn2ctpXgTv1KXSDBEPFbwP/vtWmftEVr+DFb3KXibCxehO9CWoXnHoEsMW9nf0c0PwxGPb3zbk8QPLYw8sVlLPuj4mdq4XCcD3V2w762NWAOerH7ceMCfQNH+8PhbmC3zEbc2UkX9/mRc/UTMxv0UM8xm/RQSUxuV6SOVavjeAVlVr8HJNnI8=" // "Hello World!"
let invalidBase64String = "InvalidBase64String"

if isValidBase64String(validBase64String) {
    print("有效的Base64字串")
} else {
    print("無效的Base64字串")
}

if isValidBase64String(invalidBase64String) {
    print("有效的Base64字串")
} else {
    print("無效的Base64字串")
}
