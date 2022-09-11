//
//  TOTO.swift
//  TOTO
//
//  Created by zc on 9/10/22.
//

import Foundation

extension Int {
    
    var toFloat: Float {
        return Float(self)
    }
    
    var toCGFloat: CGFloat {
        return CGFloat(self)
    }
    
    var toDouble: Double {
        return Double(self)
    }
    
    var toString: String {
        return "\(self)"
    }
}

extension Float {
    var toInt: Int {
        return Int(self)
    }
    
    var toCGFloat: CGFloat {
        return CGFloat(self)
    }
    
    var toDoublel: Double {
        return Double(self)
    }
    
    var toString: String {
        return "\(self)"
    }
    
    func toString(_ decimal: Int) -> String {
        return String(format: "%.\(decimal)", self)
    }
}

extension CGFloat {
    var toInt: Int {
        return Int(self)
    }
    
    var toFloat: Float {
        return Float(self)
    }
    
    var toDouble: Double {
        return Double(self)
    }
    
    var toString: String {
        return "\(self)"
    }
}

extension Double {
    var toInt: Int {
        return Int(self)
    }
    
    var toFloat: Float {
        return Float(self)
    }
    
    var toCGFloat: CGFloat {
        return CGFloat(self)
    }
    
    var toString: String {
        return "\(self)"
    }
    
    func toString(_ decimal: Int) -> String {
        return String(format: "%.\(decimal)", self)
    }
}


extension String {
    var toInt: Int? {
        return Int(self)
    }
    
    var toFloat: Float? {
        return Float(self)
    }
    
    var toCGFloat: CGFloat? {
        if let number = NumberFormatter().number(from: self) {
            return CGFloat(truncating: number)
        }
        return nil
    }
    
    var toDouble: Double? {
        return Double(self)
    }
    
    var toDic: [String: Any]? {
        if let data = data(using: .utf8) {
            return try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
        }
        return nil
    }
    
    var toData: Data? {
        return Data(self.utf8)
    }
    
    var toArray: [Any]? {
        
        if let data = data(using: .utf8) {
            return try? JSONSerialization.jsonObject(with: data, options: []) as? [Any]
        }
        return nil
    }
    
    
}



extension Dictionary {
    
    var toString: String? {
        return toJsonString
    }
    
    var toJsonString:  String? {
        guard let data = try? JSONSerialization.data(withJSONObject: self,
                                                     options: []) else {
            return nil
        }
        guard let str = String(data: data, encoding: .utf8) else {
            return nil
        }
        return str
    }
    
    var toData: Data? {
        return toJsonData
    }
    
    var toJsonData: Data? {
        return try? JSONSerialization.data(withJSONObject: self, options: [.prettyPrinted])
    }
    
}
