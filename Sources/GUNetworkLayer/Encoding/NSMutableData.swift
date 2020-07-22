//
//  File.swift
//  
//
//  Created by Gleb Uvarkin on 22.07.2020.
//

import Foundation

extension NSMutableData {
    func appendString(_ string: String) {
        let data = string.data(using: String.Encoding.utf8, allowLossyConversion: false)
        append(data!)
    }
}
